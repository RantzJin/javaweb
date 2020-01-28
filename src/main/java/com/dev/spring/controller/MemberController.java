package com.dev.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dev.spring.dto.MemberDTO;
import com.dev.spring.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//회원가입 
    @RequestMapping(value = "/insertMember.do", method = RequestMethod.POST)
    public ModelAndView insertMember(MemberDTO memberDTO, ModelAndView mav) {
        System.out.println("Controller.insertMember() 호출");
        memberService.insertMember(memberDTO);
        mav.setViewName("insertMember");
        return mav;
    }
    //아이디 확인
    @ResponseBody
    @RequestMapping(value = "/checkId.do")
    public int idCheck(MemberDTO memberDTO, ModelAndView mav) {
        System.out.println("Controller.idCheck() 호출");
        int result = 0;
        MemberDTO user = memberService.getMember(memberDTO);
        if (user != null) { //아이디가 null이 아니면 중복 아이디로, 결과를 1로 저장
        	result = 1;
		} else {
			System.out.println("아이디 사용 가능");
		}
        return result;
    }
    //로그인 처리
    @RequestMapping(value = "loginCheck.do")
    public ModelAndView loginCheck(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
    	boolean result = memberService.loginCheck(memberDTO, session);
    	ModelAndView mav = new ModelAndView();
    	if (result == true) { //로그인 성공이면
    		//mav.setViewName("redirect:/main.jsp"); 
    		mav.setViewName("redirect:/main"); 
    		mav.addObject("msg", "success");
		} else { //로그인 실패면
    		mav.setViewName("redirect:/loginFail");
    		mav.addObject("msg", "fail");
		}
    	return mav;
	}
    //로그아웃 처리
    @RequestMapping(value = "logout.do")
    public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main");
		//mav.addObject("msg", "로그아웃");
		return mav;
	}
}
