package com.ph4.s1.store.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession sqlSession;
	private String NAMESPACE = "com.ph4.s1.store.product.ProductDAO.";
	
	public ProductDTO getOne(ProductDTO productDTO) {
		return sqlSession.selectOne(NAMESPACE+"getOne", productDTO);
	}
	
	public List<ProductDTO> getList(ProductDTO productDTO){
		return sqlSession.selectList(NAMESPACE+"getList",productDTO);
	}
}
