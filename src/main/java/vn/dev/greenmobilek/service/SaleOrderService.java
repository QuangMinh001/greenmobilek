package vn.dev.greenmobilek.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.SaleOrder;
import vn.dev.greenmobilek.model.SaleOrderProduct;
import vn.dev.greenmobilek.model.User;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

@Service
public class SaleOrderService extends BaseService<SaleOrder>{
	@Override
	public Class<SaleOrder> clazz(){
		return SaleOrder.class;
	}
	
	@Transactional
	public SaleOrder saveOrder(SaleOrder saleOrder) {
		return super.saveOrUpdate(saleOrder);
	}
	
	@SuppressWarnings("unchecked")
	public List<SaleOrderProduct> findProductListById(Integer saleOrderId){
		System.out.println("SELECT * FROM tbl_sale_order_product p WHERE 1=1 and sale_order_id=" + saleOrderId);
		return (List<SaleOrderProduct>) entityManager.createNativeQuery(
				"SELECT * FROM tbl_sale_order_product p WHERE 1=1 and sale_order_id=" + saleOrderId, clazz()).getResultList();
	}
	
	public List<SaleOrder> recentOrders(int limit){
		String sql = "SELECT * FROM greenmobile.tbl_sale_order order by id desc limit " + limit;
		return super.executeNativeSql(sql);
	}
	
	
	public List<SaleOrder> findProductListById2(Integer saleOrderId){
		String sql = "SELECT * FROM tbl_sale_order_product p WHERE sale_order_id=" + saleOrderId;
		return super.executeNativeSql(sql);
	}
	
	
	public List<SaleOrder> searchOrder(SearchModel saleOrderSearch){
		String sql = "SELECT * FROM tbl_sale_order p WHERE 1=1";
		//Tim kiem theo category
		if (saleOrderSearch.getStatus() < 2 && saleOrderSearch.getStatus() > -1) {
			sql += " AND p.status=" + saleOrderSearch.getStatus();
		}
		//Tim theo keyword
		if (!StringUtils.isEmpty(saleOrderSearch.getKeyword())) {
			sql += " AND (p.code='" + saleOrderSearch.getKeyword() + "'" + 
					" OR p.customer_name like '%" + saleOrderSearch.getKeyword() + "%'" +
					" OR p.customer_address like '%" + saleOrderSearch.getKeyword() + "%'" +
					" OR p.customer_mobile like '%" + saleOrderSearch.getKeyword() + "%'" + 
					" OR p.customer_email like '%" 	+ saleOrderSearch.getKeyword() + "%')";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = new Date();
		String currentDate = sdf.format(date);
		
		if(!StringUtils.isEmpty(saleOrderSearch.getBeginDate())) {
			String beginDate = saleOrderSearch.getBeginDate();
			
			sql += " and (p.create_date between '" + beginDate + "'";
			
			if (!StringUtils.isEmpty(saleOrderSearch.getEndDate())) {
				String endDate = saleOrderSearch.getEndDate();
				sql += "and '" + (endDate + " 23:59:59") + "')";
			}else {
				sql += " and '" + currentDate + "')";
			}
		}else {
			String endDate = saleOrderSearch.getEndDate();
			if(!StringUtils.isEmpty(saleOrderSearch.getEndDate())) {
				sql += " and (p.create_date between " + "'2015-01-01 23:59:59'";
				if (!StringUtils.isEmpty(saleOrderSearch.getEndDate())) {
					sql += " and '" + (endDate + " 23:59:59") + "')";
				}else {
					sql += " and '" + currentDate + "')";
				}
			}
		}
		
		return super.executeNativeSql(sql, saleOrderSearch.getCurrentPage(), saleOrderSearch.getSizeOfPage());
	}
	
	
	public List<SaleOrder> noPginationSearch(SearchModel saleOrderSearch){
		String sql = "SELECT * FROM tbl_sale_order p WHERE 1=1";
		//Tim kiem theo category
		if (saleOrderSearch.getStatus() < 2 && saleOrderSearch.getStatus() > -1) {
			sql += " AND p.status=" + saleOrderSearch.getStatus();
		}
		//Tim theo keyword
		if (!StringUtils.isEmpty(saleOrderSearch.getKeyword())) {
			sql += " AND (p.code='" + saleOrderSearch.getKeyword() + "'" + 
					" OR p.customer_name like '%" + saleOrderSearch.getKeyword() + "%'" +
					" OR p.customer_address like '%" + saleOrderSearch.getKeyword() + "%'" +
					" OR p.customer_mobile like '%" + saleOrderSearch.getKeyword() + "%'" + 
					" OR p.customer_email like '%" 	+ saleOrderSearch.getKeyword() + "%')";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = new Date();
		String currentDate = sdf.format(date);
		if(!StringUtils.isEmpty(saleOrderSearch.getBeginDate())) {
			String beginDate = saleOrderSearch.getBeginDate();
			
			sql += " and (p.create_date between '" + beginDate + "'";
			
			if (!StringUtils.isEmpty(saleOrderSearch.getEndDate())) {
				String endDate = saleOrderSearch.getEndDate();
				sql += "and '" + (endDate + " 23:59:59") + "')";
			}else {
				sql += " and '" + currentDate + "')";
			}
		}else {
			String endDate = saleOrderSearch.getEndDate();
			if(!StringUtils.isEmpty(saleOrderSearch.getEndDate())) {
				sql += " and (p.create_date between " + "'2015-01-01 23:59:59'";
				if (!StringUtils.isEmpty(saleOrderSearch.getEndDate())) {
					sql += " and '" + (endDate + " 23:59:59") + "')";
				}else {
					sql += " and '" + currentDate + "')";
				}
			}
		}
		
		return super.executeNativeSql(sql);
		//return super.executeNativeSql(sql, saleOrderSearch.getCurrentPage(), saleOrderSearch.getSizeOfPage());
	}
	
	@Transactional
	public void deleteSaleOrder(SaleOrder saleOrder) {
		super.delete(saleOrder);
	}
	
	@Transactional
	public void changeStatus(SaleOrder saleOrder, User user) {
		SaleOrder dbSaleOrder = super.getById(saleOrder.getId());
		Date crd = new Date();
		if(dbSaleOrder.getStatus() == false) {
			user.setSpending(user.getSpending().add(saleOrder.getTotal()));
		}else {
			user.setSpending(user.getSpending().subtract(saleOrder.getTotal()));
		}
		dbSaleOrder.setStatus(!dbSaleOrder.getStatus()); 
		dbSaleOrder.setUpdateDate(crd);
		super.saveOrUpdate(dbSaleOrder);
	}

}