package com.dev.spring.dao;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.spring.dto.BbsDTO;
import com.dev.spring.service.Criteria;

@Repository
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//게시물 작성
	public void insert(BbsDTO bbsDTO) throws Exception {
		sqlSessionTemplate.insert("bbs.insert", bbsDTO);
	}
	
	//게시물 상세보기
	public BbsDTO view(int bno) throws Exception {
		return sqlSessionTemplate.selectOne("bbs.view", bno);
	}
	
	//게시물 조회수 증가
	public void increaseViewcnt(int bno) throws Exception {
		sqlSessionTemplate.update("bbs.increaseViewcnt", bno);
	}
	
	//게시물 수정
	public void update(BbsDTO bbsDTO) throws Exception {
		sqlSessionTemplate.update("bbs.updateAct", bbsDTO);
	}
	
	//게시물 삭제
	public void delete(int bno) throws Exception {
		sqlSessionTemplate.delete("bbs.deleteAct", bno);
	}
	
	//게시물 목록
	public List<Map<String, Object>> listAll(Criteria cri) throws Exception { 
		return sqlSessionTemplate.selectList("bbs.listAll", cri); 
	}
	
	//게시물 갯수
	public int countArticle(BbsDTO bbsDTO) throws Exception {
		return sqlSessionTemplate.selectOne("bbs.countArticle", bbsDTO);
	}

}
