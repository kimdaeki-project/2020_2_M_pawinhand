package com.ph4.s1.store.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/product/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("goodsSelect")
	public ModelAndView getGoodsSelect(ProductDTO productDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		ProductDTO dto = productService.getOne(productDTO);
		mv.addObject("dto", dto);
		mv.setViewName("product/goodsSelect");
		return mv;
	}
	
	@GetMapping("goodsList")
	public ModelAndView getGoodsList()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/goodsList");
		return mv;
	}

}
