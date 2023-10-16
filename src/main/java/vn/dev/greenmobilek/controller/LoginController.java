package vn.dev.greenmobilek.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.dev.greenmobilek.model.Role;
import vn.dev.greenmobilek.model.User;
import vn.dev.greenmobilek.service.RoleService;
import vn.dev.greenmobilek.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String login() throws IOException{
		return "/login";
	}
	
	@GetMapping("/signup")
	public String signup() throws IOException{
		return "/signup";
	}
	
	
	// SIGNUP
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String signup(final Model model, final HttpServletRequest request,
							final HttpServletResponse response)
			throws IOException {
		
		// kiểm tra trùng lặp username 
		String _username = request.getParameter("username");
		List<User> users = userService.findAll();
		for(User user : users) {
			if(user.getUsername().equals(_username)) {
				return "redirect:/signup";
			}
		}
		
		String pw = request.getParameter("password");
		//biểu thức chính quy
		// Tối thiểu tám ký tự, ít nhất một chữ cái, một số và một ký tự đặc biệt
		Pattern pattern = Pattern.compile("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
		if (pattern.matcher(pw).matches() == true) {
			pw = new BCryptPasswordEncoder(4).encode(pw);
		}else {
			return "redirect:/signup";
		}
			
		User newUser = new User();
		newUser.setUsername(_username);
		newUser.setPassword(pw);
		newUser.setEmail(request.getParameter("email"));
		newUser.setMobile(request.getParameter("phone"));
		newUser.setCreateDate(new Date());
		
		//set Role cho newuser - mặc dịnh role là customer.
		// lấy Role có name là customer trong db;
		Role role = roleService.getRoleByName("CUSTOMER");
		System.out.println("\nRole's name: " + role.getName());
		newUser.addRole(role);
		userService.saveOrUpdate(newUser);
		
		System.out.println("\nUsername: " + newUser.getUsername());
		System.out.println("pw: " + pw);
		System.out.println("\nPassword: " + newUser.getPassword());
		System.out.println("Email: " + newUser.getEmail());
		System.out.println("Role: " + newUser.getRoles().get(0));
		
		
		
		return "redirect:/login";
	}
}
