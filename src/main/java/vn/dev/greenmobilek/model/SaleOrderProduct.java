package vn.dev.greenmobilek.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_sale_order_product")
public class SaleOrderProduct extends BaseModel{

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="sale_order_id")
	SaleOrder saleOrder;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="product_id")
	Product product;
	
	@Column(name="description", length=300, nullable=true)
	private String description;
	
	@Column(name="quantity", nullable=false)
	private Integer quantity;

	public SaleOrderProduct(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate,
			Boolean status, SaleOrder saleOrder, Product product, String description, Integer quantity) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.saleOrder = saleOrder;
		this.product = product;
		this.description = description;
		this.quantity = quantity;
	}

	public SaleOrderProduct() {
		
	}

	public SaleOrder getSaleOrder() {
		return saleOrder;
	}

	public void setSaleOrder(SaleOrder saleOrder) {
		this.saleOrder = saleOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
}
