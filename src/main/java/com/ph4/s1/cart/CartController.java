package com.ph4.s1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/cart/**")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("cartList")
	public ModelAndView getCartList() {
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("cart/cartList");
		return mv;
	}


}
