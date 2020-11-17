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
	
	public List<ProductDTO> getList(ProductDTO productDTO){
		List<ProductDTO> ar = productDAO.getList(productDTO);
		for(ProductDTO dto : ar) {
			StoreFileDTO fileDTO = storeFileDAO.getOne(dto);
			if(fileDTO != null) {
				dto.setFileName(fileDTO.getFileName());
			}
		}
		return ar;
	}
}
