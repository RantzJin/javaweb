package com.dev.spring.service;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.spring.dao.BbsDAO;
import com.dev.spring.dto.BbsDTO;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	BbsDAO dao;

	//게시물 작성
	@Override
	public void create(BbsDTO bbsDTO) throws Exception {
		String title = bbsDTO.getTitle();
		String content = bbsDTO.getContent();
		String writer = bbsDTO.getWriter();
		// String writer = ${sessionScope.id};
		// String writer = (String)session.getAttribute("id");
		//공백, 특수문자 등 처리
		title = title.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
		writer = writer.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
		content = content.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");		
				
		bbsDTO.setTitle(title);
		bbsDTO.setContent(content);
		bbsDTO.setWriter(writer);
		dao.insert(bbsDTO);
	}
	
	//게시물 상세보기
	@Override
	public BbsDTO view(int bno) throws Exception {
		return dao.view(bno);
	}
	
	//게시물 조회수 증가
	@Override
	public void increaseViewcnt(int bno) throws Exception {
		dao.increaseViewcnt(bno);
	}
	
	//게시물 수정
	@Override
	public void update(BbsDTO bbsDTO) throws Exception {
		dao.update(bbsDTO);
	}
	
	//게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
	
	//게시물 전체 목록
	public List<Map<String, Object>> listAll(Criteria cri) throws Exception {
		return dao.listAll(cri); 
	}
	
	//게시물 갯수
	@Override
	public int countArticle(BbsDTO bbsDTO) throws Exception {
		return dao.countArticle(bbsDTO);
	}
	
}
