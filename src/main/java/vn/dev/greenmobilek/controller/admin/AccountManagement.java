package vn.dev.greenmobilek.controller.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.dev.greenmobilek.controller.BaseController;
import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.Role;
import vn.dev.greenmobilek.model.User;
import vn.dev.greenmobilek.service.RoleService;
import vn.dev.greenmobilek.service.UserService;

@Controller
public class AccountManagement extends BaseController implements Constants{

	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value="manager/user-list", method=RequestMethod.GET)
	public String getUserList(final Model model, final HttpServletRequest request) throws IOException{
		
		String _keyword = request.getParameter("keyword");
		SearchModel searchObj = new SearchModel();
		searchObj.setKeyword(_keyword);
		
		// Phan trang
		searchObj.setSizeOfPage(SIZE_OF_PAGE);
		searchObj.setTotalItems(userService.noPaginationSearch(searchObj).size());
		int currentPage = 1;
		if (!StringUtils.isEmpty(request.getParameter("page"))) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		searchObj.setCurrentPage(currentPage);
		// Het phan trang 
		
		model.addAttribute("searchObj", searchObj);
		List<User> users = userService.paginationSearch(searchObj);
		model.addAttribute("users", users);
		
		return "admin/user-list";
	}
	
	//@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value="manager/admin-list", method=RequestMethod.GET)
	public String getAdminList(final Model model, final HttpServletRequest request) throws IOException{
		
		String _keyword = request.getParameter("keyword");
		
		List<User> admins = userService.findAdministratorByKeyword(_keyword);
		model.addAttribute("admins", admins);
		model.addAttribute("total", admins.size());
		model.addAttribute("roleService", roleService);
		return "admin/admin-list";
	}
	
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value="manager/change-active-account/{accountId}", method=RequestMethod.GET)
	public String activeAdmin(final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("accountId") Integer accountId) throws IOException{
		User dbAccount = userService.getById(accountId);
		dbAccount.setStatus(!dbAccount.getStatus()); 			
		userService.saveOrUpdate(dbAccount);
		if (roleService.checkRoleOfUserById(dbAccount.getId()).equalsIgnoreCase("ADMIN") ||
				roleService.checkRoleOfUserById(dbAccount.getId()).equalsIgnoreCase("STAFF")) {
			return "redirect:/manager/admin-list";
		}
		return "redirect:/manager/user-list";
	}
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value="manager/edit-account/{accountId}", method=RequestMethod.GET)
	public String accountDetail(final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("accountId") Integer accountId) throws IOException{
		
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		
		User dbAccount = userService.getById(accountId);
		model.addAttribute("dbAccount", dbAccount); // tuong ung trong form
		model.addAttribute("dbAccountCreateBy", userService.getById(dbAccount.getCreateBy()).getUsername()); // tuong ung trong form
		

		String _roleName = roleService.checkRoleOfUserById(accountId);
		model.addAttribute("_roleName", _roleName);
		return "admin/edit-account";
	}
	
	
	@RequestMapping(value="manager/save-edit-account", method=RequestMethod.POST)
	public String saveEditAccount(final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@RequestParam("delegated") String delegated,
								@ModelAttribute("account") User account) throws IOException{
		User dbAccount = userService.getById(account.getId());
	
		// xoa role hien tai
		String _roleName = roleService.checkRoleOfUserById(account.getId());
		Role role = roleService.getRoleByName(_roleName);
		dbAccount.deleteRole(role);
		account.setPassword(dbAccount.getPassword());
		// them role moi
		Role newRole = roleService.getRoleByName(request.getParameter("delegated"));
		account.addRole(newRole);
		model.addAttribute("roleService", roleService);
		
		userService.saveOrUpdate(account);
		return "redirect:/manager/admin-list";
	}
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value="manager/add-account", method=RequestMethod.GET)
	public String addAccount(final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@ModelAttribute("newAccount") User newAccount) throws IOException{
//		if(!roleService.checkRoleOfUserById(1).equalsIgnoreCase("ADMIN")) {
//			return "";
//		}
		
		System.out.println("logined ID: "+ getUserLogined().getUsername());
		System.out.println("logined ID: "+ getUserLogined().getId());
		
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		
		model.addAttribute("newAccount", newAccount);
		return "admin/add-account";
	}
	
	@RequestMapping(value="/manager/save-add-account", method=RequestMethod.POST)
	public String saveAddAccount(final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@RequestParam("delegated") String delegated,
								@ModelAttribute("account") User account) throws IOException{
	
		
		// kiểm tra trùng lặp username 
		String _username = request.getParameter("username");
		List<User> users = userService.findAll();
		for(User user : users) {
			if(user.getUsername().equals(_username)) {
				String nameError = "Username đã tồn tại";
				model.addAttribute("nameError", nameError);
				return "redirect:/manager/add-account";
			}
		}
		
		String pw = request.getParameter("password");
		//biểu thức chính quy
		// Tối thiểu tám ký tự, ít nhất một chữ cái, một số và một ký tự đặc biệt
		Pattern pattern = Pattern.compile("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
		if (pattern.matcher(pw).matches() == true) {
			pw = new BCryptPasswordEncoder(4).encode(pw);
		}else {
			String pwError = "mật khẩu không hợp lệ";
			model.addAttribute("pwError", pwError);
			return "redirect:/manager/add-account";
		}
		account.setPassword(pw);
		Date currenDate = new Date();
		account.setCreateDate(currenDate);
		account.setUpdateDate(currenDate);
		account.setCreateBy(getUserLogined().getId());
		// them role moi
		Role newRole = roleService.getRoleByName(request.getParameter("delegated"));
		account.addRole(newRole);
		model.addAttribute("roleService", roleService);
		if(account.getId() == null || account.getId() <= 0) {
			userService.saveOrUpdate(account);
		}
		
		
		return "redirect:/manager/admin-list";
	}
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value="/manager/delete-account/{accountId}")
	public String deleteAccount(final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("accountId") Integer accountId) throws IOException{
		User dbAccount = userService.getById(accountId);
		userService.delete(dbAccount);
		if (roleService.checkRoleOfUserById(dbAccount.getId()).equalsIgnoreCase("ADMIN") ||
				roleService.checkRoleOfUserById(dbAccount.getId()).equalsIgnoreCase("STAFF")) {
			return "redirect:/manager/admin-list";
		}
		return "redirect:/manager/user-list";
	}
}
