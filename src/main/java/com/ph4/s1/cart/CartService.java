package com.ph4.s1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	@Autowired
	private CartDAO cartDAO;

	
	public int setCartInsert(CartVO cartDTO) throws Exception {
		return cartDAO.setCartInsert(cartDTO);
	}
}
