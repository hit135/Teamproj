<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
function fn_memberModify(){
	console.log("fn_memberModify");
	let memPassNew = $("#memberPassNew").val();
	let memPassNew_check = $("#memberPassNew_check").val();
	console.log("memberPassNew : ", $("#memberPassNew").val());
	if( memPassNew == "" ||  memPassNew_check == "" ){
		alert("기존비밀번호 또는 신규비밀번호가 입력되지 않았습니다. 입력부탁드려요");
		return;
	}
	if(memPassNew != memPassNew_check ){
		alert("신규 비밀번호 와 신규 비밀번호 확인 값이 일치 하지 않습니다. 다시 입력 해주세요.");
		$("#memPassNew").val("");
		$("#memPassNew_check").val("");
		return;
	}else{
		$("form[name='memberModifyForm']").submit(); 
	}
}

function fn_cancel(){
	let ret = confirm("수정을 취소하시겠습니까? 확인을 누르시면 이전 페이지로 돌아갑니다.");
	if( ret == true){
		history.back();
	}
}

</script>

<body>
     <div class="contents">
         <!-- 사용할 영역잡기 -->
         <div class="content01">
             <div class="content01_h1">
                 <h1>회원 정보 상세</h1>
             </div>
             <!-- 회원 정보 테이블 -->
             <div id="div_table">
             
             	<c:choose>
             		<c:when test="${bne ne null or de ne null }">
             			<h3>회원 정보 조회 실패</h3>
						<div class="alert alert-success">
							<p>회원 정보 조회 실패 하였습니다. 전산실에 문의 부탁드립니다. 042-719-8850</p>
							<div class="btn-area">
								<button type="button" onclick="history.back();">뒤로가기</button>
							</div>
						</div>
             		</c:when>
             		<c:when test="${bne eq null and de eq null }">
		             	<form name="memberModifyForm" action="${pageContext.request.contextPath }/member/memberModify"  method="post" >
							<input type="hidden" name="memberId" value="${memberVO.memberId }">
			              	<table >
								<tbody>
									<tr>
										<td class="td_left">아이디</td>
										<td class="td_right">${memberVO.memberId }</td>
									</tr>
									<tr>
										<td class="td_left">기존 비밀번호</td>
										<td class="td_right"><input type="password" id="memberPass" name="memberPass" value="" title="알파벳과 숫자로 4글자 이상 입력" ></td>
									</tr>
									<tr>
										<td class="td_left">신규 비밀번호</td>
										<td class="td_right"><input type="password" id="memberPassNew" name="memberPassNew"></td>
									</tr>
									<tr>
										<td class="td_left">신규 비밀번호 확인</td>
										<td class="td_right"><input type="password" id="memberPassNew_check" value="" title="알파벳과 숫자로 4글자 이상 입력" ></td>
									</tr>
									
									<tr>
										<td class="td_left">회원명</td>
										<td class="td_right">
											<input type="text" name="memberNm" value="${memberVO.memberNm}" pattern="[a-zA-Z]{3,15}" title="영어로 3글자 이상 입력" required>
										</td>
									</tr>
									<tr>
										<td class="td_left">주소</td>
										<td class="td_right">
											<input type="text" name="memberAdd" value='${memberVO.memberAdd }'>
										</td>
									</tr>
									<tr>
										<td class="td_left">메일</td>
										<td class="td_right"><input type="email" name="memberMail" value='${memberVO.memberMail }' required></td>
									</tr>
									<tr>
										<td class="td_left">핸드폰</td>
										<td class="td_right"><input type="number" name="memberHp" value='${memberVO.memberHp }'></td>
									</tr>
									<tr>
										<td class="td_left">마일리지</td>
										<td class="td_right">${memberVO.memberMileage }</td>
									</tr>	
								</tbody>
							</table>
							<div class="div_button">
			                     <input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="HOME">
			                     <input type="button" onclick="fn_memberModify()" value="저장">
			                     <input type="button" onclick="fn_cancel()" value="취소">
			                 </div>
						</form>
	                 </c:when>
             	</c:choose>
             </div>
         </div>
     </div>
</body>
</html>