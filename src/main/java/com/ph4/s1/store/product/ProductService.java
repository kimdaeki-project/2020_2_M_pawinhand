package com.ph4.s1.store.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	
	public ProductDTO getOne(ProductDTO productDTO) {
		return productDAO.getOne(productDTO);
	}
	
}
