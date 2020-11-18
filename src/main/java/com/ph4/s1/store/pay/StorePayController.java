package com.ph4.s1.store.pay;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ph4.s1.member.MemberDTO;
import com.ph4.s1.store.product.ProductDTO;

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
	
	@GetMapping("test")
	public ModelAndView viewTest() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("storePay/test");
		return mv;
	}
	
	@PostMapping("storePayMain")
	public ModelAndView getStoreMainPay(MemberDTO memberDTO, long [] product_num, long [] amount) throws Exception{
		ModelAndView mv = new ModelAndView();
		/*
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId("a1");
		
		List<CartDTO> ar = storePayService.getCartDetail(cartDTO);
		MemberDTO memberDTO = storePayService.getMember(cartDTO);
		
		mv.addObject("member", memberDTO);
		mv.addObject("list", ar);
		*/
		
		System.out.println("1번수량 : "+amount[0]);
		memberDTO = storePayService.memberOne(memberDTO);
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		
		for(int i =0; i<product_num.length; i++) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setProduct_num(product_num[i]);
			
			productDTO = storePayService.getOrderProduct(productDTO);
			productDTO.setAmount(amount[i]);
			ar.add(productDTO);		
		}
		
		mv.addObject("list", ar);
		mv.addObject("member", memberDTO);
		mv.setViewName("storePay/storePayMain");
		
		return mv;
		
	}
	
	
	@GetMapping("storePayInfo")
	public ModelAndView getPayInfo() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("storePay/storePayInfo");
		return mv;
	}
	
	@PostMapping("setOrderList")
	public ModelAndView setOrderList(OrderListDTO orderListDTO, PayInfoDTO payInfoDTO, long usePoint, long addPoint) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		System.out.println("사용포인트:"+usePoint);
		
		int result = storePayService.setOrderList(orderListDTO,payInfoDTO, usePoint, addPoint);
		
		if(result > 0) {
			mv.addObject("msg", "주문이 정상적으로 완료되었습니다.");
			
		}else {
			mv.addObject("msg", "주문이 실패되었습니다.");
		}
		
		mv.setViewName("/storePay/storePayInfo");
		
		return mv;
	}
	
}
