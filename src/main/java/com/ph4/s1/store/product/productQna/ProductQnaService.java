package com.ph4.s1.store.product.productQna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductQnaService {
	
	@Autowired
	private ProductQnaDAO productQnaDAO;
	
	public List<ProductQnaDTO> getList(QnaPager qnaPager){
		qnaPager.makeRow();
		qnaPager.setTotalCount(productQnaDAO.getCount(qnaPager));
		qnaPager.makePage();
		return productQnaDAO.getList(qnaPager);
	}
}
