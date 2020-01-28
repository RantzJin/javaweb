package com.dev.spring.service;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.spring.dao.MemberDAO;
import com.dev.spring.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void insertMember(MemberDTO memberDTO) {
		dao.insertMember(memberDTO);
	}
	//아이디 확인
	@Override
	public MemberDTO getMember(MemberDTO memberDTO) {
		return dao.getMember(memberDTO);
	}
	//로그인 체크
	@Override
	public boolean loginCheck(MemberDTO memberDTO, HttpSession session) {
		boolean result = dao.loginCheck(memberDTO);
		if (result == true) {	//id정보가 존재할 경우 세션 등록
			MemberDTO dto2 = getMember(memberDTO);
			session.setAttribute("id", dto2.getId()); //세션 설정
		}
		return result;
	}
	//로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate(); //세션 정보 초기화
	}
	//회원 정보 수정
    @Override
    public void updateMember(MemberDTO memberDTO) {
        dao.updateMember(memberDTO);
    }
    //회원 삭제
    @Override
    public void deleteMember(MemberDTO memberDTO) {
        dao.deleteMember(memberDTO);
    }
}
