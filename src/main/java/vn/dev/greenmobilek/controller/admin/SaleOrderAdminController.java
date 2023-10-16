package vn.dev.greenmobilek.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.dev.greenmobilek.controller.BaseController;
import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.dto.SearchModel;

import vn.dev.greenmobilek.model.SaleOrder;
import vn.dev.greenmobilek.service.SaleOrderService;

@Controller
public class SaleOrderAdminController extends BaseController implements Constants{
	
	@Autowired
	private SaleOrderService saleOrderService;
	

	@RequestMapping(value = "/manager/list-cart", method = RequestMethod.GET)
	public String listCategory(final Model model, final HttpServletRequest request,
								final HttpServletResponse response)
								throws IOException {
		int status = 2;
		if (!StringUtils.isEmpty(request.getParameter("status"))) {
			status = Integer.parseInt(request.getParameter("status"));
		}

		String beginDate = null;
		String endDate = null;

		if (!StringUtils.isEmpty(request.getParameter("beginDate"))
				|| !StringUtils.isEmpty(request.getParameter("endDate"))) {
			beginDate = request.getParameter("beginDate");
			endDate = request.getParameter("endDate");
		}

		SearchModel saleOrderSearch = new SearchModel();
		saleOrderSearch.setStatus(status);
		saleOrderSearch.setKeyword(request.getParameter("keyword"));
		saleOrderSearch.setBeginDate(beginDate);
		saleOrderSearch.setEndDate(endDate);
		// Phan trang
		saleOrderSearch.setSizeOfPage(SIZE_OF_PAGE);
		saleOrderSearch.setTotalItems(saleOrderService.noPginationSearch(saleOrderSearch).size());
		int currentPage = 1;
		if (!StringUtils.isEmpty(request.getParameter("page"))) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		saleOrderSearch.setCurrentPage(currentPage);
		// Het phan trang
		List<SaleOrder> saleOrders = saleOrderService.searchOrder(saleOrderSearch);

//		BigDecimal totalSales = BigDecimal.ZERO;
//		for (SaleOrder saleOrder : saleOrders) {
//			totalSales = totalSales.add(saleOrder.getTotal());
//		}

		Integer total = saleOrderService.noPginationSearch(saleOrderSearch).size();
		//Integer total = saleOrders.size();
		model.addAttribute("total", total);
		model.addAttribute("saleOrders", saleOrders);
		//model.addAttribute("totalSales", totalSales);
		model.addAttribute("saleOrderSearch", saleOrderSearch);
		return "admin/list-cart";
	}
	
	@PreAuthorize("hasAthority('ADMIN')")
	@RequestMapping(value = "/manager/delete-cart/{saleOrderId}", method = RequestMethod.GET)
	public String deleteProduct(final Model model, final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("saleOrderId") Integer saleOrderId) throws IOException {
		SaleOrder saleOrder = saleOrderService.getById(saleOrderId);
		// cung xoa theo do on delete cadcase
		saleOrderService.deleteSaleOrder(saleOrder);
		return "redirect:/manager/list-cart";
	}
	
	@RequestMapping(value = "manager/change-order-status/{SaleOrderId}", method = RequestMethod.GET)
	public String changeCartStatus (final Model model, 
								final HttpServletRequest request,
								final HttpServletResponse response,
								@PathVariable("SaleOrderId") Integer SaleOrderId) 
										throws IOException{
		SaleOrder dbSaleOrder = saleOrderService.getById(SaleOrderId);
		saleOrderService.changeStatus(dbSaleOrder, dbSaleOrder.getUser());
		return "redirect:/manager/list-cart";
	}
	
}
