package vn.dev.greenmobilek.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.dev.greenmobilek.controller.BaseController;
import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.Category;
import vn.dev.greenmobilek.model.Product;
import vn.dev.greenmobilek.model.ProductImage;
import vn.dev.greenmobilek.model.User;
import vn.dev.greenmobilek.service.CategoryService;
import vn.dev.greenmobilek.service.ProductImageService;
import vn.dev.greenmobilek.service.ProductService;
import vn.dev.greenmobilek.service.UserService;

@Controller
public class ProductAdminController extends BaseController implements Constants{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductImageService productImageService;
	
	@RequestMapping(value="/manager/list-product", method = RequestMethod.GET)
	public String listProduct(final Model model, final HttpServletRequest request,
								final HttpServletResponse respone) throws IOException{
		
		String _keyword = request.getParameter("keyword");
		SearchModel searchObj = new SearchModel();
		searchObj.setKeyword(_keyword);
		
		searchObj.setSizeOfPage(SIZE_OF_PAGE);
		searchObj.setTotalItems(productService.noPaginationSearch(searchObj).size());
		int currentPage = 1;
		if (!StringUtils.isEmpty(request.getParameter("page"))) {
			currentPage = Integer.parseInt(request.getParameter("page"));
			System.out.println("Currenpage" + currentPage);
		}
		searchObj.setCurrentPage(currentPage);
		// Het phan trang
		
		model.addAttribute("searchObj", searchObj);
		List<Product> products = productService.paginationSearch(searchObj);
		model.addAttribute("products", products);
		return "admin/list-product";
	}
	
	@RequestMapping(value = "/manager/add-product", method = RequestMethod.GET)
	public String addProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response) 
										throws IOException{		
		
		List<Category> categories = categoryService.findAllActive();
		model.addAttribute("categories", categories);
		
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		
		Date currentDate = new Date();
		Product product = new Product();
		product.setCreateDate(currentDate);
		product.setUpdateDate(currentDate);
		model.addAttribute("product", product);
		return "admin/add-product";
	}
	
	
	@RequestMapping(value = "/manager/save-add-product", method = RequestMethod.POST)
	public String saveAddProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@RequestParam("productAvatar") MultipartFile productAvatar,
								@RequestParam("productSticker") MultipartFile productSticker,
								@RequestParam("productPicture") MultipartFile[] productPicture,
								@ModelAttribute("product") Product product) 
										throws IOException{
		if(product.getId() == null || product.getId() <= 0) {
			productService.saveProduct(product, productAvatar, productSticker, productPicture);
		}
		
		return "redirect:/manager/add-product";
	}
	
	@RequestMapping(value = "/manager/delete-product/{productId}", method = RequestMethod.GET)
	public String deleteProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("productId") Integer productId) 
										throws IOException{
		Product dbProduct = productService.getById(productId);
		
		// xóa ảnh trong thư mục ProductFiles và tbl_product_image
		List<ProductImage> productImages = productImageService.getImageByProductId(productId);
		for(ProductImage image : productImages) {
			String path = STORAGE_FOLDER + image.getPath();
			File file = new File(path);
			file.delete();
		}
		// xoa avatar
		File file = new File(STORAGE_FOLDER + dbProduct.getAvatar());
		file.delete();
		
		// xoa product trong tbl_product va cac image cua no trong tbl_product_image cung xoa theo do on delete cadcase
		productService.deleteProduct(dbProduct);

		return "redirect:/manager/list-product";
	}
	
	
	// inactive product
	@RequestMapping(value = "manager/change-status/{productId}", method = RequestMethod.GET)
	public String changeActiveProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("productId") Integer productId) 
										throws IOException{
		Product dbProduct = productService.getById(productId);
		dbProduct.setStatus(!dbProduct.getStatus()); // in active = false

		productService.saveOrUpdate(dbProduct);
		
		return "redirect:/manager/list-product";
	}
	
	
	@RequestMapping(value = "manager/change-ishot/{productId}", method = RequestMethod.GET)
	public String changeIsHotProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("productId") Integer productId) 
										throws IOException{
		Product dbProduct = productService.getById(productId);
		dbProduct.setIsHot(!dbProduct.getIsHot()); // in active = false

		productService.saveOrUpdate(dbProduct);
		return "redirect:/manager/list-product";
	}
	
	
	@RequestMapping(value = "/manager/edit-product/{productId}", method = RequestMethod.GET)
	public String editProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("productId") Integer productId) 
										throws IOException{
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		
		
		// lay product co id la productId
		Product product = productService.getById(productId);
		model.addAttribute("product", product);
		return "admin/edit-product";
	}
	
	
	@RequestMapping(value = "/manager/save-edit-product", method = RequestMethod.POST)
	public String saveEditProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@RequestParam("productAvatar") MultipartFile productAvatar,
								@RequestParam("productSticker") MultipartFile productSticker,
								@RequestParam("productPicture") MultipartFile[] productPicture,
								@ModelAttribute("product") Product product) 
										throws IOException{
		
		if(product.getId() != null || product.getId() > 0) {
			productService.saveEditProduct(product, productAvatar, productSticker, productPicture);
		}
		
		return "redirect:/manager/list-product";
	}
}
