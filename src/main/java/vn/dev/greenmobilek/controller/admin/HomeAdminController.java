package vn.dev.greenmobilek.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.model.SaleOrder;
import vn.dev.greenmobilek.service.SaleOrderService;

@Controller
public class HomeAdminController implements Constants{
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	@GetMapping("/manager/home-admin")
	public String index(final Model model) {
		
		List<SaleOrder> saleOrders = saleOrderService.recentOrders(SIZE_OF_PAGE);

		model.addAttribute("saleOrders", saleOrders);
		return "admin/home-admin";
	}
}
