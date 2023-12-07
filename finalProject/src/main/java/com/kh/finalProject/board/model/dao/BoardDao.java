package com.kh.finalProject.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.common.vo.Notice;
import com.kh.finalProject.common.vo.PageInfo;

@Repository
public class BoardDao {
	
	public ArrayList<Board> selectCommList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectCommList", null, rowBounds);
	}
	
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}

	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}
	
	public int deleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteBoard", boardNo);
	}
	
	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	
	public int selectCommListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectCommListCount");
	}
	
	public ArrayList<Notice> noticeList(SqlSessionTemplate sqlSeesion){
		return (ArrayList)sqlSeesion.selectList("boardMapper.noticeList");
	}
	
	public int insertNotice(SqlSessionTemplate sqlSeesion, Notice n) {
		return sqlSeesion.insert("boardMapper.insertNotice", n);
	}
	
	public int deleteNotice(SqlSessionTemplate sqlSeesion, Notice n) {
		return sqlSeesion.insert("boardMapper.deleteNotice", n);
	}
	
	public int selectCuriousListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectCuriousListCount");
	}
	
	public ArrayList<Board> selectCuriousList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectCuriousList", null, rowBounds);
	}
	
	public int selectMuchListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectMuchListCount");
	}
	
	public ArrayList<Board> selectMuchList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectMuchList", null, rowBounds);
	}
	
	public int selectTogetherListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectTogetherListCount");
	}
	
	public ArrayList<Board> selectTogetherList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectTogetherList", null, rowBounds);
	}
	
	//도와주세요 도와줄게요 등 게시판 상세조회
	public Board selectCommBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectCommBoard", boardNo);
	}
	
}
