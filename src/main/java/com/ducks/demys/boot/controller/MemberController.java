package com.ducks.demys.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ducks.demys.boot.service.MemberService;
import com.ducks.demys.boot.vo.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	private MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@RequestMapping("/member/list")
	@ResponseBody
	public Member showList(){
		Member member=memberService.getMemberByMEMBER_NUM(1);
		return member;
	}
	
	// 로그인
	   @RequestMapping("/member/login")
	   public void showLogin() {
	   }

	   @RequestMapping("/member/doLogin")
	   public String doLogin(@RequestParam("MEMBER_ID") String MEMBER_ID, @RequestParam("MEMBER_PW") String MEMBER_PW,
	         HttpSession session, Model model) {

	      if (MEMBER_ID.isEmpty() || MEMBER_PW.isEmpty()) {
	         model.addAttribute("error", "Please try login again");
	         return "redirect:/member/login";
	      }

	      Member member = memberService.getMemberByMEMBER_ID(MEMBER_ID);

	      if (member != null && member.getMEMBER_PW().equals(MEMBER_PW)) {
	         session.setAttribute("member", member);
	         return "redirect:/project/product";
	      } else {
	         if (member == null || !member.getMEMBER_ID().equals(MEMBER_ID)) {
	            model.addAttribute("invalidId", "Invalid login ID.");
	         } else {
	            model.addAttribute("invalidPassword", "Invalid password.");
	         }
	         return "member/login";
	      }
	   }

	   // 로그아웃
	   @RequestMapping("/member/logout")
	   public String logout(HttpSession session) {
	      session.removeAttribute("MEMBER_ID");
	      return "redirect:/member/login";
	   }
	
}