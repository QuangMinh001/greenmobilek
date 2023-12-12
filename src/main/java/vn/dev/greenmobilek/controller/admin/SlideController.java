package vn.dev.greenmobilek.controller.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.dev.greenmobilek.model.SlideImage;
import vn.dev.greenmobilek.model.User;
import vn.dev.greenmobilek.service.SlideService;
import vn.dev.greenmobilek.service.UserService;

@Controller
public class SlideController {
	
	@Autowired
	private SlideService slideService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/manager/list-slide", method=RequestMethod.GET)
	public String slideList(final Model model, final HttpServletRequest request,
							final HttpServletResponse response) throws IOException{
		List<SlideImage> slideList = slideService.findAll();
		model.addAttribute("slideList", slideList);
		return "admin/list-slide";
	}
	
	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value="/manager/add-slide", method=RequestMethod.GET)
	public String addSlide(final Model model, final HttpServletRequest request,
							final HttpServletResponse response) throws IOException{
		List<User> users = userService.findAllAdministrator();
		model.addAttribute("users", users);
		
		Date currenDate = new Date();
		SlideImage newImage = new SlideImage();
		newImage.setCreateDate(currenDate);
		newImage.setUpdateDate(currenDate);
		model.addAttribute("newImage", newImage);
		return "admin/add-slide";
	}
	
	
	@RequestMapping(value="/manager/save-add-slide", method=RequestMethod.POST)
	public String saveAddSlide(final Model model, final HttpServletRequest request,
							final HttpServletResponse response,
							@RequestParam("slideFile") MultipartFile slideFile,
							@ModelAttribute("slide") SlideImage slide) throws IOException{
		
		if(slide.getId() == null) {
			slideService.saveAddSlide(slide, slideFile);
		}
		
		return "redirect:/manager/list-slide";
	}
	
	
	@RequestMapping(value="/manager/delete-slide/{slideId}", method=RequestMethod.GET)
	public String deleteSlide(final Model model,
								@PathVariable("slideId") Integer slideId) throws IOException{
		SlideImage slideEntity = slideService.getById(slideId);
		slideService.deleteSlide(slideEntity);
		
		return "redirect:/manager/list-slide";
	}
	
	@RequestMapping(value="/manager/change-status-slide/{slideId}", method=RequestMethod.GET)
	public String changeStatus(final Model model,
								@PathVariable("slideId") Integer slideId) throws IOException{
		SlideImage slideEntity = slideService.getById(slideId);
		slideEntity.setStatus(!slideEntity.getStatus());
		slideService.saveOrUpdate(slideEntity);
		return "redirect:/manager/list-slide";
	}
	
}
