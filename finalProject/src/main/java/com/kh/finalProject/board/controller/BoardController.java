package com.kh.finalProject.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;

@Controller
public class BoardController {
	
	// 도와줄게요, 도와주세요, 커뮤니티 등등 게시판 으로 활용할 컨트롤러
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "help.bo")
	public String helpBoard() {
		//도와줄게요 화면
		return "board/helpBoardList";
	}
	
	@RequestMapping(value="request.bo")
	public String requestBoard() {
		// 도와주세요 화면
		return "board/requestBoardList";
	}
	
	@RequestMapping(value="detail.bo")
	public String detailBoard() {
		// 클릭시 상세페이지 이동 (하나밖에 없음)
		return "board/boardDetailView";
	}
	
	@RequestMapping(value="helpinsert.bo")
	public String helpinsertBoard(Board b, HttpSession session ,Model model) {
		// 도와줄게요 게시글 수정하기
		int result = boardService.insertBoard(b);
		
		if(result > 0) { // 성공 => 도와줄게요 게시글 리스트 페이지 redirect:help.bo
			session.setAttribute("","게시글 작성 완료");
			return "redirect:help.bo";
		} else { // 실패 => 에러페이지
			model.addAttribute("","게시글 작성 실패");
			return "";
		}
	}
	
//	스크립트 기능 후 가진 정보 보내주는 기능 
//	나중에 작성!
//	@RequestMapping(value="")
//	public String reportModal() {
//		
//		
//		return "board/reportModal";
//	}
//	
//	@RequestMapping(value="")
//	public String reportModal() {
//		
//		return "board/reportModal";
//	}
	

}
