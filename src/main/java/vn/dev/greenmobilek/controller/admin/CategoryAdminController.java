package vn.dev.greenmobilek.controller.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.Category;
import vn.dev.greenmobilek.model.User;
import vn.dev.greenmobilek.service.CategoryService;
import vn.dev.greenmobilek.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryAdminController implements Constants{
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/manager/list-categories", method = RequestMethod.GET)
	public String listCategory (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response) 
										throws IOException{
		String _keyword = request.getParameter("keyword");
		SearchModel searchObj = new SearchModel();
		searchObj.setKeyword(_keyword);
		
		// Phan trang
		searchObj.setSizeOfPage(SIZE_OF_PAGE);
		searchObj.setTotalItems(categoryService.noPaginationSearch(searchObj).size());
		int currentPage = 1;
		if (!StringUtils.isEmpty(request.getParameter("page"))) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		searchObj.setCurrentPage(currentPage);
		// Het phan trang
		
		model.addAttribute("searchObj", searchObj);
				
		List<Category> categoties = categoryService.paginationSearch(searchObj);
		model.addAttribute("categories", categoties);
		
		model.addAttribute("totalCategories", categoryService.noPaginationSearch(searchObj).size());
		return "admin/list-categories";
	}
	
	@RequestMapping(value = "/manager/add-category", method = RequestMethod.GET)
	public String addCategory (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response) 
										throws IOException{
		Category category = new Category();
		model.addAttribute("category", category);
		Date currentDate = new Date();
		category.setUpdateDate(currentDate);
		category.setCreateDate(currentDate);
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		return "admin/add-category";
	}
	
	
	//lưu dữ liệu Save category button
	@RequestMapping(value = "/manager/save-add-category", method = RequestMethod.POST)
	public String saveCategory (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@ModelAttribute("category") Category category
								) throws IOException{
		categoryService.saveOrUpdate(category);
		return "redirect:/manager/add-category";
	}
	
	
	@RequestMapping(value = "manager/delete-category/{categoryId}", method = RequestMethod.GET)
	public String inactiveCategory (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("categoryId") Integer categoryId) 
										throws IOException{
		Category dbCategory = categoryService.getById(categoryId);
		
		dbCategory.setStatus(Boolean.FALSE); // in active = false
		categoryService.inactiveCategory(dbCategory);
		
		return "redirect:/manager/list-categories";
	}
	
	@RequestMapping(value = "/manager/edit-category/{categoryId}", method = RequestMethod.GET)
	public String editProduct (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("categoryId") Integer categoryId) 
										throws IOException{
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		
		Category category = categoryService.getById(categoryId);
		model.addAttribute("category", category);
		return "admin/edit-category";
	}
	
	@RequestMapping(value = "/manager/save-edit-category", method = RequestMethod.POST)
	public String saveEditCategory (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@ModelAttribute("category") Category category
								) throws IOException{
		Category dbCategory = categoryService.getById(category.getId());
		Integer _createBy = Integer.parseInt(request.getParameter("createBy"));
		Integer _updateBy = Integer.parseInt(request.getParameter("updateBy"));
		if(_createBy != null) {
			dbCategory.setCreateBy(_createBy);
		}
		
		if(_updateBy != null) {
			dbCategory.setUpdateBy(_updateBy);
		}
		Date currentDate = new Date();
		dbCategory.setUpdateDate(currentDate);
		dbCategory.setName(request.getParameter("name"));
		dbCategory.setDescription(request.getParameter("description"));
		
		categoryService.saveEditCategory(category);
		return "redirect:/manager/list-categories";
	}
}



