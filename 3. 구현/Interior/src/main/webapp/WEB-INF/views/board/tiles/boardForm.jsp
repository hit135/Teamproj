<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/smarteditor2/js/HuskyEZCreator.js"></script>

<script type="text/javascript">
$("#id_btn_new_file").click(function() {
	$(".file_area").append(
		'<div class="file_div">'
			+'<input type="file" name="boFiles">'
			+'<button type="button" class="btn_delete">삭제</button>'
		+'</div>'
	)
});

$(".file_area").on("click", ".btn_delete", function() {
	$(this).closest('div').remove();
});

</script>

<style>
.intro_bg {
width:100%;
height:200px;
}

h1 {
color:black;
}

.contents {
height:800px;


}
.content01 {
height:100%;


}

.btn_delete{
	float: right;
}

.td_right{
	width:600px;
}

#editorTxt{
	width: 595px;
}

</style>
    <div class="intro_bg">
        <div class="intro_text">
            <h1>자랑 게시판</h1>
        </div>
    </div>
    <!-- intro_bg e -->

    <!-- 전체 영역잡기 -->
    <div class="contents">
        <!-- 사용할 영역잡기 -->
        <div class="content01">
            <!-- 입력양식 -->
          	<form:form id="boardForm"
          		  action="${pageContext.request.contextPath }/boardWrite"
          		  method="post"
          	 	  modelAttribute="Board"
          		  enctype="multipart/form-data"
          		  onsubmit="return fn_checkForm()"
          	>
          	<div id="div_table">
          		<table>
          			<colgroup>
	          			<col width="200">
	                 <col width="400">
                  </colgroup>
                  <tr>
                  	<td class="td_left">제목</td>
                  	<td class="td_right">
							<form:input path="boastTitle"/>      
                  	</td>
                  </tr>
                  <tr>
                  	<td class="td_left">작성자</td>
                     <td class="td_right">
                     	<input type="hidden" name="boastWriter" value="${memberVO.memberId}" >
                            <!-- 세션에서 정보 취득 -->
                         <c:out value="${memberVO.memberId}"/> 
                     </td>
                  </tr>
          			 <tr>
                              <td class="td_left">내용</td>
                              <td class="td_right">
								 	  		
								 	  		<textarea 
								 	  				name="boastContent" 
								 	  				id="editorTxt" 
								 	  				rows="20" 
								 	  				cols="10"
								 	  				placeholder="내용을 입력해주세요."
								 	  				></textarea>
								 	  				
                                  <form:errors path="boastContent"/>
                              </td>
                          </tr>
                           <tr>
                        		<td class="td_left">첨부파일
                        			<button type="button" id="id_btn_new_file">추가</button>
                        		</td>
                        		<td class="td_right file_area">
                        			<div class="file_div">
                        				<input type="file" name="boFiles">
                        				<button type="button" class="btn_delete">삭제</button>
                        			</div>
                        		</td>
                          </tr>
          				</table>
          			</div>
          			<!-- 버튼 -->
  					<div class="div_button">
                      <input type="button" onclick="location.href='${pageContext.request.contextPath}/boardList'" value="목록">
                      <input type="submit" value="등록">
                  </div>          	
	          	</form:form>
		    </div>
    	</div>
    	
 <script type="text/javascript">
/* smart editor 적용 */
let oEditors = [];
smartEditor = function() {
  console.log("Naver SmartEditor")
  nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "editorTxt",
    sSkinURI: "${pageContext.request.contextPath }/smarteditor2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
  })
}

/* 사이트 켜질때 smarteditor 적용함수 실행 */
$(document).ready(function() {
  smartEditor();
});


function fn_checkForm(){
	console.log("fn_checkForm");
	//textarea의 값을 가져오기 위해서는 UPDATE_CONTENTS_FIELD 메시지를 호출해주어야 한다.	
	oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []); 
	let content = document.getElementById("editorTxt").value
	
	if( content == ""  || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>')  { 
		alert("내용을 입력해주세요");
		oEditors.getById["editorTxt"].exec("FOCUS");
		return false;
		
	}else{
		let result = confirm("전송할까요?");
		if(result == true){
			alert("전송하였습니다.");
		}else{
			alert("취소하였습니다.");
			return false;		
		}
	}
}

</script>