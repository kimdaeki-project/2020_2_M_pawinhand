package com.ph4.s1.store.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/storePay/**")
public class StorePayController {

	@GetMapping("storePayment")
	public ModelAndView getStorePayment() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("storePay/storePayment");
		
		return mv;
		
	}
	
	@GetMapping("storePayMain")
	public ModelAndView getStoreMainPay() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("storePay/storePayMain");
		return mv;
		
	}
}
