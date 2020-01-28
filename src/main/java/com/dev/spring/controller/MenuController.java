package com.dev.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {
	
    //메인 메뉴 화면 이동
    @RequestMapping(value = "/main")
    public String main() {
    	return "main";
    }
    //국내 메뉴 화면 이동
    @RequestMapping(value = "/domestic")
    public String domestic() {
    	return "domestic";
    }
    //국내 여행지1 화면 이동
    @RequestMapping(value = "/domestic1")
    public String domestic1() {
		return "domestic1"; 
	}
    //해외 메뉴 화면 이동
    @RequestMapping(value = "/overseas")
    public String overseas() {
    	return "overseas";
    }
    //회원가입 메뉴 화면 이동
    @RequestMapping(value = "/regMember")
    public String regMember() {
    	return "regMember";
    }
    //로그인 화면 이동
    @RequestMapping(value = "/login")
    public String login() {
		return "login"; 
	}
}
