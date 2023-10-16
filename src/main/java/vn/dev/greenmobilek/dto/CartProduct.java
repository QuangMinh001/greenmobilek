package vn.dev.greenmobilek.dto;

import java.math.BigDecimal;
import java.math.BigInteger;

public class CartProduct {
	private int productId;
	private String name;
	private BigInteger quantityInCart;
	private BigDecimal price;
	private String avatar;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigInteger getQuantityInCart() {
		return quantityInCart;
	}

	public void setQuantityInCart(BigInteger quantity) {
		this.quantityInCart = quantity;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String image) {
		this.avatar = image;
	}

	public CartProduct(int productId, String name, BigInteger quantity, BigDecimal price, String avatar) {
		super();
		this.productId = productId;
		this.name = name;
		this.quantityInCart = quantity;
		this.price = price;
		this.avatar = avatar;
	}

	public CartProduct() {
		super();
	}

	public BigDecimal totalPrice() {
		if(this.price == null || this.quantityInCart == null) {
			return BigDecimal.ZERO;
		}
		return this.price.multiply(new BigDecimal(this.quantityInCart));
	}
}
