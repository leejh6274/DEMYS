package com.ducks.demys.boot.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
<<<<<<< HEAD
@NoArgsConstructor
@AllArgsConstructor
=======
@ToString
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
public class Member {
	
	private int MEMBER_NUM;
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_NAME;
	private String MEMBER_PIC;
	private String MEMBER_PHONE;
	private String MEMBER_EMAIL;
	private Date REGDATE;
	private Date QUITDATE;
	private Date UPDATEDATE;
	private int MEMBER_AUTHORITY;
	private String MEMBER_DEP;
	private int MEMBER_STATUS;
	private int MEMBER_POSITION;
<<<<<<< HEAD
	private String CONFIRMPASSWORD;
	private String NEWPASSWORD;
	private String VERTIFICATION_CODE;
=======
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
	
}
