package com.ducks.demys.boot.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ducks.demys.boot.service.MeetingBookService;
import com.ducks.demys.boot.service.ProjectsService;
import com.ducks.demys.boot.vo.MeetingBook;



@Controller
public class ProjectController {
	
	private MeetingBookService meetingBookService;
	private ProjectsService projectsService;
	
	public ProjectController(MeetingBookService meetingBookService, ProjectsService projectsService) {
		this.meetingBookService = meetingBookService;
		this.projectsService = projectsService;
	}
	
	/*
	 * @RequestMapping("project/product") public void showproduct() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/product_TL") public void showproduct_TL() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/product_detail") public void showproduct_detail() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/require") public void showrequire() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/require_detail") public void showrequire_detail() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/require_modify") public void showrequire_modify() {
	 * 
	 * }
	 */
	
	@RequestMapping("project/meetingbook")
	public String showmeetingbook(Model model) {
		List<MeetingBook> meetingBookList = meetingBookService.getMeetingBookListByPJ_NUM(1);
		model.addAttribute("meetingBookList", meetingBookList);
		
		return "project/meetingbook";
	}
	
	/*
	 * @RequestMapping("project/meetingbook_detail") public void
	 * showmeetingbook_detail() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/issue") public void showissue() {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/issue_detail_TL") public void showissue_detail_TL()
	 * {
	 * 
	 * }
	 * 
	 * @RequestMapping("project/issue_detail") public void showissue_detail() {
	 * 
	 * }
	 */
	

}
