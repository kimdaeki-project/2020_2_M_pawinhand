package com.ph4.s1.store.product;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ProductDTO {
	private long productNum;
	private long categoryNum;
	private String name;
	private long price;
	private long stock;
	private String weight;
	private String color;
	private String descriptions;
	private Date regDate;
	public long getProductNum() {
		return productNum;
	}
	public void setProductNum(long productNum) {
		this.productNum = productNum;
	}
	public long getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(long categoryNum) {
		this.categoryNum = categoryNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public long getStock() {
		return stock;
	}
	public void setStock(long stock) {
		this.stock = stock;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
