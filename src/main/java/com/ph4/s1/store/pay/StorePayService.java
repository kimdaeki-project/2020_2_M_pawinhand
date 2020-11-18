package com.ph4.s1.store.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.ls.LSInput;

import com.ph4.s1.member.MemberDTO;
import com.ph4.s1.store.product.ProductDTO;

@Service
public class StorePayService {
	
	@Autowired
	private StorePayDAO storePayDAO;
	@Autowired
	private StorePayService storePayService;
	
	/*
	public List<CartDTO> getCartDetail(CartDTO cartDTO) throws Exception{
		
		//상품별 포인트 계산 작업
		double points = 1;
		
		List<CartDTO> ar = storePayDAO.getCartDetail(cartDTO);
		
		//상품별 포인트 계산해서 넣기 
		for(int i=0; i<ar.size(); i++) {
			points = ar.get(i).getProductDTO().getPrice()*0.02;
			ar.get(i).setPoints(points);
		}
		
		return ar;
	}
	*/
	
	public MemberDTO getMember(CartDTO cartDTO) throws Exception{
		return storePayDAO.getMember(cartDTO);
	}
	public MemberDTO memberOne(MemberDTO memberDTO) throws Exception{
		return storePayDAO.memberOne(memberDTO);
	}
	
	//주문상품 리스트 불러오는거
	public ProductDTO getOrderProduct(ProductDTO productDTO) throws Exception{
		
		//상품별 포인트 계산 작업
		double points = 1;
				
		productDTO = storePayDAO.getOrderProduct(productDTO);
				
		//상품별 포인트 계산해서 넣기 
		points = productDTO.getPrice()*0.02;
		productDTO.setPoints(points);
			
		return productDTO;
	} 
	
	public int setOrderList(OrderListDTO orderListDTO, PayInfoDTO payInfoDTO, long usePoint, long addPoint) throws Exception{
		
		String payMethod = payInfoDTO.getPayMethod();
		String id =  orderListDTO.getOrderId();
		
		int result =  storePayDAO.setOrderList(orderListDTO);
		
		payInfoDTO.setOrder_num(orderListDTO.getOrder_num());
		
		//payMethod가 신용카드로 잘 넘어온것은, 이미 결제가 완료되었다는 뜻임!!!
		if(payMethod.equals("신용카드")) {
			payInfoDTO.setIsPay(1);
			storePayService.setUsePoints(usePoint,id);
			storePayService.setAddPoints(addPoint, id);
		}
		
		int payInfoResult = storePayDAO.setPayInfo(payInfoDTO);
		
		System.out.println("결제정보 들어갔는지 : "+payInfoResult);
		return result;
	}
	
	//사용 포인트 빼기
	public void setUsePoints(long usePoint, String id) throws Exception{
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(id);
		
		memberDTO = storePayDAO.memberOne(memberDTO);
		
		//해당 멤버의 현재 포인트 받아와서 사용포인트 빼기
		long points =  memberDTO.getPoints();
		
		points = points - usePoint;
		
		memberDTO.setPoints(points);
		
		int result = storePayDAO.setPoint(memberDTO);
		System.out.println(" - 포인트 갱신결과 : "+result);
	}
	//적립포인트 더하기
	public void setAddPoints(long addPoint, String id) throws Exception{
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(id);
		
		memberDTO = storePayDAO.memberOne(memberDTO);
		
		//해당 멤버의 현재 포인트 받아와서 사용포인트 빼기
		long points =  memberDTO.getPoints();
		
		points = points + addPoint;
		
		memberDTO.setPoints(points);
		
		int result = storePayDAO.setPoint(memberDTO);
		System.out.println("add 포인트 갱신결과 : "+result);
	}
	
	//결제 완료되면 재고에서 빼기
	public void setProductStock(ProductDTO productDTO) throws Exception{
		long amount = productDTO.getAmount();
		productDTO.setStock(productDTO.getStock() - amount);
		
		int result = storePayDAO.setProductStock(productDTO);
	}
	
}
