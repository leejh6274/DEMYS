package com.ducks.demys.boot.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ducks.demys.boot.service.IssueReplyService;
import com.ducks.demys.boot.service.IssueService;
import com.ducks.demys.boot.service.MeetingBookService;
import com.ducks.demys.boot.service.ProductService;
import com.ducks.demys.boot.service.RequireService;
import com.ducks.demys.boot.vo.Issue;
import com.ducks.demys.boot.vo.MeetingBook;
import com.ducks.demys.boot.vo.Product;
import com.ducks.demys.boot.vo.ProductForSearch;
import com.ducks.demys.boot.vo.Require;



@Controller
public class ProjectController {
	
	private MeetingBookService meetingBookService;
	private ProductService productService;
	private RequireService requireService;
	private IssueService issueService;
	
	
	public ProjectController(MeetingBookService meetingBookService, ProductService productService, RequireService requireService, IssueService issueService, IssueReplyService issueReplyService) {
		this.meetingBookService = meetingBookService;
		this.productService = productService;
		this.requireService = requireService;
		this.issueService = issueService;

	}
	
	
	/*
	 * @RequestMapping("project/product") public String showproduct(Model model) {
	 * List<Product> productList = productService.getProductListByPJ_NUM(1, 1); //1을
	 * PJ_NUM으로, 위에 모델옆에 int PJ_NUM model.addAttribute("productList", productList);
	 * 
	 * return "project/product"; }
	 */
	 @RequestMapping("project/product") 
	 public void showproduct() {
		 
	 }
	 
	 
	 @RequestMapping("project/product_TL") 
	 public void showproduct_tl() {
		 
	 }

		/*
		 * @RequestMapping("project/product_TL") public String showproduct_TL(Model
		 * model) { List<Product> productList_TL =
		 * productService.getProductListByPJ_NUM(1, 1); //1을 PJ_NUM으로, 위에 모델옆에 intPJ_NUM
		 * model.addAttribute("productList_TL", productList_TL);
		 * 
		 * return "project/product_TL"; }
		 */
	 
	 @RequestMapping("project/productList") 
	 @ResponseBody
	 public List<Product> showproductList(@RequestBody ProductForSearch pd) {
		 System.out.println(pd);
		 List<Product> productList=new ArrayList<Product>();
		 int PJ_NUM = pd.getPJ_NUM();
		 int PRODUCT_STEP = (int) pd.getPRODUCT_STEP();
		 String searchType=pd.getSearchType();
		 String keyword=pd.getKeyword();
		 
		 productList = productService.getProductListByOnlyPJ_NUM(PJ_NUM);
		 
		     //1을 PJ_NUM으로 바꿔
			 productList = productService.getSearchProductList(PJ_NUM, PRODUCT_STEP, searchType, keyword); //1을 PJ_NUM으로, 위에 모델옆에 int PJ_NUM
		 return productList;
	 }
	 
	 @RequestMapping("project/PDstatusChange")
	 @ResponseBody
	 public void statusChange(@RequestParam String product_num, String product_status) {
		 
		 Product product = new Product();
		 
		 int num = Integer.parseInt(product_num);
		 int status = Integer.parseInt(product_status);

		 product.setPRODUCT_NUM(num);
		 product.setPRODUCT_STATUS(status);
		 
		 productService.changeStatusProduct(product);
	 }
	 
	 
	 @RequestMapping("project/product_regist")
	 @ResponseBody
	 public void showproduct_regist(String PRODUCT_TITLE, int PRODUCT_STEP, String PRODUCT_CONTENT, int PRODUCT_STATUS, int MEMBER_NUM, int PJ_NUM) {
		Product product = new Product();	
		
		product.setPRODUCT_TITLE(PRODUCT_TITLE);
		product.setPRODUCT_STEP(PRODUCT_STEP);
		product.setPRODUCT_CONTENT(PRODUCT_CONTENT);
		product.setPRODUCT_STATUS(PRODUCT_STATUS);
		product.setMEMBER_NUM(MEMBER_NUM);
		product.setPJ_NUM(1);

		productService.registProduct(product);
		
	 }
		 
	 @RequestMapping("project/product_detail") 
	 public void showproduct_detail(Model model, int PRODUCT_NUM) {
		 Product product = productService.getProductByProduct_NUM(PRODUCT_NUM);
		 model.addAttribute("product", product);
	 }
	 
	 @RequestMapping("project/product_modify") 
	 public void showproduct_modify(int PRODUCT_NUM, Model model) {
		 Product product = productService.getProductByProduct_NUM(PRODUCT_NUM);
		 model.addAttribute("product", product);
	 }
	 
	 @ResponseBody
	 @PostMapping("project/doproduct_modify") 
	 public void showdoproduct_modify(String PRODUCT_TITLE, int PRODUCT_STEP, String PRODUCT_CONTENT, int PRODUCT_NUM, int PJ_NUM, int MEMBER_NUM) {
		
		Product product = productService.getProductByProduct_NUM(PRODUCT_NUM);
				
		product.setPRODUCT_TITLE(PRODUCT_TITLE);
		product.setPRODUCT_CONTENT(PRODUCT_CONTENT);
		product.setPRODUCT_STEP(PRODUCT_STEP);
		product.setMEMBER_NUM(MEMBER_NUM);
		product.setPJ_NUM(PJ_NUM);
		
		productService.modifyProduct(product);
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 @RequestMapping("project/require") 
	 public String showrequire(Model model, @RequestParam(defaultValue = "REQUIRE_TITLE, REQUIRE_DETAIL") String searchKeywordTypeCode,
				@RequestParam(defaultValue = "") String searchKeyword) {
		List<Require> requireList = requireService.getSearchRequire(searchKeywordTypeCode, searchKeyword);
		 
//		List<Require> requireList = requireService.getRequireListByPJ_NUM(1); //1을 PJ_NUM으로, 위에 모델옆에 int PJ_NUM
		model.addAttribute("requireList", requireList);
				
		return "project/require";
	 }
	
	  
	@RequestMapping("project/require_regist")
	@ResponseBody
	 public void showrequire_regist(String REQUIRE_TITLE, int REQUIRE_LEVEL, String REQUIRE_DETAIL, int CT_NUM, int MEMBER_NUM, int PJ_NUM) {
		
		Require require = new Require();
		
		require.setREQUIRE_TITLE(REQUIRE_TITLE);
		require.setREQUIRE_LEVEL(REQUIRE_LEVEL);
		require.setREQUIRE_DETAIL(REQUIRE_DETAIL);
		require.setCT_NUM(CT_NUM);
		require.setMEMBER_NUM(MEMBER_NUM);
		require.setPJ_NUM(1);

		requireService.registRequire(require);
	
	 }
	 
	 
	 @RequestMapping("project/require_detail") 
	 public void showrequire_detail(Model model, int REQUIRE_NUM) {
		 Require require = requireService.getRequireByREQUIRE_NUM(REQUIRE_NUM);
		 model.addAttribute("require", require);
	 }
	 
	 
	 @RequestMapping("project/require_modify") 
	 public void showrequire_modify(int REQUIRE_NUM, Model model) {
		 Require require = requireService.getRequireByREQUIRE_NUM(REQUIRE_NUM);
		 model.addAttribute("require",require);
	 }
	 
	 
	 @ResponseBody
	 @PostMapping("project/dorequire_modify") 
	 public void showrequire_modify(String REQUIRE_TITLE, int REQUIRE_LEVEL, String REQUIRE_DETAIL, int REQUIRE_NUM) {
		
		Require require = requireService.getRequireByREQUIRE_NUM(REQUIRE_NUM);
				
		require.setREQUIRE_TITLE(REQUIRE_TITLE);
		require.setREQUIRE_LEVEL(REQUIRE_LEVEL);
		require.setREQUIRE_DETAIL(REQUIRE_DETAIL);
		

		requireService.modifyRequire(require);
	 }
	
	 @RequestMapping("project/require_delete")
	  public String showrequire_delete(int REQUIRE_NUM) {
		 
		 requireService.removeRequire(REQUIRE_NUM);
			
		 return "project/remove_success";
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	@RequestMapping("project/meetingbook")
	public String showmeetingbook(Model model, @RequestParam(defaultValue = "") Object PJ_NUM, @RequestParam(defaultValue = "MB_TITLE, MEMBER_NAME") String searchKeywordTypeCode, @RequestParam(defaultValue = "") String searchKeyword) {
		List<MeetingBook> meetingBookList = meetingBookService.getSearchMeetingbook(1, searchKeywordTypeCode, searchKeyword);
		
		model.addAttribute("meetingBookList", meetingBookList);
		
		return "project/meetingbook";
	}
	
	@ResponseBody
	@RequestMapping("project/meetingbook_regist") 
	public void showmeetingbook_regist(String MB_TITLE, String MB_CONTENT, int MEMBER_NUM, int PJ_NUM) {
		MeetingBook meetingBook = new MeetingBook();
		
		meetingBook.setMB_TITLE(MB_TITLE);
		meetingBook.setMB_CONTENT(MB_CONTENT);
		meetingBook.setMEMBER_NUM(MEMBER_NUM);
		meetingBook.setPJ_NUM(1);
		
		meetingBookService.registMeetingBook(meetingBook);
	}

	 @RequestMapping("project/meetingbook_detail") 
	 public void showmeetingbook_detail(Model model, int MB_NUM) {
		 MeetingBook meetingbook = meetingBookService.getMeetingBookByMB_NUM(MB_NUM);
		 model.addAttribute(meetingbook);
	 }
	 
	 @RequestMapping("project/meetingbook_modify") 
	 public void showmeetingbook_modify(int MB_NUM, Model model) {
		 MeetingBook meetingBook = meetingBookService.getMeetingBookByMB_NUM(MB_NUM);
		 model.addAttribute("meetingBook",meetingBook);
	 }
	 
	 
	 @ResponseBody
	 @PostMapping("project/domeetingbook_modify") 
	 public String showdomeetingBook_modify(String MB_TITLE, String MB_CONTENT, int MB_NUM) {
	
		MeetingBook meetingBook = meetingBookService.getMeetingBookByMB_NUM(MB_NUM);
				
		meetingBook.setMB_TITLE(MB_TITLE);
		meetingBook.setMB_CONTENT(MB_CONTENT);

		meetingBookService.modifyMeetingBook(meetingBook);
		
		return "ss";
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 @RequestMapping("project/issue") 
	 public String showissue(Model model) {
		 List<Issue> issueList = issueService.getIssueListByPJ_NUM(1);//pj_num넣기 레포지터리.xml 에 getIssueListByPJ_NUM 만들어서 여기 추가
		 model.addAttribute("issueList", issueList);
		 
		 return "project/issue";
		 
	 }
	 
	  @RequestMapping("project/issue_detail_TL") 
	  public void showissue_detail_TL() {
	  
	  }
	  
	  @RequestMapping("project/issue_detail") 
	  public void showissue_detail() {
	  
	  }
	 
	

}
