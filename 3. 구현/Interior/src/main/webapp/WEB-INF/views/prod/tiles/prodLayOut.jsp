<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 타일즈 -->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {

padding-top:75px; /* header와 body가 겹치지 않기위해 헤더 높이만큼 패딩 넣었음  */

}
</style>
<title>test</title>
 
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
        
	<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath }/js/aos.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.fancybox.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.sticky.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
  
</head>
<body>

<div id="wrap">
	<div class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
		<!-- header 영역 -->
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div>
		<tiles:insertAttribute name="body"/>
	</div>
	
</div>
</body>
</html>