package com.ph4.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public MemberDTO getMemberLogin(MemberDTO memberDTO) throws Exception {
		return memberDAO.getMemberLogin(memberDTO);
	}
	
	public MemberDTO getOne(MemberDTO memberDTO) throws Exception{
		return memberDAO.getOne(memberDTO);
	}
	
	public MemberDTO getMemberIdCheck(MemberDTO memberDTO) throws Exception{
		return memberDAO.getMemberIdCheck(memberDTO);
	}
	
	public int setMemberJoin(MemberDTO memberDTO) throws Exception {
		return memberDAO.setMemberJoin(memberDTO);
	}
	
	public int setMemberDelete(MemberDTO memberDTO) throws Exception{
		return memberDAO.setMemberDelete(memberDTO);
	}
	
	public int setMemberUpdate(MemberDTO memberDTO) throws Exception{
		return memberDAO.setMemberUpdate(memberDTO);
	}
}
