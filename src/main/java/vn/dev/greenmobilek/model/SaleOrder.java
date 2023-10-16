package vn.dev.greenmobilek.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tbl_sale_order")
public class SaleOrder extends BaseModel{
	
	@Column(name="code", length=45, nullable=false)
	private String code;
	
	//Mapping many-to-one: saleOrder-to-user
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User user;
	
	@Column(name="total", nullable=true)
	private BigDecimal total;
	
	@Column(name="customer_name", length=100, nullable=true)
	private String customerName;
	
	@Column(name="customer_address", length=200, nullable=true)
	private String customerAddress;
	
	@Column(name="customer_email", length=100, nullable=true)
	private String customerEmail;
	
	@Column(name="customer_mobile", length=100, nullable=true)
	private String customerMobile;
	
	@Column(name="description", length=3000, nullable=true)
	private String description;
	
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	//Mapping one-to-many: product-to-sale_order_product
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "saleOrder")
	private Set<SaleOrderProduct> saleOrderProducts = new HashSet<>();
	
	public void addRelationalSaleOrderProduct(SaleOrderProduct saleOrderProduct) {
		saleOrderProducts.add(saleOrderProduct);
		saleOrderProduct.setSaleOrder(this);	
	}
	
	public void deleteRelationalProduct(SaleOrderProduct saleOrderProduct) {
		saleOrderProducts.remove(saleOrderProduct);
		saleOrderProduct.setSaleOrder(null);	
	}
		
	

	public SaleOrder(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate, Boolean status,
			String code, User user, BigDecimal total, String customerName, String customerAddress, String customerEmail,
			String customerMobile, String description, Set<SaleOrderProduct> saleOrderProducts) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.code = code;
		this.user = user;
		this.total = total;
		this.customerName = customerName;
		this.customerAddress = customerAddress;
		this.customerEmail = customerEmail;
		this.customerMobile = customerMobile;
		this.description = description;
		this.saleOrderProducts = saleOrderProducts;
	}

	public SaleOrder() {
		super();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerMobile() {
		return customerMobile;
	}

	public void setCustomerMobile(String customerMobile) {
		this.customerMobile = customerMobile;
	}

	public Set<SaleOrderProduct> getSaleOrderProducts() {
		return saleOrderProducts;
	}

	public void setSaleOrderProducts(Set<SaleOrderProduct> saleOrderProducts) {
		this.saleOrderProducts = saleOrderProducts;
	}


}
