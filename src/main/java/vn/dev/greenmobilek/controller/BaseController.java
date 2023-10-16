package vn.dev.greenmobilek.controller;

import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import vn.dev.greenmobilek.model.User;

@Controller
public class BaseController {
	

	@ModelAttribute("totalCartProducts")
	public BigInteger getTotalCartProducts(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("totalCartProducts") != null) {
			return (BigInteger) session.getAttribute("totalCartProducts");
		}
		return BigInteger.ZERO;
	}
	
	// Lay thong tin cua user dang nhap
	@ModelAttribute("userLogined")
	public User getUserLogined() {
		// SecurityContextHolder class quan ly thong tin user
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (userLogined != null && userLogined instanceof UserDetails) {

			User user = (User) userLogined;
			
			 System.out.println("user name: " + user.getUsername());
			 System.out.println("user email: " + user.getEmail());
			 System.out.println("userlogined id: " + user.getId());
			 System.out.println("userLogined.toString: " + userLogined.toString());
			 
			return user;
		}
		return new User();
	}
	
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		// SecurityContextHolder class quan ly thong tin user
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (userLogined != null && userLogined instanceof UserDetails) {
			return true;
		}
		return false;
	}
	
}
