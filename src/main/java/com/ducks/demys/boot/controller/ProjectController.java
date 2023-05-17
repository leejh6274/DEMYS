package com.ducks.demys.boot.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ducks.demys.boot.service.MeetingBookService;
import com.ducks.demys.boot.service.ProductService;
import com.ducks.demys.boot.service.RequireService;
import com.ducks.demys.boot.vo.MeetingBook;
import com.ducks.demys.boot.vo.Product;
import com.ducks.demys.boot.vo.Require;



@Controller
public class ProjectController {
	
	private MeetingBookService meetingBookService;
	private ProductService productService;
	private RequireService requireService;
	
	public ProjectController(MeetingBookService meetingBookService, ProductService productService, RequireService requireService) {
		this.meetingBookService = meetingBookService;
		this.productService = productService;
		this.requireService = requireService;
	}
	
	
	 @RequestMapping("project/product") 
	 public String showproduct(Model model) {
		List<Product> productList = productService.getProductListByPJ_NUM(1); //1을 PJ_NUM으로, 위에 모델옆에 int PJ_NUM
		model.addAttribute("productList", productList);
		
		return "project/product";
	 }
	  
	 @RequestMapping("project/product_TL") 
	 public String showproduct_TL(Model model) {
		List<Product> productList_TL = productService.getProductListByPJ_NUM(1); //1을 PJ_NUM으로, 위에 모델옆에 int PJ_NUM
		model.addAttribute("productList_TL", productList_TL);
			
		return "project/product_TL";
	 }
	 
	 @RequestMapping("project/PDstatusChange")
	 @ResponseBody
	 public void statusChange(@RequestBody Product product) {
		 productService.changeStatusProduct(product);
	 }
	  
	 @RequestMapping("project/product_detail") 
	 public void showproduct_detail() {
	 
	 }
	 
	 @RequestMapping("project/require") 
	 public String showrequire(Model model) {
		 List<Require> requireList = requireService.getRequireListByPJ_NUM(1); //1을 PJ_NUM으로, 위에 모델옆에 int PJ_NUM
		 model.addAttribute("requireList", requireList);
		 
		 return "project/require";
	 }
	 
	 @RequestMapping("project/require_detail") 
	 public void showrequire_detail() {
	 
	 }
	  
	 @RequestMapping("project/require_modify") 
	 public void showrequire_modify() {
	  
	 }

	
	@RequestMapping("project/meetingbook")
	public String showmeetingbook(Model model) {
		List<MeetingBook> meetingBookList = meetingBookService.getMeetingBookListByPJ_NUM(1);  //1을 PJ_NUM으로, 위에 모델옆에 int PJ_NUM
		model.addAttribute("meetingBookList", meetingBookList);
		
		return "project/meetingbook";
	}
	

	 @RequestMapping("project/meetingbook_detail") 
	 public void showmeetingbook_detail() {
	 
	 }
	 
	 @RequestMapping("project/issue") 
	 public void showissue() {
	 
	 }
	 
	  @RequestMapping("project/issue_detail_TL") 
	  public void showissue_detail_TL() {
	  
	  }
	  
	  @RequestMapping("project/issue_detail") 
	  public void showissue_detail() {
	  
	  }
	 
	

}
