package com.kh.finalProject.board.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.common.vo.Attachment;

import com.kh.finalProject.common.Pagenation;
import com.kh.finalProject.common.vo.PageInfo;

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
	
	// 도와줄게요 게시글 조회
	@RequestMapping(value="helpList.bo")
	public String helpListBoard() {
		
		return "board/helpBoardList";
	}
	
	// 도와줄게요 게시글 등록
//	@RequestMapping(value="helpu.bo")
//	public String helpinsertBoard() {
//		
//		return "board/helpu"; //보류
//	}
	
	// 도와줄게요 게시글 수정
	@RequestMapping(value="helpRetouch.bo")
	public String updateBoard() {
		
		return "";
	}
	
	// 도와줄게요 게시글 삭제
	@RequestMapping(value="helpDelete.bo")
	public String DeleteBoard() {
		return "board/helpBoardList";
	}

//	@RequestMapping(value= "curious.co")
//	public String curiousBoard(){
//		//화면 전환용 임시 데이터는 없는상태
//		return "noticeBoard/curiousBoard";
	
	//게시글 리스트 전체보기
//	public ModelAndView selectList
//	(@RequestParam(value="cpage", defaultValue="1") int currentPage,  ModelAndView mv) {
//				
//			PageInfo pi = Pagenation.getPageInfo(boardService.selectListCount(), currentPage, 10, 5);
//			
//			mv.addObject("pi",pi)
//			  .addObject("list", boardService.selectList(pi))
//			  .setViewName("board/boardListView");
//			
//			return mv;
//		}
		
	
	//궁금해요
//	@RequestMapping(value = "/curious.co")
//	public ModelAndView curiousBoard(Model model){
//		
//		ArrayList<Board> list = boardService.selectList(pi);
//		
//		model.addAttribute("list", list);
//		model.addAttribute("pi", pi);
//		
//		return mv;
//		
//		}

	
	//얼마에요
	@RequestMapping(value = "/much.co")
	public String muchBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/muchBoard";
	}
	
	//함께해요
	@RequestMapping(value = "/together.co")
	public String togetherBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/togetherBoard";
	}
	
	
	//공지사항
	@RequestMapping(value = "/notice.co")
	public String noticeBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/noticeBoard";
	}
	//
	@RequestMapping(value = "/viewall.co")
	public String allBoardBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/allBoard";
	}
	
	@RequestMapping(value = "/helpuForm.bo")
	public String helpuForm() {
		
		return "board/helpu";
	}
	
//	@RequestMapping(value = "helpInsert.bo")
//	public String helpInsert(Board b) {
//		b.setMemberNo(2); // 임시데이터
//		b.setCatrgoryNo(200); // 임시데이터
//		int result1 = boardService.helpInsert(b);
//		return "";
//	}

	//게시글 등록
	@RequestMapping("insert.bo")
	public String insertBoard(Board b, HttpSession session, Model model) {
		//System.out.println(b);
		
		int result = boardService.insertBoard(b);
		if (result > 0) { //성공 => 게시글 리스트 페이지 redirect:"list.bo"
			session.setAttribute("alertMsg", "게시글 작성 완료");
			return "redirect:list.bo";
		} else { //실패 => 에러페이지
			model.addAttribute("errorMsg", "게시글 작성 실패");
			return "common/errorMsg";
		}
	}
	
	//게시글 수정
	
	
	
	
	//게시글 삭제
	
	
	
	
	
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
