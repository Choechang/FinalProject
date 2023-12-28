package com.kh.finalProject.chat.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.finalProject.chat.model.service.ChatService;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.Message;
import com.kh.finalProject.member.model.vo.Member;


@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@GetMapping("chat.ch")
	public String chat(Message msg, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		msg.setSenderNo(loginUser.getMemberNo());
		ArrayList<Message> msgList = chatService.msgList(msg);
		session.setAttribute("msgList", msgList);
		System.out.println("msgList" + msgList);
		if (loginUser == null) {
			return "redirect:/";
		}  
		return "chatting/chat";
	}

	
	@RequestMapping(value="chatRoom.ch")
	public String chattingRoom(ChattingRoom cr, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		cr.setMemberNo(loginUser.getMemberNo());
		ArrayList<ChattingRoom> crList = chatService.chattingRoomList(cr);
		System.out.println("crList : " + crList);
		int memberNo = loginUser.getMemberNo();
		session.setAttribute("memberNo", memberNo);

		for (ChattingRoom chatRoom : crList) {
			int chatRoomNo = chatRoom.getChatRoomNo();
			session.setAttribute("chatRoomNo", chatRoomNo);
			ArrayList<ChattingRoom> senderInfoList  = chatService.senderInfo(chatRoomNo, memberNo);
			session.setAttribute("memName", senderInfoList);
			
		}
		System.out.println("dddd" + crList);
		
		session.setAttribute("crList", crList);
		return "chatting/chattingRoom";
	}
//    System.out.println("chatRoomNo(채팅방 번호): " + chatRoomNo);
//    System.out.println("senderInfoList(상대방): " + senderInfoList);
//    Object mem = session.getAttribute("memName");
//    System.out.println("mem:"+mem);
//    ArrayList<Chatter> memNameList = (ArrayList<Chatter>) session.getAttribute("memName");	
	
}
