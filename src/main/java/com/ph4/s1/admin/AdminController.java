package com.ph4.s1.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ph4.s1.member.MemberDTO;
import com.ph4.s1.member.MemberService;
import com.ph4.s1.store.product.ProductDTO;
import com.ph4.s1.store.product.ProductService;
import com.ph4.s1.util.Pager;


@Controller
@RequestMapping(value = "/admin/**")
public class AdminController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("adminPage")
	public ModelAndView getList(ProductDTO productDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.getList(productDTO);
		
		mv.addObject("list", ar);
		mv.setViewName("admin/adminPage");
		
		return mv;
	}
	
	
//--------------------------------------------------------------------------------------------
	
	
	@GetMapping("admin_memberList")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> ar = memberService.getList(pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("admin/admin_memberList");
		
		return mv;
	}
	
//--------------------------------------------------------------------------------------------	
	
	
	@GetMapping("admin_memberSelect")
	public ModelAndView getOne(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getOne(memberDTO);
		
		mv.addObject("dto", memberDTO);
		mv.setViewName("admin/admin_memberSelect");
		return mv;
}
	
	
//--------------------------------------------------------------------------------------------
	
	@GetMapping("admin_memberUpdate")
	public ModelAndView setMemberUpdate_admin() throws Exception{
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	
	@PostMapping("admin_memberUpdate")
	public ModelAndView setMemberUpdate_admin(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = memberService.setMemberUpdate_admin(memberDTO);
		String msg = "수정 실패";
		
		if(result>0) {
			msg = "수정 완료";
			mv.addObject("msg", msg);
			mv.addObject("path", "./admin_memberList");
			mv.setViewName("common/result");
		}
		
		return mv;
	}

}
