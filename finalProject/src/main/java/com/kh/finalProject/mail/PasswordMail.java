package com.kh.finalProject.mail;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;

@Controller
public class PasswordMail {

	@Autowired
	private JavaMailSender sender;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/sendmail.pwd")
	public String mail(Member m, Model model) {
		
		Member loginUser = memberService.emailCheck(m);
		System.out.println(loginUser);
//		메시지 생성
		
		if(loginUser == null) {
			model.addAttribute("errorMsg", "에러에러에러에러");
			return "common/errorPage";
			
		} else {
			SimpleMailMessage message = new SimpleMailMessage();
			
			message.setSubject(loginUser.getMemberName()+"님 안녕하세요 품앗이입니다.");  
			message.setText("귀하의 비밀번호는 " + loginUser.getMemberPwd() + "입니다."); 
			
			
			String[] to = {"dame9735@naver.com"}; 
			message.setTo(to);
			
			sender.send(message);
			
			
			
			model.addAttribute("successMsg", "귀하의 메일로 비밀번호를 보냈습니다.");
			return "common/successPage";
			
		}
		
	}
	
	@RequestMapping(value = "/emailSendNo.me")
	@ResponseBody
	public void emailSendNo(EmailCheck e, Model model) { // 제목 
		SimpleMailMessage message = new SimpleMailMessage(); // 내용
		
		message.setSubject("안녕하세요. 품앗이 인증번호입니다.");
		int random = (int)(Math.random()*899999+100000);;
		message.setText("품앗이 회원가입 인증번호는 [" + random + "] 입니다.");
		e.setAuthRandom(random);
		
		String[] to = {'"'+e.getAuthEmail()+'"'}; //받는사람
		message.setTo(to);
		
		sender.send(message);
		
		int result = memberService.insertEmailRandomNo(e);
	}
	
	@RequestMapping(value = "/randomNumberCheck.me")
	@ResponseBody
	public String checkRandomNo(EmailCheck e) {
		
		EmailCheck db = memberService.checkRandomNo(e);
		Map<String, Object> map = new HashMap<>();
		
		if(db.getAuthRandom() == e.getCheckNo()) {
			EmailCheck tmp = memberService.checkCreateDate(e);
			System.out.println(tmp);
			if(tmp != null) {
				map.put("data", "NNNNY");
			} else {
				map.put("data", "NNNNN");
			}
		} else {
			map.put("data", "NNNNN");
		}
	    
		return new Gson().toJson(map);
	}
	
	
}
