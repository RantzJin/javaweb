package com.dev.spring.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.spring.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//회원가입
	public void insertMember(MemberDTO memberDTO) {
		sqlSessionTemplate.insert("member.insertMember", memberDTO);
	}
	//아이디 확인
	public MemberDTO getMember(MemberDTO memberDTO) {
		return (MemberDTO) sqlSessionTemplate.selectOne("member.getMember", memberDTO);
	}
	//로그인 체크
	public boolean loginCheck(MemberDTO memberDTO) {
		String name = sqlSessionTemplate.selectOne("member.loginCheck", memberDTO);
		return (name == null) ? false : true;
	}
	//로그아웃
	public void logout(HttpSession session) {
	}
	//회원 정보 수정
	public void updateMember(MemberDTO memberDTO) {
		sqlSessionTemplate.update("member.updateMember", memberDTO);
	}
	//회원 삭제
	public void deleteMember(MemberDTO memberDTO) {
		sqlSessionTemplate.delete("member.deleteMember", memberDTO);
	}
}
