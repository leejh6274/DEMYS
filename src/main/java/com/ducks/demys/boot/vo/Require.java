package com.ducks.demys.boot.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Require {
	
	private int REQUIRE_NUM;
	private int REQUIRE_LEVEL;
	private String REQUIRE_TITLE;
	private String REQUIRE_DETAIL;
	private Date REQUIRE_REGDATE;
	private int MEMBER_NUM;
	private int PJ_NUM;
	private int CT_NUM;
	private String MEMBER_NAME;
<<<<<<< HEAD

<<<<<<< HEAD
	private MultipartFile uploadfile;
	
	private Require_Attach require_attach;
=======
=======
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
}
