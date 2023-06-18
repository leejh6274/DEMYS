package com.ducks.demys.boot.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MeetingBook {
	
	private int MB_NUM;
	private String MB_TITLE;
	private String MB_CONTENT;
	private Date MB_REGDATE;
	private Date MB_UPDATEDATE;
	private int MEMBER_NUM;
	private int PJ_NUM;
	private String MEMBER_NAME;
<<<<<<< HEAD
	
	private MultipartFile uploadfile;
	
	private Mb_Attach mb_attach;
=======
<<<<<<< HEAD
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825

=======
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
}
