package vn.dev.greenmobilek.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
@Entity
@Table(name = "tbl_user")
public class User extends BaseModel implements UserDetails{
	
	@Column(name = "username", length = 60, nullable = false)
	private String username;
	
	@Column(name = "password", length = 60, nullable = false)
	private String password;
	
	@Column(name = "email", length = 120, nullable = true)
	private String email;
	
	@Column(name = "mobile", length = 120, nullable = true)
	private String mobile;
	
	@Column(name = "description", length = 200, nullable = true)
	private String description;
	
	@Column(name = "avatar", length = 255, nullable = true)
	private String avatar;
	
	@Column(name = "spending", nullable = false)
	private BigDecimal spending;
	
	
	//Mapping one-to-many: user-to-saleOrder
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	private Set<SaleOrder> saleOrders = new HashSet<SaleOrder>();
	
	//Phuong thuc them va xoa phan tu trong danh sach quan he user_sale-oder
	public void addRelationalSaleOrder(SaleOrder saleOrder) {
		saleOrders.add(saleOrder);
		saleOrder.setUser(this);
	}
	
	public void deleteRelationalSaleOrder(SaleOrder saleOrder) {
		saleOrders.remove(saleOrder);
		saleOrder.setUser(null);	
	}
	
	
	// Handling many-to-many relationship: Mapping data fields user -> role
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "users")
	private List<Role> roles = new ArrayList<Role>();

	// Handling many-to-many relationship: Add and remove data contained
	// relational-list
	public void addRole(Role role) {
		role.getUsers().add(this);
		roles.add(role);
	}

	public void deleteRole(Role role) {
		role.getUsers().remove(this);
		roles.remove(role);
	}

	
	public User() {
		super();
		this.spending = BigDecimal.ZERO;
	}
	
	
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}	
	
	public User(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate, Boolean status,
			String username, String password, String email, String mobile, String description, String avatar,
			BigDecimal spending, Set<SaleOrder> saleOrders, List<Role> roles) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.username = username;
		this.password = password;
		this.email = email;
		this.mobile = mobile;
		this.description = description;
		this.avatar = avatar;
		this.spending = spending;
		this.saleOrders = saleOrders;
		this.roles = roles;
	}

	public BigDecimal getSpending() {
		return spending;
	}

	public void setSpending(BigDecimal spending) {
		this.spending = spending;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Set<SaleOrder> getSaleOrders() {
		return saleOrders;
	}

	public void setSaleOrders(Set<SaleOrder> saleOrders) {
		this.saleOrders = saleOrders;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return this.roles; // Role class phai implement GrantedAuthority
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
}
