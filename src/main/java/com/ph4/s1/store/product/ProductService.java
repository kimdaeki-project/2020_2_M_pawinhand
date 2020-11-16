package com.ph4.s1.store.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ph4.s1.store.storeFile.StoreFileDAO;
import com.ph4.s1.store.storeFile.StoreFileDTO;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private StoreFileDAO storeFileDAO;
	
	public ProductDTO getOne(ProductDTO productDTO) {
		return productDAO.getOne(productDTO);
	}
	
	public List<ProductDTO> getList(ProductDTO productDTO)throws Exception{
		return productDAO.getList(productDTO);
	}

	
}
