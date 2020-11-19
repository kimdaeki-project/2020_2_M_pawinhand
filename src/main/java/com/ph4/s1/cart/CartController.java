package com.ph4.s1.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ph4.s1.store.product.ProductDTO;

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

	@PostMapping("cartInsert")
	public ModelAndView setCartInsert(CartVO cartDTO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = cartService.setCartInsert(cartDTO);
		mv.setViewName("cart/cartList");
		return mv;
	}
	

}
