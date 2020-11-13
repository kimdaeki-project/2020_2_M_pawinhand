package com.ph4.s1.store.pay;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class OrderListDTO {

	private String id;
	private long order_num;
	private long cart_num;
	private String email;
	private String address;
	private String phone;
	private Date regDate;
	private String doTrade;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(long order_num) {
		this.order_num = order_num;
	}
	public long getCart_num() {
		return cart_num;
	}
	public void setCart_num(long cart_num) {
		this.cart_num = cart_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getDoTrade() {
		return doTrade;
	}
	public void setDoTrade(String doTrade) {
		this.doTrade = doTrade;
	}
	
	
}
