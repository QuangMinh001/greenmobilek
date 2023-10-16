package vn.dev.greenmobilek.controller.user;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.dev.greenmobilek.controller.BaseController;
import vn.dev.greenmobilek.dto.Cart;
import vn.dev.greenmobilek.dto.CartProduct;
import vn.dev.greenmobilek.model.Product;
import vn.dev.greenmobilek.model.SaleOrder;
import vn.dev.greenmobilek.model.SaleOrderProduct;
import vn.dev.greenmobilek.model.User;
import vn.dev.greenmobilek.service.ProductService;
import vn.dev.greenmobilek.service.SaleOrderService;

@Controller
public class CartController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public String index(final Model model,
						final HttpServletRequest request,
						final HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		BigDecimal totalCartPrice = BigDecimal.ZERO;
		Cart cart = null;
		boolean isEmpty = true;
		if(session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
			totalCartPrice = cart.totalCartPrice();
			model.addAttribute("totalCartPrice", totalCartPrice);
			System.out.println("Total price" + totalCartPrice );
			isEmpty = false;
		}
		
		model.addAttribute("productService", productService);
		model.addAttribute("isEmpty", isEmpty);
		return "user/cart";
	}
	
	@RequestMapping(value="/add-to-cart", method=RequestMethod.POST) // tăng số lượng trên giỏ hàng
	public ResponseEntity<Map<String, Object>> addToCart(final Model model,
						final HttpServletRequest request,
						final HttpServletResponse response,
						@RequestBody CartProduct addProduct) throws IOException{
		//lấy hàng đưa vào giỏ hàng(từ tbl_product)
		Product dbProduct = productService.getById(addProduct.getProductId());
		if (dbProduct.getIncentive().equals("-")) {
			Map<String, Object> jsonResult = new HashMap<String, Object>();
			jsonResult.put("code", 333);
			jsonResult.put("status", "Hết hàng");
			return ResponseEntity.ok(jsonResult);
		}
		
		// lay gio hang
		HttpSession session = request.getSession();
		
		Cart cart = null;
		// kiem tra xem da có giỏ hàng chưa
		if(session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		}else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		
		boolean isExist = false; //kiểm tra hàng đã có trong giỏ chưa;
		List<CartProduct> cartProducts = cart.getCartProducts(); // danh sachs hangf trong gio
		for(CartProduct c : cartProducts) {
			if(c.getProductId() == addProduct.getProductId()) { // hàng đang có sẵn trong giỏ
				isExist = true;
				c.setQuantityInCart(c.getQuantityInCart().add(addProduct.getQuantityInCart()));
				break;
			}
		}
		if(!isExist) {
			addProduct.setName(dbProduct.getName());
			addProduct.setPrice(dbProduct.getSalePrice());
			addProduct.setAvatar(dbProduct.getAvatar());
			cart.getCartProducts().add(addProduct);
		}
		
		// thiet lap lai gia tri cua session cua gio hang
		session.setAttribute("cart", cart);
		session.setAttribute("totalCartProducts", cart.totalCartProducts()); // khong co thi totalCartProducts cua cart-view luon bang khong
//		session.setAttribute("cart", cart);
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "Success");
		jsonResult.put("totalCartProducts", cart.totalCartProducts());
		return ResponseEntity.ok(jsonResult);
	}
	
	
	@RequestMapping(value = "/update-product-quantity", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> updateProductQuantity(final Model model,
			final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody CartProduct updateProduct) throws IOException {

		// Lay gio hang
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		BigInteger newQuantity = BigInteger.ZERO;
		for (CartProduct cartProduct : cart.getCartProducts()) {
			if (cartProduct.getProductId() == updateProduct.getProductId()) {
				newQuantity = cartProduct.getQuantityInCart().add(updateProduct.getQuantityInCart());
				cartProduct.setQuantityInCart(newQuantity);
				break;
			}
		}
		session.setAttribute("totalCartProducts", cart.totalCartProducts());
		// Tra ve tong san pham trong gio hang
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("newQuantity", newQuantity);
		jsonResult.put("productId", updateProduct.getProductId());
		jsonResult.put("totalCartProducts", cart.totalCartProducts());
		jsonResult.put("totalCartPrice", cart.totalCartPrice());
//		jsonResult.put("_name", addProduct.getName());

		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = "/delete-cart-item/{productId}", method = RequestMethod.GET)
	public String deleteCartItem (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("productId") Integer productId) 
										throws IOException{
		
		HttpSession session = request.getSession(); 
		Cart cart = (Cart) session.getAttribute("cart");
		List<CartProduct> cartProducts = cart.getCartProducts();
		for (CartProduct c : cartProducts) {
			System.out.println("Quantity: "  + c.getQuantityInCart());
			if(c.getProductId() == productId) {
				cartProducts.remove(c);
				
				session.setAttribute("totalCartProducts", cart.totalCartProducts().add(BigInteger.ONE).subtract(BigInteger.ONE));
				break;
			}
		}
		if(cart.totalCartProducts() == BigInteger.ZERO) {
			session.setAttribute("cart", null);
		}else {
			session.setAttribute("cart", cart);
		}	
		return "redirect:/cart";
	}
	
	
	@RequestMapping(value="/place-order", method=RequestMethod.GET) // value => action
	public String placeOrder(final Model model,
						final HttpServletRequest request,
						final HttpServletResponse response) throws IOException{
		
		if(!isLogined()) {
			return "redirect:/login";
		}
		// lay gio hang de luu danh sach vao tbl_sale_order_product
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart != null && cart.totalCartProducts().intValue() > 0) {
			// tạo đơn hàng
			SaleOrder saleOrder = new SaleOrder();
			saleOrder.setCustomerName(request.getParameter("txtName"));
			saleOrder.setCustomerMobile(request.getParameter("txtMobile"));
			saleOrder.setCustomerEmail(request.getParameter("txtEmail"));
			saleOrder.setCustomerAddress(request.getParameter("txtAddress"));
			saleOrder.setDescription(request.getParameter("description"));
			saleOrder.setTotal(cart.totalCartPrice());
			saleOrder.setCode(Long.toString(System.currentTimeMillis()));
			// 
			User user = new User();
			user.setId(getUserLogined().getId());
			saleOrder.setUser(user);
			saleOrder.setCreateBy(user.getId());
			saleOrder.setCreateDate(new Date());
			saleOrder.setStatus(false); // chưa thanh toán
			
			//duyệt danh sách sản phẩm trong giỏ hàng và lưu vào db
			for(CartProduct cp : cart.getCartProducts()) {
				SaleOrderProduct saleOrderProduct = new SaleOrderProduct();
				
				Product product = productService.getById(cp.getProductId()); // lay product
				if(product.getIncentive().equals("-")) { // kiểm tra xem còn hàng không
					continue;
				}
				
				saleOrderProduct.setQuantity(cp.getQuantityInCart().intValue());
				product.setQuantity(product.getQuantity().subtract(cp.getQuantityInCart()));// đặt lại quantity trong kho b1
				if(product.getQuantity().equals(BigInteger.ZERO)) { // đánh dấu hết hàng tạm lưu vào Incentive
					product.setIncentive("-");
				}
				saleOrderProduct.setProduct(product);
				saleOrder.addRelationalSaleOrderProduct(saleOrderProduct); // luu vao bang - Thêm product vào cart
			}
			// Thêm cart vào data
			saleOrderService.saveOrder(saleOrder); // unknown column quantity 

			cart = new Cart();
			session.setAttribute("cart", null);
			session.setAttribute("totalCartProducts", null);
		}
		return "redirect:/home";		
	}
}
