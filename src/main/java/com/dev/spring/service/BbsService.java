package com.dev.spring.service;

import java.util.List;

import java.util.Map;

import com.dev.spring.dto.BbsDTO;

public interface BbsService {
	
	//게시물 작성
	public void create(BbsDTO bbsDTO) throws Exception;
	
	//게시물 상세보기
	public BbsDTO view(int bno) throws Exception;
	
	//게시물 조회수 증가
	public void increaseViewcnt(int bno) throws Exception;
	
	//게시물 수정
	public void update(BbsDTO bbsDTO) throws Exception;
	
	//게시물 삭제
	public void delete(int bno) throws Exception;
	
	//게시물 전체 목록
	public List<Map<String, Object>> listAll(Criteria cri) throws Exception; 
	
	//게시물 레코드 갯수
	public int countArticle(BbsDTO bbsDTO) throws Exception;
	
}
