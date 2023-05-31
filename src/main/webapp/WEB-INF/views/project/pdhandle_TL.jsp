<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/x-handlebars-template"  id="producttl-list-template" >
{{#each .}}
   <tr class="producttl_card">
       <td onclick="window.open('product_detail?PRODUCT_NUM={{product_NUM}}','산출물 상세','width=900px,height=480px,left=500px,top=300px');">{{product_NUM}}</td>
        <td onclick="window.open('product_detail?PRODUCT_NUM={{product_NUM}}','산출물 상세','width=900px,height=480px,left=500px,top=300px');" style="text-align:start; cursor:pointer;">{{product_TITLE}}</td>
        <td><i class="fa-sharp fa-solid fa-paperclip text-2xl"></i></td>
        <td>{{member_NAME }}</td>
        <td>{{prettifyDate product_REGDATE }}</td>
        <td class="flex items-align justify-center">
          <button id="approveBtn" style="width:70px; font-size:10px;" class="btn btn-outline" onclick="javascript:status_on({{product_NUM}}, 1)">채&nbsp;&nbsp;택</button>
           <button id="approveBtn" style="width:70px; font-size:5px; margin-left:5px;" class="btn btn-outline" onclick="javascript:status_on({{product_NUM}}, 0)">미채택</button>
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
   $('.producttl_card').remove();
   target.append(html);
}



$(document).ready(function() {
   showList(${PJ_NUM},0,'','');
});


function showList(PJ_NUM,PRODUCT_STEP,searchType,keyword){

   var data={
         "pj_NUM":PJ_NUM,
         "product_STEP":PRODUCT_STEP,
         "searchType":searchType,
         "keyword":keyword
   }

   $.ajax({
      url:"<%=request.getContextPath()%>/project/productList",
      type:"post",
      data:JSON.stringify(data),      
      contentType:'application/json',
      success:function(data){
         console.log("성공");
         console.log(data);
         printData(data,$('#PD-LIST'),$('#producttl-list-template'));
         $('#gubunValue').val(PRODUCT_STEP);
         /* $("#p-main-bodys").html(data); */
      }
   });
}

/* window.onload=function(){
   onsole.log('${PJ_NUM}');
   console.log(${PJ_NUM});
   test_fun();
   showList(${PJ_NUM},0,'','');
}    */
/* window.onload=function(){
   getPage(1);   
} */

</script>