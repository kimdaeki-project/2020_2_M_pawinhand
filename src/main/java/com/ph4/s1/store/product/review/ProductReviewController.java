package com.ph4.s1.store.product.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/review/**")
public class ProductReviewController {
	
	@Autowired
	private ProductReviewService productReviewService;
	
	@GetMapping("reviewList")
	public ModelAndView getList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductReviewDTO> ar = productReviewService.getList();
		mv.addObject("lists", ar);
		mv.setViewName("product/review/reviewList");
		return mv;
	}
}
