<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="shortcut icon" href="ftco-32x32.png">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900|Oswald:300,400,700" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/fonts/icomoon/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery-ui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/aos.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
        
<!-- header 스타일 설정 -->
<style>
/* rgba(100, 100, 100, 0.9) */
header {
  height: 120px;
  padding: 1rem;
  background-color: rgba(10, 0, 0, 0.4);
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: fixed;
  top: 0;
  width: 100%;
  z-index:100;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}
	
/* 스크롤 할 시 navbar 변화주는 css */
header.activated-change-color{
  background-color: black;
  transition: all 0.2s ease 0s;  
  border: 0.1px solid black;
  width:100%;
  z-index: 100;
}

header.activated-change-height{
  transition: all 0.2s ease 0s;  
  height: 80px;
  width:100%;
  z-index: 100;
} 
 

/* 홈페이지 이름 */
h1{
	font-family: "Oswald", sans-serif;
	font-weight: 300 !important;
	text-transform: uppercase;
	width:300px;
	text-align:right;
	color:#FFFFFF;
}

/* 메뉴 부모  */
nav {
	width:100%;
}

a {
color: #ffffff80;
font-family: "Oswald", sans-serif;
font-size:16px;
font-weight:normal;
}

/* 창크기에 따라 메뉴 반응형 css */
@media screen and (max-width: 1500px) {
  nav {
    /* display: none; */
  }
  
  /* input[id="menuicon"] + label {
  display:block;
  z-index:2000;
  }
  
  input[id="menuicon"] + label span {
  display:block;
  z-index:2000;
  } */
  
} 

.new-header-li :hover{
    color: white;
    
}

ul {
    list-style:none;
    margin:0;
    padding:0;
    
}

/* li {
    margin-left:200px;
    float: left;
} */


 .new-header-li {
    margin-left:200px;
    float: left;
} 

 .dropdown {
    margin-left:200px;
    float: left;
} 

 .login-li{
    margin-left:200px;
    float: left;
 }


/* side-bar CSS효과 */
input[id="menuicon"] {
	display:none;
}

input[id="menuicon"] + label {
	display:none;
	margin:30px;
	width:60px;
	height:50px;
	position:relative;
	cursor:pointer;
}

input[id="menuicon"] + label span {
	display:none;
	position:absolute;
	width:100%;
	height:5px;
	border-radius:30px;
	background:white;
	transition:all .35s;
}

input[id="menuicon"] + label span:nth-child(1) {
	top:0;
} 

input[id="menuicon"] + label span:nth-child(2) {
	top:50%;
	transform:translateY(-50%);
}

input[id="menuicon"] + label span:nth-child(3) {
	bottom:0;
}

input[id="menuicon"]:checked + label {
	z-index:2000;
}

input[id="menuicon"]:checked + label span {
	background:#fff;
}

input[id="menuicon"]:checked + label span:nth-child(1) {
	top:50%;
	transform:translateY(-50%) rotate(45deg);
	background-color:#25262a;
	color:#25262a;
}
 
input[id="menuicon"]:checked + label span:nth-child(2) {
	opacity:0;
}

input[id="menuicon"]:checked + label span:nth-child(3) {
	bottom:50%;
	transform:translateY(50%) rotate(-45deg);
	background-color:#25262a;
	color:#25262a;
}

div[class="sidebar"] {
	width:300px;
	height:100%;
	background:white;
	position:fixed;
	top:0;
	right:-300px;
	z-index:1;
	transition:all .35s;
}

input[id="menuicon"]:checked + label + div {
	right:0;
}

ul.sidebar-menu {
	float:left;
}
ul.sidebar-menu li {
	margin-right:200px;
}

#goHome{
	font-size: 35px;
	font-weight: bold;
	font-style: italic;
	text-decoration: underline;
} 



/* 회원정보 드롭다운 */

.dropbtn {
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  min-width: 160px;
  z-index: 1;
}

.dropdown-content a {
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}


.dropdown:hover .dropdown-content {display: block;}

 
</style>

<!-- navbar 스크롤 할 시 색깔변화주는 스크립트 -->
<script>
$(function(){
   $(window).scroll(function(){
   var navbar = $(this).scrollTop();
//    console.log(navbar);
   var $header = $('header');
   let allSpan = $("label[for = 'menuicon']").children();
   if(navbar > 0){
       $header.addClass('activated-change-color');
        allSpan.css("background" , "black");
   }else{
       $header.removeClass('activated-change-color');
       allSpan.css("background" , "white");
   }
 });
});

 $(function(){
   $(window).scroll(function(){
   var navbar = $(this).scrollTop();
//    console.log(navbar);
   var $header = $('header');
   if(navbar > 200){
       $header.addClass('activated-change-height');
   }else{
       $header.removeClass('activated-change-height');
   }
 })
})
</script>
<!-- sidebar 반응형 함수 -->
<script>
	window.onresize = function(event){
	let allSpan = $("label[for = 'menuicon']").children();
	if($(window).width() <= 1500){
		$("label[for = 'menuicon']").show();
		allSpan.show();
		$("nav").hide();
	}else {
		$("label[for = 'menuicon']").hide();
		allSpan.hide();
		$("nav").show();
	}	
}


</script>

<!-- 로그인 기능 -->
<script>

function fn_logout(){
	console.log("fn_logout");
	let ret = confirm("로그아웃하시겠습니까?");
	if( ret == true ){
		location.href ="${pageContext.request.contextPath}/logout";
	}
}
</script>


<!-- header 내용 -->
<header>

  <h1><a id="goHome" href="${pageContext.request.contextPath }/">LD Interior</a></h1>
  <nav>
  	 <ul class="new-header-ul">
   		<li class="new-header-li"><a href="${pageContext.request.contextPath}/prodList?category=가구">SHOP</a></li>
   		<li class="new-header-li"><a href="${pageContext.request.contextPath}/boardList">Services</a></li>
   		<li class="new-header-li"><a href="#">Testimonials</a></li>
   		<li class="new-header-li"><a href="#">Contact Us</a></li>
   		
   		<!-- login 하면 logout으로 -->
		<c:if test="${memberVO == null }">
	   		<li class="login-li"><a href="${pageContext.request.contextPath}/join">LOGIN</a></li>
		</c:if>
		
		<c:if test="${memberVO != null }">
		<ul class="dropdown">
			<li>
				<a href="#" class="dropbtn">${memberVO.memberId }</a>
				<ul class="dropdown-content">
					<li><a href="${pageContext.request.contextPath }/member/memberView?memberId=${memberVO.memberId }">info</a></li>
					<li><a href="#" onclick="fn_logout()">logout</a></li>
					<!-- 너 관리자냐 아니냐~ taglib security:authorize 등록해서 사용 -->
					<security:authorize access="hasAuthority('AD')">
						<li><a href="${pageContext.request.contextPath }/member/memberList">members</a></li>
					</security:authorize>
				</ul>
			</li>
		</ul>
		</c:if> 
		  		
	</ul>
  </nav>  
    <input type="checkbox" id="menuicon">
    <label for="menuicon">
	    <span></span>
	    <span></span>
	    <span></span>
    </label>
    <div class="sidebar">
    	<ul class="sidebar-menu">
    	<li>About</li>
    	<li>Services</li>
    	<li>Testimonials</li>
    	<li>Contact</li>
    	</ul>
    </div>
    
  
  

</header>