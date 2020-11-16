package com.ph4.s1.cart;

public class CartDTO {

	private String id;
	private long cartNum;
	private long productNum;
	private int count;
	private long totalPrice;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getCartNum() {
		return cartNum;
	}
	public void setCartNum(long cartNum) {
		this.cartNum = cartNum;
	}
	public long getProductNum() {
		return productNum;
	}
	public void setProductNum(long productNum) {
		this.productNum = productNum;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
