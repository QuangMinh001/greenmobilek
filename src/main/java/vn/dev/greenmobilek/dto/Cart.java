package vn.dev.greenmobilek.dto;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<CartProduct> cartProducts = new ArrayList<CartProduct>();

	// tong so hang
	public BigInteger totalCartProducts() {
		BigInteger total = BigInteger.ZERO;
		for (CartProduct cp : cartProducts) {
			total = total.add(cp.getQuantityInCart());
		}
		return total;
	}

	// tong so tien
	public BigDecimal totalCartPrice() {
		BigDecimal total = BigDecimal.ZERO;
		for (CartProduct cp : cartProducts) {
			total = total.add(cp.totalPrice());
		}
		return total;
	}

	public Cart(List<CartProduct> cartProducts) {
		super();
		this.cartProducts = cartProducts;
	}

	public Cart() {
		super();
	}

	public List<CartProduct> getCartProducts() {
		return cartProducts;
	}

	public void setCartProducts(List<CartProduct> cartProducts) {
		this.cartProducts = cartProducts;
	}

}
