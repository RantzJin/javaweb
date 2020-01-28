package com.dev.spring.controller;

import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dev.spring.dto.BbsDTO;
import com.dev.spring.service.BbsService;
import com.dev.spring.service.Criteria;
import com.dev.spring.service.Paging;

@Controller
public class BbsController {
	
	@Autowired
	private BbsService bbsService;
	
	//게시판 목록 
	@RequestMapping("/list.do") 
	public String boardList(BbsDTO bbsDTO, Model model, Criteria cri) throws Exception { 
		Paging paging = new Paging(); 
		paging.setCri(cri); 
		paging.setTotalCount(bbsService.countArticle(bbsDTO)); 
		
		int pageNum = paging.getCri().getPage(); 
		
		List<Map<String, Object>> list = bbsService.listAll(cri); 
		
		model.addAttribute("bbsList", list); 
		model.addAttribute("pageNum", pageNum); 
		model.addAttribute("paging", paging); 
		return "list";
	} 
	
	//게시물 작성 화면
	@RequestMapping(value = "write.do", method=RequestMethod.GET)
	public String write() {
		return "write";
	}
	
	//게시물 작성 처리
	@RequestMapping(value = "insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute BbsDTO bbsDTO, HttpSession session) throws Exception {
		String writer = (String) session.getAttribute("id");
		bbsDTO.setWriter(writer);
		bbsService.create(bbsDTO); 
		return "redirect:/list.do";
	}
	
	//게시물 상세 보기 
	@RequestMapping(value = "view.do", method=RequestMethod.GET)
	public String view(Model model, @RequestParam("bno")int bno) throws Exception {
		model.addAttribute("view", bbsService.view(bno));
		bbsService.increaseViewcnt(bno); //게시물 조회수 증가
	  return "view";
	}
	
	//게시물 수정 페이지로 이동
	@RequestMapping(value = "modify.do", method=RequestMethod.GET)
	public String modify(Model model, @RequestParam("bno")int bno) throws Exception {
		model.addAttribute("view", bbsService.view(bno));
	  return "modify";
    }
	
	//게시물 수정 처리
	@RequestMapping("update.do")
	public String update(@ModelAttribute BbsDTO bbsDTO) throws Exception {
		bbsService.update(bbsDTO);
		return "redirect:/view.do?bno=" + bbsDTO.getBno();
	}
	
	//게시물 삭제
	@RequestMapping(value = "delete.do")
	public String delete(@RequestParam int bno) throws Exception {
		bbsService.delete(bno);
		return "redirect:/list.do";
	}
	
}
