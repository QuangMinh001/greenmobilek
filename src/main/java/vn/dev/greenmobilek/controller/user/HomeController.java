package vn.dev.greenmobilek.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.dev.greenmobilek.controller.BaseController;
import vn.dev.greenmobilek.model.Product;
import vn.dev.greenmobilek.model.ProductImage;
import vn.dev.greenmobilek.model.SlideImage;
import vn.dev.greenmobilek.service.ProductImageService;
import vn.dev.greenmobilek.service.ProductService;
import vn.dev.greenmobilek.service.SlideService;


@Controller
public class HomeController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductImageService productImageService;
	
	@Autowired
	private SlideService slideService;
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String home(final Model model,
						final HttpServletRequest request,
						final HttpServletResponse response) throws IOException{
		List<SlideImage> listSlides = slideService.listSlides();
		model.addAttribute("listSlides", listSlides);
		
		List<Product> isHotPhones = productService.isHotPhones();
		model.addAttribute("isHotPhones", isHotPhones);
		
		List<Product> isHotPCorScreens = productService.isHotPCorScreens();
		model.addAttribute("isHotPCorScreens", isHotPCorScreens);
		
		List<Product> isHotSmartWatches = productService.isHotSmartWatches();
		model.addAttribute("isHotSmartWatches", isHotSmartWatches);
		
		List<Product> appleAuthorisedResellerProducts = productService.findAppleAuthorisedReseller();
		model.addAttribute("appleAuthorisedResellerProducts", appleAuthorisedResellerProducts);
		
		List<Product> highlightLaptops = productService.findHighlightLaptops();
		model.addAttribute("highlightLaptops", highlightLaptops);
		
		List<Product> highlightPhones = productService.findHighlightPhones();
		model.addAttribute("highlightPhones", highlightPhones);
		
		List<Product> smartWatchs = productService.findSmartWatchs();
		model.addAttribute("smartWatchs", smartWatchs);
		
		List<Product> highlightScreens = productService.findHighlightScreens();
		model.addAttribute("highlightScreens", highlightScreens);
		
		List<Product> highlightSmartTVs = productService.findHighlightSmartTVs();
		model.addAttribute("highlightSmartTVs", highlightSmartTVs);
		
		List<Product> tablets = productService.findTablets();
		model.addAttribute("tablets", tablets);
		
		List<Product> highlightSpeakerAndHeadphones = productService.findHighlightSpeakerAndHeadphones();
		model.addAttribute("highlightSpeakerAndHeadphones", highlightSpeakerAndHeadphones);
		
		return "user/home";
	}
	
	
	@RequestMapping(value="/greenmobile", method=RequestMethod.GET)
	public String enterSearch(final Model model,
						final HttpServletRequest request,
						final HttpServletResponse response,
						@RequestParam("keyword") String keyword
						) throws IOException{
		List<Product> products = productService.noPaginationSearchByKey(keyword);
		model.addAttribute("kwd", keyword);
		model.addAttribute("products", products);
		System.out.println("Search-in-home KEY: " + keyword);
		return "user/shop";
	}
	
	@RequestMapping(value="/greenmobile/{key}", method=RequestMethod.GET)
	public String clickSearch(final Model model,
						final HttpServletRequest request,
						final HttpServletResponse response,
						@PathVariable("key") String key
						) throws IOException{
		System.out.println("KEY: " + key);
		List<Product> products = productService.noPaginationSearchByKey(key);
		model.addAttribute("kwd", key);
		model.addAttribute("products", products);
		return "user/shop";
	}
	

	
	@RequestMapping(value = "/detail/{productId}", method = RequestMethod.GET)  // index là tên của trang view.
	public String getDetailProduct(final Model model, 
						final HttpServletRequest request,
						final HttpServletResponse response,
						@PathVariable("productId") Integer productId
						) throws IOException {
		
		Product product = productService.getById(productId);
		model.addAttribute("product", product);
		
		List<ProductImage> productImages = productImageService.getImageByProductId(productId);
		model.addAttribute("productImages", productImages);
		
		List<Product> sameProds = productService.searchSameProducts(product.getCategory().getId(),
											product.getSalePrice(), product.getShortDescription(), product.getId());
		model.addAttribute("sameProds", sameProds);
		
		String currentQuantity = request.getParameter("quantity");
		if(currentQuantity == null) {
			currentQuantity = "1";
		}
		model.addAttribute("currentQuantity", currentQuantity);
		
		return "user/detail";
	}
}
