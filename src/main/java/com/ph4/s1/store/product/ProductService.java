package com.ph4.s1.store.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ph4.s1.store.storeFile.StoreFileDAO;
import com.ph4.s1.store.storeFile.StoreFileDTO;
import com.ph4.s1.util.Pager;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private StoreFileDAO storeFileDAO;
	
	public ProductDTO getOne(ProductDTO productDTO) {
		return productDAO.getOne(productDTO);
	}
	
	public List<ProductDTO> getList(ProductPager productPager)throws Exception{
		productPager.makeRow();
		productPager.setTotalCount(productDAO.getCount(productPager));
		productPager.makePage();
		return productDAO.getList(productPager);
	}
	
	public int setUpdate(ProductDTO productDTO) throws Exception{
		return productDAO.setUpdate_admin(productDTO);
	}

	
}
