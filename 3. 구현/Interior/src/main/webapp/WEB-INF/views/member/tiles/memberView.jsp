<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NextIT</title>
</head>
<style>
#modal_div1{
	width: 100%;
	height: 100%;
	position: fixed; 	
	top: 0; right: 0; bottom: 0; left: 0;
	background-color: rgba(0,0,0,0.4);	
	z-index: 1;
	display: none;
}
#modal_div2{
	width: 400px;
	height: 200px;
	background-color: lightgrey;
	text-align: center;
	position: fixed;
	left: calc(50% - 200px);
	top: calc(50% - 200px);
}
#modal_div2 > p {
	margin-top: 50px;
}
#modal_div2 > a {
	margin-left: 300px;
}
form[name="deleteForm"]{
	width: 350px;
    height: 350px;
    /* background-color: tomato; */
    margin-top: 20px;
}
.int-area{
    width: 300px;
    height: 150px;
    /* background-color: lightblue; */ 
}
.int-area:first-child{
	padding-top: 40px;
}
.int-area input{
    width: 80%;
    padding: 30px 10px 10px;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #999;
    font-size: 18px;
    color: #fff;
}
.btn-area > button{
    width: 40%;
    height: 40px;
    color: #fff;
    font-size: 20px;
    border: none;
    border-radius: 15px;
    background-color: lightpink;
    position: relative;
    top: -50px
}
.btn-area > button:active{
	color: gray;
}

</style>


<script type="text/javascript">

function fn_memberEdit(memberId){
	console.log("memberId:"+ memberId);
	
	console.log("location.href : " , location.href);		// http://localhost:8080/nextit/member/memberView?memId=nextit30
	console.log("location.host : " , location.host);		// localhost:8080
	
	let hostIndex = location.href.indexOf(location.host) + location.host.length;
	console.log("hostIndex : " , hostIndex);
	
	let contextPath = location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
	console.log("contextPath : ", contextPath);
	
	location.href = "/member/memberEdit?memberId="+memberId; //???????????????
}

function fn_memberDelete() {
	$("#modal_div1").fadeIn();
}

function fn_memberDeleteSubmit(){
	console.log("fn_memberDeleteSubmit");
	let ret = confirm("????????? ?????????????????????????");
	if(ret){
		let f = document.deleteForm;
		console.log("f : ", f);
		f.submit();
	}else{
		$("#modal_div1").fadeOut();	
	}
}
function fn_Cancel(){
	$("#modal_div1").fadeOut();
}

</script>

<body>
     <!-- intro_bg e -->

     <!-- ?????? ???????????? -->
     <div class="contents">
         <!-- ????????? ???????????? -->
         <div class="content01">
             <!-- ?????? ?????? ????????? -->
             <div id="div_table">
             	<c:choose>
             		<c:when test="${bne ne null or de ne null }">
             			<h3>?????? ?????? ?????? ??????</h3>
						<div class="alert alert-success">
							<p>?????? ?????? ?????? ?????? ???????????????. ???????????? ?????? ??????????????????. 042-719-8850</p>
							<div class="btn-area">
								<button type="button" onclick="history.back();">????????????</button>
							</div>
						</div>
             		</c:when>
             		<c:when test="${bne eq null and de eq null}">
             		
             		<!-- ????????? ???????????? -->
<%--              		<c:if test="${not empty member.atchNo}">
             			<img alt="???????????????" src='<c:url value="/image/${member.atchNo }"/>'>
             		</c:if> --%>
             		
             			<table >
							<tbody>
								<tr>
									<td class="td_left">?????????</td>
									<td class="td_right"><c:out value="${memberVO.memberId }"/></td>
								</tr>
								<tr>
									<td class="td_left">?????????</td>
									<td class="td_right"><c:out value="${memberVO.memberNm }"/></td>
								</tr>
								<tr>
									<td class="td_left">??????</td>
									<td class="td_right"><c:out value="${memberVO.memberAdd }"/></td>
								</tr>
								<tr>
									<td class="td_left">?????????</td>
									<td class="td_right"><c:out value="${memberVO.memberHp }"/></td>
								</tr>
								<tr>
									<td class="td_left">????????????</td>
									<td class="td_right"><c:out value="${memberVO.memberMileage}"/></td>
								</tr>
							</tbody>
						</table>
						<div class="div_button">
		                     <input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="HOME">
		                     <input type="button" onclick="fn_memberEdit('${memberVO.memberId }')" value="??????">
		                    <input type="button" onclick="fn_memberDelete()" value="??????">		                    
		                 </div>
             		</c:when>
             	</c:choose>
             </div>
         </div>
     </div>
     
	<!-- ???????????? ?????? -->
	<div id="modal_div1" >
		<div id="modal_div2" >
			<form name="deleteForm" action="${pageContext.request.contextPath}/member/memberDelete" method="post">
				<input type="hidden" id="memberId" name="memberId" value="${memberVO.memberId }"/>
				<div class="int-area">
					<input type="password" id="memberPass" name="memberPass" value="" placeholder="PASSWORD" autocomplete="off" required/>
				</div>
				<div class="btn-area">
					<button type="button" onclick="fn_memberDeleteSubmit()">??????</button>
					<button type="button" onclick="fn_Cancel()">??????</button>
				</div>
			</form>
		</div>
	</div>
	
	
</body>
</html>
   