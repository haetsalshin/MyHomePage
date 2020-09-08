package com.biz.homepage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.homepage.model.MemberVO;
import com.biz.homepage.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/member")
@Controller
public class MemberController {
	
	@Qualifier("memServiceV1")
	@Autowired
	private MemberService memService;
	
	
	
	@RequestMapping(value = "/join", method=RequestMethod.GET)
	public String join(@ModelAttribute("MEM_VO") MemberVO memVO, Model model) {
		
		model.addAttribute("BODY", "MEM_WRITE");
		
		return "home";
	}
	@RequestMapping(value = "/join", method=RequestMethod.POST)
	public String join(@ModelAttribute("MEM_VO")MemberVO memVO,Model model, String s) {
		
		log.debug(memVO.toString());
		memService.insert(memVO);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String login(@ModelAttribute("LOGIN_VO") MemberVO loginVO, Model model) {
		
		model.addAttribute("BODY", "LOGIN");
		
		return "home";
		
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("LOG_VO") MemberVO loginVO, Model model, HttpSession httpSession) {
		
		log.debug(loginVO.toString());
		
		MemberVO memVO = memService.login(loginVO);
		
		String retURL = "";
		if(memVO == null) {
			retURL ="LOGIN";
			model.addAttribute("MSG","아이디가 없습니다 !!");
		}else if(!loginVO.getM_userid().equals(memVO.getM_userid())) {
			retURL = "LOGIN";
			model.addAttribute("MSG","비밀번호가 일치하지 않습니다!!");
		}else {
			httpSession.setAttribute("LOGIN", memVO);
		}
		
		model.addAttribute("BODY",retURL);
		return "home";
		
	}
	@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		
		httpSession.removeAttribute("LOGIN");
		httpSession = null;
		
		return "home";
	}
	
	@RequestMapping(value = "/map", method=RequestMethod.GET)
	public String map(Model model) {
		
		model.addAttribute("BODY", "MAP");
		
		return "home";
	}
	

}
