package com.ducks.demys.boot.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Issue {
<<<<<<< HEAD
   
   private int ISSUE_NUM;
   private String ISSUE_TITLE;
   private String ISSUE_CONTENT;
   private int ISSUE_IMP;
   private int ISSUE_STATUS;
   private Date ISSUE_REGDATE;
   private String STRING_REGDATE;
   private Date ISSUE_UPDATEDATE;
   private String STRING_UPDATEDATE;
   private Date ISSUE_DEADLINE;
   private String STRING_DEADLINE;
   private Date ISSUE_ENDDATE;
   private int MEMBER_NUM;
   private int PJ_NUM;
   private String MEMBER_NAME;
   private String PJ_NAME;
   private String CT_NAME;
   private int ISSUEREPLY_COUNT;
   private int MYISSUE;
   private String SORT;
   private String MEMBER_ID;
<<<<<<< HEAD
   private String MEMBER_NUM_LIST;
=======
   private String memberList;
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
   private List<Issue_Tag> tagList;
   
   private MultipartFile uploadfile;
	
   private Issue_Attach issue_attach;
   

}
=======
	
	private int ISSUE_NUM;
	private String ISSUE_TITLE;
	private String ISSUE_CONTENT;
	private int ISSUE_IMP;
	private int ISSUE_STATUS;
	private Date ISSUE_REGDATE;
	private Date ISSUE_UPDATEDATE;
	private Date ISSUE_DEADLINE;
	private Date ISSUE_ENDDATE;
	private int MEMBER_NUM;
	private int PJ_NUM;
	private String MEMBER_NAME;
}
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
