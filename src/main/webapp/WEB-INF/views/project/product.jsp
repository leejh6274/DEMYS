<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825

=======
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../common/head.jsp" %>
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f

<style>
/* p-main-body 고정 수정X, border만 씌워서 작업!! */
<<<<<<< HEAD
.p-main-body {
	margin-top: 5px;
	width: 100%;
	height: calc(930px - 65px - 63px);
	padding: 5px;
}

#modal1 {
=======
.p-main-body{
<<<<<<< HEAD
   margin-top:5px;
   width:100%;
   height: calc(930px - 65px - 63px); 
   padding:5px;
}

#modal1 {
   display: none;
   position: relative;
   width: 100%;
   height: 100%;
   z-index: 1;
=======
	margin-top:5px;
	width:100%;
	height: calc(930px - 65px - 63px); 
	padding:5px;
}

#modal1 {
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
	display: none;
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
<<<<<<< HEAD
=======
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
}

#modal1 h2 {
<<<<<<< HEAD
	margin: 0;
=======
<<<<<<< HEAD
   margin: 0;
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
}

#modal1 .modal_content {
	width: 800px;
	height: 500px;
	top: 50%;
	background: #fff;
	border: 2px solid #016fa0;
	left: 50%;
	transform: translate(-50%, -50%);
	position: fixed;
}

#modal1 .modal_layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}

.filebox {
	margin-top: 1.5rem;
	margin-left: 84px;
	position: relative;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
<<<<<<< HEAD
	display: inline-block;
	padding: 0.5em 0.75em;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	cursor: pointer;
	position: absolute;
	right: -10px;
=======
   display: inline-block;
=======
	margin: 0;
}

#modal1 .modal_content {
	width: 800px;
	height: 500px; 
	top: 50%; 
	background: #fff;
	border: 2px solid #016fa0;
	left: 50%;
	transform: translate(-50%, -50%);
	position: fixed;
}

#modal1 .modal_layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}

.filebox {
	margin-top: 1.5rem;
	margin-left: 84px;
	position: relative;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip:rect(0,0,0,0);
	border: 0;
}

.filebox label {
	display: inline-block;
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
    padding: 0.5em 0.75em;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    cursor: pointer;
    position: absolute;
    right: -10px;
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
}

/* named upload */
.filebox .upload-name {
<<<<<<< HEAD
	display: inline-block;
	padding: 9px;
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: 1px solid #aaa;
	width: 100%;
	background-color: white;
=======
<<<<<<< HEAD
   display: inline-block;
=======
	display: inline-block;
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
    padding: 9px;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border: 1px solid #aaa;
    width: 100%;
    background-color: white;
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
}

.btn-se {
	width: 130px;
	min-height: 1rem;
	border: none;
	color: #ffffff;
	background-color: #153A66;
	height: 30px;
}

.btn-se:hover {
	background-color: #016FA0;
}
</style>

<<<<<<< HEAD
=======
<link rel="stylesheet" href="/resource/css/project/list.css" />
<link rel="stylesheet" href="/resource/css/project/phead.css" />
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
<!-- 요구사항리스트.css -->
<link rel="stylesheet" href="/resource/css/require/list.css" />


<<<<<<< HEAD

=======
<<<<<<< HEAD
      
=======
<div class="project-part">

   <div class="p-sidbar">
      <div class="p-bt">
         <div class="p-regist">
            <button class="p-rg-bt">
               <i class="fa-regular fa-square-plus"></i>
               프로젝트등록
            </button>
            <div class="p-inend">
               <button class="p-inpro">진행중 </button>
               <button class="p-end">완료 </button>
            </div>
            <div class="p-check">
               <div style="padding-top:3px;">
                 <label class="cursor-pointer label">
                   <input type="checkbox" checked="checked" class="checkbox checkbox-info" />
                   <span class="label-text">&nbsp;전체 프로젝트</span>
                 </label>
               </div>
               <div class="w-42">
                  <select class="select w-full max-w-xs">
                       <option disabled selected>프로젝트명</option>
                       <option>프로젝트명</option>
                       <option>업체명</option>
                  </select>
               </div>
            </div>
         </div>
         <div class="p-searchbar">
            <input type="text" placeholder="검색어를 입력하세요." class="input input-bordered" style="width:85%;"/>
            <i class="fa-solid fa-magnifying-glass" style="font-size:30px;width:15%;display:flex;align-items: center;justify-content: space-around;"></i>
         </div>
         
      </div>
      <div class="p-list">
          <c:forEach begin="0" end="4" step="1" >
             <div class="p-list-box">
               <div style="border-bottom:1px solid #797979;">
                  <div class="ellipsis p-list-title">
                     <span style="color:red;font-size:20px;"><i class="fa-sharp fa-solid fa-flag"></i></span>
                     <span >프로젝트제목들어가야함계속길게적는중</span>
                  </div>
                  <div class="p-list-date">
                     <span>2023.05.02 ~ </span>
                     <span> 2023.07.02</span>
                  </div>
               </div>
               <div class="p-list-box-bottom">
                  <span style="font-size:15px;">(주)오싸거</span>
                  <span class="p-list-issu">이슈 3</span>
               </div>
            </div>
         </c:forEach>
      
         <div class="p-list-pagination">
         
         </div>
         
      </div>
   
   </div>
    <div class="p-body">
      <div class="p-body-header">
           <div class="p-main-title">
              <div>
                 <i class="fa-solid fa-flag ml-6" style="color:red;"></i> 
                  <span class="p-main-title-sty">정보통신 연구개발사업($프로젝트명)</span>
              </div>
               <div class="p-main-reg-date">등록일 : 2023.05.09</div>
           </div>
           
            <div class="p-body-header-1">
               <div style="display: flex;">
                  <div class="header-1-menu" ><a href="require" style="width:100%;">프로젝트관리</a></div> |
                  <div class="header-1-menu"><a href="#" style="width:100%;">단위업무</a></div> |
                  <div class="header-1-menu"><a href="issue" style="width:100%;">이슈관리</a></div> |
                  <div class="header-1-menu"><a href="#" style="width:100%;">예산수립</a></div> |
                  <div class="header-1-menu"><a href="meetingbook" style="width:100%;">회의록</a></div> |
                  <div class="header-1-menu" style="font-weight:bold; font-size:20px;"><a onclick="javascript:showList(1,0,'','');" style="cursor:pointer; width:100%;">산출물관리 &nbsp;</a></div>
               </div>
            </div>
      </div> 
      
      <!-- project작업공간 -->
      <div class="p-main-body">
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
      
            <div class="p-body-cont">
               <div class="header-2-menu0">
                  <div class="p-body-header-2">
                     <div style="display:flex;margin-top:5px;height:25px;">
<<<<<<< HEAD
                        |<div class="header-2-menu"><a onclick="javascript:showList('${PJ_NUM}',1,'','');" style="cursor:pointer; width:100%; text-align:center;">분 석</a></div> |          <!-- showList(PJ_NUM,1) -->
                        <div class="header-2-menu"><a onclick="javascript:showList('${PJ_NUM}',2,'','');" style="cursor:pointer; width:100%; text-align:center;">설 계</a></div> |
                        <div class="header-2-menu"><a onclick="javascript:showList('${PJ_NUM}',3,'','');" style="cursor:pointer; width:100%; text-align:center;">구 현</a></div> |
                        <div class="header-2-menu"><a onclick="javascript:showList('${PJ_NUM}',4,'','');" style="cursor:pointer; width:100%; text-align:center;">시 험</a></div> |
=======
                        |<div class="header-2-menu"><a onclick="javascript:showList(1,1,'','');" style="cursor:pointer; width:100%; text-align:center;">분 석</a></div> |          <!-- showList(PJ_NUM,1) -->
                        <div class="header-2-menu"><a onclick="javascript:showList(1,2,'','');" style="cursor:pointer; width:100%; text-align:center;">설 계</a></div> |
                        <div class="header-2-menu"><a onclick="javascript:showList(1,3,'','');" style="cursor:pointer; width:100%; text-align:center;">구 현</a></div> |
                        <div class="header-2-menu"><a onclick="javascript:showList(1,4,'','');" style="cursor:pointer; width:100%; text-align:center;">시 험</a></div> |
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
                     </div>
                  </div>
               </div>
               
                <div class="rq-title">
<<<<<<< HEAD
                     <div class="flex" style="justify-content:space-between;">
                  <select class="w-24 h-8 mr-2 text-center" style="border:1px solid #aaaaaa;">
                      <option value="select" selected>선택</option>
                      <option value="title">제목</option>
                      <option value="writer">작성자</option>
                  </select>
         
                  <input type="text" placeholder="검색어를 입력하세요." class="input input-bordered" style="width:200px; float:right; background-color:#e7e7e7; border-radius:0px; height:2rem;"/>
                  <button onclick=""><i class="fa-solid fa-magnifying-glass ml-2" style="font-size:25px; width:20px; color:#e7e7e7; line-height:30px;"></i></button>                  
               </div>
               
                   <div>
                        <button id="modal_opne_btn" class="rq-regi-bt btn btn-se">등록</button>
                    </div>
                 </div>
=======
                  	<div class="flex" style="justify-content:space-between;">
                  	
                  	
                  	
                  		<form class="flex">
  							<select id="searchKeywordTypeCode" name="searchKeywordTypeCode" data-value="${param.searchKeywordTypeCode}" id="" class="w-24 h-8 mr-1 text-center" style="border:1px solid #aaa;">
								<option disabled="disabled">선택</option>
								<option value="PRODUCT_TITLE">제목</option>
								<option value="PRODUCT_CONTENT">내용</option>
  							</select>
  							<input id="searchKeyword" name="searchKeyword" type="text" class="input input-bordered" style="width:200px; float:right; background-color:#e7e7e7; border-radius:0px; height:2rem;" placeholder="검색어를 입력하세요." maxlength="20" value="${param.searchKeyword}" 
  							onkeyup="if(window.event.keyCode==13){showList(1,$('#gubunValue').val(),$('#searchKeywordTypeCode').val(),$('#searchKeyword').val())}"/>
  							<button type="button" onclick="javascript:showList(1,$('#gubunValue').val(),$('#searchKeywordTypeCode').val(),$('#searchKeyword').val())"><i class="fa-solid fa-magnifying-glass ml-2" style="font-size:25px; width:20px; color:#e7e7e7; line-height:30px;"></i></button>
  						</form>			               <!--   1,1,$('#searchKeywordTypeCode').val(),$('#searchKeyword').val()) 를 PJ_NUM, PRODUCT_STEP-->
  						
  						
  						
						<!-- <select class="w-24 h-8 mr-2 text-center" style="border:1px solid #aaaaaa;">
	    					<option value="select" selected>선택</option>
	    					<option value="title">제목</option>
	    					<option value="writer">작성자</option>
						</select>
			
						<input type="text" placeholder="검색어를 입력하세요." class="input input-bordered" style="width:200px; float:right; background-color:#e7e7e7; border-radius:0px; height:2rem;"/>
						<button onclick=""><i class="fa-solid fa-magnifying-glass ml-2" style="font-size:25px; width:20px; color:#e7e7e7; line-height:30px;"></i></button> -->						
					</div>
             		<div>
                        <button id="modal_opne_btn" class="rq-regi-bt btn btn-se">등록</button>
                    </div>
           		</div>
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
                <!-- 산출물  -->
                
                <div class="rq-list">
                     <table>
                        <thead>
<<<<<<< HEAD
                           <tr style="width:100%;">
                              <th style="width:10%;">No</th>
                              <th style="width:50%; text-align:center;">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
                              <th style="width:5%;">첨&nbsp;부&nbsp;파&nbsp;일</th>
                              <th style="width:15%;">작&nbsp;성&nbsp;자</th>
                              <th style="width:10%;">등&nbsp;록&nbsp;일</th>
                              <th style="width:10%;">사&nbsp;용&nbsp;여&nbsp;부</th>
                           </tr>
                         </thead>
                         <tbody id="PD-LIST" style="height: 45px; overflow-y:auto; overflow-x:hidden;">
                           <input type="hidden" id="gubunValue"/>
                           
                           
                           </tbody>
                       </table>
                   </div>
                </div>
            
             <!-- 등록모달 -->
      <div id="modal1">
      
      
         <!-- 제목, 개발단계 -->
         <div class="modal_content">
            <div class="flex card-body" style="padding-bottom:0px;">
               <div class="navbar text-neutral-content" style="width: 100%; padding: 0px; min-height: 1rem; height: 30px; border-bottom:3px solid #016fa0;">
                  <div class="text-black mb-3" style="font-weight: bold; font-size: 1.5rem; ">
                     산출물 등록
                     <input type="hidden" name="status" value="0" />
                     <input type="hidden" name="pjnum" value="${PJ_NUM }" />   <%-- 나중에 value="${projects.pj_num }" --%>
                     <input type="hidden" name="membernum" value="${member.MEMBER_NUM }" />    <!-- loginedUser -->
                  </div>
               </div>
            </div>

            <div class="container flex flex-col card-body" style="padding-top:10px; padding-bottom:10px;">
               <div class="flex">
                  <input type="text" placeholder="제목을 입력하세요." class="input" name="title" style="border:1px solid #aaaaaa; border-radius:0px; width:638px; justify-content:space-between;">
                  <select class="w-24 h-8 text-center" style="height:48px; border:1px solid #aaaaaa; border-left:0px;" name="step">
                        <option value="step" selected>개발 단계</option>
                        <option value="1">분&nbsp;&nbsp;석</option>
                        <option value="2">설&nbsp;&nbsp;계</option>
                        <option value="3">구&nbsp;&nbsp;현</option>
                        <option value="4">시&nbsp;&nbsp;험</option>
                  </select>
               </div>
               
               <!-- 내용 -->   
               <textarea class="textarea" name="content" id="content" class="form-control" style="height:250px;width:100%; resize:none; border:1px solid #aaaaaa; border-radius:0px;" placeholder="내용을 작성하세요."></textarea>
               
               <!-- 첨부파일 -->
               <div class="filebox bs3-primary w-full" style="margin:0 0">
                  <input class="upload-name" value="첨부파일을 등록하세요" disabled="disabled" style="color:#aaa;">
                     <label for="ex_filename">
                        <i class="fa-sharp fa-solid fa-paperclip text-2xl text-black mr-3 " ></i>                       
                     </label>
                  <input type="file" id="ex_filename" class="upload-hidden">
               </div>
            </div>
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825

<div class="p-body-cont">
		<div class="header-2-menu0">
				<div class="p-body-header-2">
						<div style="display: flex; margin-top: 5px; height: 25px;">
								|
								<div class="header-2-menu">
										<a onclick="javascript:showList('${PJ_NUM}',1,'','');"
												style="cursor: pointer; width: 100%; text-align: center;">분 석</a>
								</div>
								|
								<!-- showList(PJ_NUM,1) -->
								<div class="header-2-menu">
										<a onclick="javascript:showList('${PJ_NUM}',2,'','');"
												style="cursor: pointer; width: 100%; text-align: center;">설 계</a>
								</div>
								|
								<div class="header-2-menu">
										<a onclick="javascript:showList('${PJ_NUM}',3,'','');"
												style="cursor: pointer; width: 100%; text-align: center;">구 현</a>
								</div>
								|
								<div class="header-2-menu">
										<a onclick="javascript:showList('${PJ_NUM}',4,'','');"
												style="cursor: pointer; width: 100%; text-align: center;">시 험</a>
								</div>
								|
						</div>
				</div>
		</div>

		<div class="rq-title">
				<div class="flex" style="justify-content: space-between;">
						<select class="w-24 h-8 mr-2 text-center" style="border: 1px solid #aaaaaa;">
								<option value="select" selected>선택</option>
								<option value="title">제목</option>
								<option value="writer">작성자</option>
						</select>

<<<<<<< HEAD
						<input type="text" placeholder="검색어를 입력하세요." class="input input-bordered"
								style="width: 200px; float: right; background-color: #e7e7e7; border-radius: 0px; height: 2rem;" />
						<button onclick="">
								<i class="fa-solid fa-magnifying-glass ml-2"
										style="font-size: 25px; width: 20px; color: #e7e7e7; line-height: 30px;"></i>
						</button>
				</div>

				<div>
						<button id="modal_opne_btn" class="rq-regi-bt btn btn-se">등록</button>
				</div>
		</div>
		<!-- 산출물  -->

		<div class="rq-list">
				<table>
						<thead>
								<tr style="width: 100%;">
										<th style="width: 10%;">No</th>
										<th style="width: 50%; text-align: center;">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
										<th style="width: 5%;">첨&nbsp;부&nbsp;파&nbsp;일</th>
										<th style="width: 15%;">작&nbsp;성&nbsp;자</th>
										<th style="width: 10%;">등&nbsp;록&nbsp;일</th>
										<th style="width: 10%;">사&nbsp;용&nbsp;여&nbsp;부</th>
								</tr>
						</thead>
						<tbody id="PD-LIST" style="height: 45px; overflow-y: auto; overflow-x: hidden;">
								<input type="hidden" id="gubunValue" />


						</tbody>
				</table>
		</div>
</div>

<!-- 등록모달 -->
<div id="modal1">


		<!-- 제목, 개발단계 -->
		<div class="modal_content">
				<div class="flex card-body" style="padding-bottom: 0px;">
						<div class="navbar text-neutral-content"
								style="width: 100%; padding: 0px; min-height: 1rem; height: 30px; border-bottom: 3px solid #016fa0;">
								<div class="text-black mb-3" style="font-weight: bold; font-size: 1.5rem;">
										산출물 등록
										
								</div>
						</div>
				</div>

				<form role="regist_form" enctype="multipart/form-data">
						<div class="container flex flex-col card-body" style="padding-top: 10px; padding-bottom: 10px;">
								<div class="flex">
										<input type="text" placeholder="제목을 입력하세요." class="input" name="PRODUCT_TITLE"
												style="border: 1px solid #aaaaaa; border-radius: 0px; width: 638px; justify-content: space-between;">
										<select class="w-24 h-8 text-center" style="height: 48px; border: 1px solid #aaaaaa; border-left: 0px;"
												name="PRODUCT_STEP">
												<option value="step" selected>개발 단계</option>
												<option value="1">분&nbsp;&nbsp;석</option>
												<option value="2">설&nbsp;&nbsp;계</option>
												<option value="3">구&nbsp;&nbsp;현</option>
												<option value="4">시&nbsp;&nbsp;험</option>
										</select>
										<input type="hidden" name="PRODUCT_STATUS" value="0" />
										<input type="hidden" name="PJ_NUM" value="${PJ_NUM }" />
										<%-- 나중에 value="${projects.pj_num }" --%>
										<input type="hidden" name="MEMBER_NUM" value="${member.MEMBER_NUM }" />
										<!-- loginedUser -->
								</div>

								<!-- 내용 -->
								<textarea class="textarea" name="PRODUCT_CONTENT" id="content" class="form-control"
										style="height: 250px; width: 100%; resize: none; border: 1px solid #aaaaaa; border-radius: 0px;"
										placeholder="내용을 작성하세요."></textarea>

								<!-- 첨부파일 -->
								<div class="filebox bs3-primary w-full" style="margin: 0 0">
										<input class="upload-name" value="첨부파일을 등록하세요" disabled="disabled" style="color: #aaa;">
										<label for="ex_filename">
												<i class="fa-sharp fa-solid fa-paperclip fa-flip-vertical text-2xl text-black mr-3 "></i>
										</label>
										<input type="file" id="ex_filename" class="upload-hidden" name="uploadfile">
								</div>
						</div>
				</form>
				<div style="display: flex; justify-content: center;">
						<button class="btn btn-se" onclick="regist_go();"
								style="font-size: 20px; width: 100px; height: 40px; border-radius: 8px; margin-right: 10px;">저장</button>
						<button class="btn btn-se" id="modal_close_btn"
								style="font-size: 20px; width: 100px; height: 40px; border-radius: 8px;">취소</button>
				</div>
		</div>

		<div class="modal_layer"></div>
</div>

<%@ include file="pdhandle.jsp"%>
=======
=======
                        	<tr style="width:100%;">
                        		<th style="width:10%;">No</th>
                        		<th style="width:50%; text-align:center;">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
                        		<th style="width:5%;">첨&nbsp;부&nbsp;파&nbsp;일</th>
                        		<th style="width:15%;">작&nbsp;성&nbsp;자</th>
                        		<th style="width:10%;">등&nbsp;록&nbsp;일</th>
                        		<th style="width:10%;">사&nbsp;용&nbsp;여&nbsp;부</th>
                     		</tr>
                      	</thead>
                      	<tbody id="PD-LIST" style="height: 45px; overflow-y:auto; overflow-x:hidden;">
                        	<input type="hidden" id="gubunValue"/>
                        	
                        	
                        	</tbody>
                    	</table>
                	</div>
             	</div>
             </div>
             
             <!-- 등록모달 -->
		<div id="modal1">
		
		
			<!-- 제목, 개발단계 -->
			<div class="modal_content">
				<div class="flex card-body" style="padding-bottom:0px;">
					<div class="navbar text-neutral-content" style="width: 100%; padding: 0px; min-height: 1rem; height: 30px; border-bottom:3px solid #016fa0;">
						<div class="text-black mb-3" style="font-weight: bold; font-size: 1.5rem; ">
							산출물 등록
							<input type="hidden" name="status" value="0" />
							<input type="hidden" name="pjnum" value="1" />   <%-- 나중에 value="${projects.pj_num }" --%>
							<input type="hidden" name="membernum" value="3" />    <!-- loginedUser -->
						</div>
					</div>
				</div>

				<div class="container flex flex-col card-body" style="padding-top:10px; padding-bottom:10px;">
					<div class="flex">
						<input type="text" placeholder="제목을 입력하세요." class="input" name="title" style="border:1px solid #aaaaaa; border-radius:0px; width:638px; justify-content:space-between;">
						<select class="w-24 h-8 text-center" style="height:48px; border:1px solid #aaaaaa; border-left:0px;" name="step">
			   				<option value="step" selected>개발 단계</option>
		   					<option value="1">분&nbsp;&nbsp;석</option>
		   					<option value="2">설&nbsp;&nbsp;계</option>
		   					<option value="3">구&nbsp;&nbsp;현</option>
		   					<option value="4">시&nbsp;&nbsp;험</option>
						</select>
					</div>
					
					<!-- 내용 -->	
					<textarea class="textarea" name="content" id="content" class="form-control" style="height:250px;width:100%; resize:none; border:1px solid #aaaaaa; border-radius:0px;" placeholder="내용을 작성하세요."></textarea>
					
					<!-- 첨부파일 -->
					<div class="filebox bs3-primary w-full" style="margin:0 0">
						<input class="upload-name" value="첨부파일을 등록하세요" disabled="disabled" style="color:#aaa;">
							<label for="ex_filename">
								<i class="fa-sharp fa-solid fa-paperclip fa-flip-vertical text-2xl text-black mr-3 " ></i>							  
							</label>
						<input type="file" id="ex_filename" class="upload-hidden">
					</div>
				</div>

				<div style="display:flex; justify-content:center;">
					<button class="btn btn-se" onclick="regist_go();" style="font-size: 20px; width: 100px; height: 40px; border-radius: 8px; margin-right: 10px;">저장</button>
					<button class="btn btn-se" id="modal_close_btn" style="font-size: 20px; width: 100px; height: 40px; border-radius: 8px;">취소</button>
				</div>
			</div>

		<div class="modal_layer"></div>
	</div>
</div>
</div>
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
<%@ include file="pdhandle.jsp" %>
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825


<script>

<<<<<<< HEAD
      function regist_go(){
         /* var title = $("input[name=PRODUCT_TITLE]").val();
         var step = parseInt($("select[name=PRODUCT_STEP]").val());
         var content = $("textarea[name=PRODUCT_CONTENT]").val();
         var status = parseInt($("input[name=PRODUCT_STATUS]").val());
         var membernum = $("input[name=MEMBER_NUM]").val();
         var pjnum = $("input[name=PJ_NUM]").val();
         var pdat = $("input[name=uploadfile]").val();
         
         
         var data={
               "PRODUCT_TITLE":title,
               "PRODUCT_STEP":step,
               "PRODUCT_CONTENT":content,
               "PRODUCT_STATUS":status,
               "MEMBER_NUM":membernum,
               "PJ_NUM":pjnum,
               "uploadfile":pdat
         }
          */
          
         var form = $("form[role='regist_form']")[0];
         
        var formData = new FormData(form);
         
         console.log(formData);
         
         
         $.ajax({
            url:"<%=request.getContextPath()%>/project/product_regist",
			type : "post",
			data : formData,
			processData : false,
			contentType : false,
			success : function() {
				alert("등록되었습니다.");
				PRODUCT_go();
			},
			error : function() {
				alert('등록에 실패하였습니다.');
			}
		});
	}

	document.getElementById("modal_opne_btn").onclick = function() {
		document.getElementById("modal1").style.display = "block";
	}

	document.getElementById("modal_close_btn").onclick = function() {
		document.getElementById("modal1").style.display = "none";
	}

	document.getElementsByClassName("modal2_opne_btn").onclick = function() {
		document.getElementById("modal2").style.display = "block";
	}
	document.getElementsByClassName("modal2_close_btn").onclick = function() {
		document.getElementById("modal2").style.display = "none";
	}

<<<<<<< HEAD
	$(document).ready(
			function() {
				var fileTarget = $('.filebox .upload-hidden');

				fileTarget.on('change', function() {
					if (window.FileReader) {
						var filename = $(this)[0].files[0].name;
					} else {
						var filename = $(this).val().split('/').pop().split(
								'\\').pop();
					}

					$(this).siblings('.upload-name').val(filename);
				});
			});
</script>
=======
                    $(this).siblings('.upload-name').val(filename);
                });
            }); 
         
         
   </script>
                
=======
		function regist_go(){
			var title = $("input[name=title]").val();
			var step = $("select[name=step]").val();
			var content = $("textarea[name=content]").val();
			var status = $("input[name=status]").val();
			var membernum = $("input[name=membernum]").val();
			var pjnum = $("input[name=pjnum]").val();
			
			
			var data={
					"PRODUCT_TITLE":title,
					"PRODUCT_STEP":step,
					"PRODUCT_CONTENT":content,
					"PRODUCT_STATUS":status,
					"MEMBER_NUM":membernum,
					"PJ_NUM":pjnum
			}
			$.ajax({
				url:"<%=request.getContextPath()%>/project/product_regist",
				type:"post",
				data:data,
				success:function(){
					alert("등록되었습니다.");
					history.go();
				},
				error:function(){
					alert('왜안됨?');
				}
			});
		}

			document.getElementById("modal_opne_btn").onclick = function() {
				document.getElementById("modal1").style.display = "block";
			}

			document.getElementById("modal_close_btn").onclick = function() {
				document.getElementById("modal1").style.display = "none";
			}
			
			document.getElementsByClassName("modal2_opne_btn").onclick = function() {
				document.getElementsByClassName("modal2").style.display = "block";
			}
			document.getElementsByClassName("modal2_close_btn").onclick = function() {
				document.getElementsByClassName("modal2").style.display = "none";
			}
			
			$(document).ready(function(){
				  var fileTarget = $('.filebox .upload-hidden');

				    fileTarget.on('change', function(){
				        if(window.FileReader){
				            var filename = $(this)[0].files[0].name;
				        } else {
				            var filename = $(this).val().split('/').pop().split('\\').pop();
				        }

				        $(this).siblings('.upload-name').val(filename);
				    });
				}); 
			
			
	</script>
                
>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
>>>>>>> 088cef3349305dff024cd3c2781fc2759c434825
