package com.ph4.s1.cart;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.ph4.s1.cart.CartDAO.";
	
	public int setCartInsert(CartVO cartDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setCartInsert", cartDTO);
	}
	
	
}
