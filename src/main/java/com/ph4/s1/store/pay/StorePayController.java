package com.ph4.s1.store.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/storePay/**")
public class StorePayController {

	@Autowired
	private StorePayService storePayService;
	
	
	@GetMapping("storePayment")
	public ModelAndView getStorePayment() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("storePay/storePayment");
		
		return mv;
		
	}
	
	@GetMapping("storePayMain")
	public ModelAndView getStoreMainPay() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId("a1");
		
		List<CartDTO> ar = storePayService.getCartDetail(cartDTO);
		
		System.out.println(ar.get(0).getProductDTO().getColor());
		System.out.println(ar.get(0).getAmount());
		mv.addObject("list", ar);
		mv.setViewName("storePay/storePayMain");
		return mv;
		
	}
}
