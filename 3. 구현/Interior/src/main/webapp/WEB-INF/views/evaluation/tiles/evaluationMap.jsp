<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style>

.part{
		height: 100%;
}

#eva_map{
	position:relative;
	height: 100%;
}

.home_reg_btn{
	position:absolute;
	z-index: 90;
}

.eva_search{
	position: absolute;
	z-index: 90;
	top: 100px;
}
.marker_list{
	height: 100%;
	max-width: 24.5% !important;
}

/* 주소 입력 모달 창 css */
/* 모달 크기 */
.modal-dialog{
	max-width : 700px;
}

.addModalBody{
    background-color: #E9E9E9;
}

.addViewBody {
    height: 100%;

}

.addViewBodyDiv {
    font-family:'Roboto Slab', "Gill Sans", "Gill Sans MT", "Myriad Pro", "DejaVu Sans Condensed", Helvetica, Arial, sans-serif;
    color: black;
    margin: 0;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Based on http://www.456bereastreet.com/archive/201105/styling_ordered_list_numbers/ */
.addViewBodyDiv div {
    max-width: 700px;
    margin: 0 auto;
    display: block;
}
/* #1- Larger numbers */
.addViewBodyDiv div ol.large-numbers {
    counter-reset:li; /* Initiate a counter */
    margin-left:0; /* Remove the default left margin */
    padding-left:0; /* Remove the default left padding */
    line-height: 1.25;
}
.addViewBodyDiv div ol.large-numbers > li {
    position:relative; /* Create a positioning context */
    list-style:none; /* Disable the normal item numbering */
    margin: 1rem 0 1rem 2rem;
    padding: 0 0 0 1rem;
}
.addViewBodyDiv div ol.large-numbers > li:before {
    content:counter(li); /* Use the counter as content */
    counter-increment:li; /* Increment the counter by 1 */
    /* Position and style the number */
    position:absolute;
    top: -0.3em; /* move numbers up or down as needed */
    left:-0.9em;
    width: 1em;
    text-align:center;
    -moz-box-sizing:border-box;
    -webkit-box-sizing:border-box;
    box-sizing:border-box;
    font-size: 2em;
    font-weight: bold;
    font-weight: 700;
    color: #A8CABA;
    text-shadow:
        3px 3px 0 #838689,
    -1px -1px 0 #838689,  
        1px -1px 0 #838689,
        -1px 1px 0 #838689,
        1px 1px 0 #838689;
}
.addViewBodyDiv div ol.large-numbers li:hover:before {
    color: #EBE3AA;
}


/* 이미지 업로드 CSS */
.home_image{
	width: 350px; 
	height: 300px; 
	background-color: lightgray;
	left: 400px;
}
 
.upload {
	width: 350px;
	height: 250px;
	/* background-color: antiquewhite; */
}

.home_image img{
  width: 350px;
  height: 250px;
}
.image-preview {
	height: 250px;
	background-color: #9b9b9d;
	position: absolute;
	top: 25px;
}

.image-preview > li {
	list-style: none;
}

.home_image input{
	width: 200px;
	margin-top: 15px;
}

/* 목록 css */
#home_review{
	max-height: 91%;
	overflow-y: auto;
	overflow-x: hidden;
	margin-right: 0 !important;
}
#home_review .row{
	margin-right: 0 !important;
}
/* 스크롤바 css */
#home_review::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

#home_review::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: rgba(204,204,204,0.4); /* 스크롤바의 색상 */
    border-radius: 10px;
}

#home_review::-webkit-scrollbar-track {
    background: rgba(255, 255, 255, .1);  /*스크롤바 뒷 배경 색상*/
}
.marker_view{
	position: relative;
}
.home_eva_img{
	width: 180px;
	height: 130px;
	border-radius: 10px;
}
/* 위아래 여백 */
.top_bottom_margin{
	padding-top: 5%;
	padding-bottom: 5%;
	border-bottom: solid 2px rgba(204,204,204,0.4);
}
/* 마커 정보 폰트 등.. */
.markerCon{
	font-weight: bold;
	font-size: x-large;
}

/* 별점 채우기 CSS */
.star-ratings {
  color: #aaa9a9; 
  position: relative;
  unicode-bidi: bidi-override;
  width: max-content;
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 1.3px;
  -webkit-text-stroke-color: #2b2a29;
}
 
.star-ratings-fill {
  color: #fff58c;
  padding: 0;
  position: absolute;
  z-index: 1;
  display: flex;
  top: 0;
  left: 0;
  overflow: hidden;
  -webkit-text-fill-color: gold;
}
 
.star-ratings-base {
  z-index: 0;
  padding: 0;
}

.star-ratings span {
	font-size : x-large;
}

/* 집 평가 리스트 타이틀 */
.marker_list_title {
	font-weight: bolder;
	font-size: xx-large; 
	padding-top: 5%;
}
/* row 마진 0으로 */
.margin_right_zero {
	margin-right: 0 !important;
}
</style>
<div>
<!-- 페이지 첫 시작시 모든 데이터 가져오기 -->
<c:forEach items="${markerList }" var="marker">
	<input type="hidden" class="home_title" value="${marker.markerTitle }">
	<input type="hidden" class="home_lat" value="${marker.markerLat }">
	<input type="hidden" class="home_longt" value="${marker.markerLongt }">
</c:forEach>
</div>

<div>
<!-- 시작 위치 -->
<c:choose>
	<c:when test="${regMarker.markerLat == null }">
		<input type="hidden" id="regMarkerLat" value="36.326725">
		<input type="hidden" id="regMarkerLongt" value="127.407470">
	</c:when>
	<c:otherwise>
		<input type="hidden" id="regMarkerLat" value="${regMarker.markerLat}">
		<input type="hidden" id="regMarkerLongt" value="${regMarker.markerLongt}">
	</c:otherwise>
</c:choose>
</div>

<div class="entire">
	<div class="part row">
		<!-- 지도 부분 -->
		<div id="eva_map" class="col-9">
			<div>
				<!-- 내 집 등록 버튼 -->
				<button class="home_reg_btn btn btn-dark" onclick="fn_AddView()">내 집 등록</button>
			</div>
			<!-- 주소 검색창 -->
			<div class="eva_search">
				<input type="text">
			</div>
		</div>
		<!-- 마커 목록 부분 -->
		<div class="col-3 marker_list">
			<div class="row d-flex justify-content-center margin_right_zero">
				<div class="marker_list_title">평가 목록</div>
			</div>
			<div id="home_review" class="row"></div>
		</div>
	</div>
	<div>
		<!-- 주소를 입력하는 모달 창 -->
		<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
			aria-labelledby="addModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="addModalLabel">내 집 평가</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close" onclick='$("#addModal").modal("hide");'>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<!-- 모달의 바디 부분 -->
					<div class="modal-body addModalBody" id="addModalBody">
						<div id="addViewBody" class="addViewBody">
							<div id="addViewBodyDiv" class="addViewBodyDiv">
								<div>
									<form action="${pageContext.request.contextPath }/evaluation/registeMarker" 
									id="addForm" method="post" enctype="multipart/form-data">
										<input type="hidden" id="markerLat" name="markerLat" value="">
										<input type="hidden" id="markerLongt" name="markerLongt" value="">
										<input type="hidden" id="markerRegId" name="markerRegId" value="hgp">
										<ol class="large-numbers">
												<li>건물 이름 : <input type="text" name="markerTitle" placeholder="ex)한빛 아파트" autocomplete="off"></li>
												<li>상세 주소 : <input type="text" name="markerAdd" placeholder="ex)어은로 57" id="addDetail" readonly>
													<button onclick="fn_getUserAdd()" type="button">주소 입력</button>
												</li>
												<li>계약 상태 : <input type="text" name="markerCon" placeholder="ex)월세" autocomplete="off"></li>
												<li>계약 상세 : <input type="text" name="markerConDetail" placeholder="ex)500/30" autocomplete="off"></li>
												<li>등급 평가 : <input type="text" name="markerScore" placeholder="ex)3.5/5.0" autocomplete="off"></li>
												<li>사진 등록
													<div class="home_image">
														<div class="upload"></div>
														<!-- accept="image/*" >> 이미지 관련된 파일만 올릴 수 있다 -->
														<input type="file" class="real-upload" name="homePhoto"
															accept="image/*" required="required">
														<ul class="image-preview"></ul>
													</div>
												</li>
												<li>상세 평가
													<div><textarea cols="30" rows="5" name="markerEvaDetail" placeholder="ex) 사진에 비해 좁아요.."></textarea></div>
												</li>
										</ol>
									</form>
								</div>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="addCompleteBtn"
							onclick='$("#addModal").modal("hide");'>확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 카카오 맵 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cbe4f64d0e9315cf34ab23484183cd12&libraries=services,clusterer"></script>
<!-- daum 주소 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/evaluation/evaluationMap.js"></script>