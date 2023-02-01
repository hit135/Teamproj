<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 타일즈 -->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 집 평가</title>
<style type="text/css">
html,
body,
.entire{
	width: 100%;
	height: 100%;
}
body{
	padding-top:60px;
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<div id="wrap">
		<tiles:insertAttribute name="header"/>
	</div>

	<!-- 바디 -->
	<tiles:insertAttribute name="body"/>
	
	
	<!-- aos(라이브러리)가 화면이 로드되기 전에 먼저 실행돼서 -->
    <!-- script들을 밑으로 뺐음 -->
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
</body>
</html>