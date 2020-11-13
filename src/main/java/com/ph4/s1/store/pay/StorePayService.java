package com.ph4.s1.store.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.ls.LSInput;

import com.ph4.s1.member.MemberDTO;

@Service
public class StorePayService {
	
	@Autowired
	private StorePayDAO storePayDAO;
	
	public List<CartDTO> getCartDetail(CartDTO cartDTO) throws Exception{
		
		//상품별 포인트 계산 작업
		double points = 1;
		
		List<CartDTO> ar = storePayDAO.getCartDetail(cartDTO);
		
		for(int i=0; i<ar.size(); i++) {
			points = ar.get(i).getProductDTO().getPrice()*0.02;
			ar.get(i).setPoints(points);
		}
		
		return ar;
	}
	
	public MemberDTO getMember(CartDTO cartDTO) throws Exception{
		
		return storePayDAO.getMember(cartDTO);
	}
}
