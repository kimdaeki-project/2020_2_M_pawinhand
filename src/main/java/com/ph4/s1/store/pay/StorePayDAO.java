package com.ph4.s1.store.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ph4.s1.member.MemberDTO;

@Repository
public class StorePayDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.ph4.s1.store.pay.StorePayDAO.";
	
	public List<CartDTO> getCartDetail(CartDTO cartDTO) throws Exception{
		
		return sqlSession.selectList(NAMESPACE+"getCartDetail", cartDTO);
	}
	
	public MemberDTO getMember(CartDTO cartDTO) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getMember", cartDTO);
	}
}
