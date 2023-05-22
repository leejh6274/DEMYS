<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>    
<script type="text/x-handlebars-template"  id="product-list-template" >
{{#each .}}
	<tr class="productcard">
		<td onclick="window.open('product_detail?PRODUCT_NUM={{product_NUM}}','산출물 상세','width=900px,height=480px,left=500px,top=300px');">{{product_NUM }}</td>
		<td onclick="window.open('product_detail?PRODUCT_NUM={{product_NUM}}','산출물 상세','width=900px,height=480px,left=500px,top=300px');" style="text-align:start">{{product_TITLE }}</td>
		<td><i class="fa-sharp fa-solid fa-paperclip text-2xl"></i></td>
		<td>{{member_NAME }}</td>
		<td>{{prettifyDate product_REGDATE }}</td>
		<td>
			<div class="rounded-lg w-12 text-white" style="margin:0 auto; background-color:#dfdfdf">
				{{#if product_STATUS }}
					<button id="approveBtn" class="btn btn-outline" onclick="javascript:status_on({{product_TL.PRODUCT_NUM}}, 1)">채&nbsp;&nbsp;택</button>
				{{else }}
					<button id="approveBtn" class="btn btn-outline" onclick="javascript:status_on({{product_TL.PRODUCT_NUM}}, 0)">미채택</button>
				{{/if }}
			</div>
		</td>
	</tr>
{{/each }}
</script>

                        		
<script>
Handlebars.registerHelper({
	"prettifyDate":function(timeValue){ //Handlbars에 날짜출력함수 등록
		var dateObj=new Date(timeValue);
		var year=dateObj.getFullYear();
		var month=dateObj.getMonth()+1;
		var date=dateObj.getDate();
		return year+"-"+month+"-"+date;
	}
});
</script>

<script>
function printData(productArr,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(productArr);	
	$('.productcard').remove();
	target.append(html);
}

window.onload=function(){
	showList(1,0,'','');
}

function showList(PJ_NUM,PRODUCT_STEP,searchType,keyword){
	
	var data={
			"pj_NUM":PJ_NUM,
			"product_STEP":PRODUCT_STEP,
			"searchType":searchType,
			"keyword":keyword
	}
	console.log(data);
	$.ajax({
		url:"<%=request.getContextPath()%>/project/productList",
		type:"post",
		data:JSON.stringify(data),		
		contentType:'application/json',
		success:function(data){
			printData(data,$('#PD-LIST'),$('#product-list-template'));
			$('#gubunValue').val(PRODUCT_STEP);
		}
	});
}

function status_on(PRODUCT_NUM, PRODUCT_STATUS){
	
	var data = {
			product_num: PRODUCT_NUM,
			product_status: PRODUCT_STATUS
	}
	
	$.ajax({
	      url:"<%=request.getContextPath()%>/project/PDstatusChange",
	      type:"post",
	      data: data,
	      dataType: "json",
	      success:function(result){
	    	  console.log(result)
	    	  
	    	  if (result.status === 1) {
	    		  $('#approveBtn').css('background-color', 'blue');
	    		  
					  	  
	    	  } else {
	    		  $('#approveBtn').css('background-color', 'red');
			         
	    	  }
	    	  
	    	 
	      },
	      error: function(error){
	    	 console.log(error)
	      }
	   });
}

/* window.onload=function(){
	getPage(1);	
} */

</script>