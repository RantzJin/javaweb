package com.dev.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TripViewController {
	
    //해외 여행지1
    @RequestMapping(value = "/overtrip/overseas1")
    public String overseas1() {
    	return "overtrip/overseas1";
    }
    //해외 여행지2
    @RequestMapping(value = "/overtrip/overseas2")
    public String overseas2() {
    	return "overtrip/overseas2";
    }
    //해외 여행지3
    @RequestMapping(value = "/overtrip/overseas3")
    public String overseas3() {
    	return "overtrip/overseas3";
    }
    //해외 여행지4
    @RequestMapping(value = "/overtrip/overseas4")
    public String overseas4() {
    	return "overtrip/overseas4";
    }
    //해외 여행지5
    @RequestMapping(value = "/overtrip/overseas5")
    public String overseas5() {
    	return "overtrip/overseas5";
    }
    //해외 여행지6
    @RequestMapping(value = "/overtrip/overseas6")
    public String overseas6() {
    	return "overtrip/overseas6";
    }
    //국내 여행지1
    @RequestMapping(value = "/domtrip/domestic1")
    public String domestic1() {
    	return "domtrip/domestic1";
    }
    //국내 여행지2
    @RequestMapping(value = "/domtrip/domestic2")
    public String domestic2() {
    	return "domtrip/domestic2";
    }
    //국내 여행지3
    @RequestMapping(value = "/domtrip/domestic3")
    public String domestic3() {
    	return "domtrip/domestic3";
    }
    //국내 여행지4
    @RequestMapping(value = "/domtrip/domestic4")
    public String domestic4() {
    	return "domtrip/domestic4";
    }
    //국내 여행지5
    @RequestMapping(value = "/domtrip/domestic5")
    public String domestic5() {
    	return "domtrip/domestic5";
    }
    //국내 여행지6
    @RequestMapping(value = "/domtrip/domestic6")
    public String domestic6() {
    	return "domtrip/domestic6";
    }
}
