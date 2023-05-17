package com.ducks.demys.boot.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Product {
	
	private int PRODUCT_NUM;
	private int PRODUCT_STEP;
	private String PRODUCT_TITLE;
	private String PRODUCT_CONTENT;
	private int PRODUCT_STATUS;
	private Date PRODUCT_REGDATE;
	private Date PRODUCT_UPDATEDATE;
	private int MEMBER_NUM;
	private int PJ_NUM;

}
