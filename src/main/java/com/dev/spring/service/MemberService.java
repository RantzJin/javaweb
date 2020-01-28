package com.dev.spring.service;

import javax.servlet.http.HttpSession;

import com.dev.spring.dto.MemberDTO;

public interface MemberService {
	
	//회원가입
	public void insertMember(MemberDTO memberDTO); 
	
	//아이디(정보)확인
	public MemberDTO getMember(MemberDTO memberDTO); 
	
	//회원 로그인 체크
	public boolean loginCheck(MemberDTO memberDTO, HttpSession session);
	
	//회원 로그아웃
	public void logout(HttpSession session);
	
	//회원 정보 수정
	void updateMember(MemberDTO memberDTO);
    
	//회원 삭제
    void deleteMember(MemberDTO memberDTO);
    
}
