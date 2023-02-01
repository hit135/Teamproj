<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	li{
		list-style: none;
	}
	.prod_view_img{
		text-align: center;
	}
	#view_Category{
		text-align: left;
	}
	.prod_view_title{
		font-size: 25px;
		color:black; 
		
	}
	.prod_view_price{
		font-size: 30px;
		font-weight: bolder;
		color: black;
	}
	#won{
		font-size: 20px;
		font-weight: bolder;
		color: black;
	}
	#point{
		font-size: 17px;
		font-weight: bold;
		color: black;
	}
	#point_p{
		font-size: 14px;
	}
	.prod_buy{
		width: 150px;
		height: 50px;
		font-weight: bolder;
	}
	.prod_buy_select{
		width: 500px;
		height: 30px;
		text-align: center;
		font-weight: normal;
		background-color: rgba(120,220,120,0.1);
	}
	.nav-tabs > a{
		color: black; 
		font-weight: bold;
		background-color: rgba(0,0,0,0);
	}
	#tempDiv{
		height: 50px;
		background-color: rgba(150,150,50,0.1);
		padding: 0px;
		width: 105%;
		/* position: fixed; */
		
	}
	.prod_board_select_div > ul{
		width: 100%;
		margin-left: 150px;		
		border-bottom: thick;
	}
	.prod_board_select_div > ul > li {
		margin-left: 15px;
		width: 140px;
		text-align: center;
		border-bottom: 3px solid;
		
	}
	.nav-item > a{
		color: black !important;
	}
	.nav-item > a:hover{
		color: orange !important;
	}
	.fixed{
		position: fixed;
		top: 80px;
		z-index: 100;
		background-color: white !important;
		color: white !important;
		transition: 0.5s; 
		
	}
	#prod_detail_contents{
		overflow: hidden;
		height: 1000px;
		transition: 0.2s;
	}
	#prodHide{
		height: 500px;
		margin-top: -500px;
		margin-left: -100px;
		background-color: rgba(205,205,205,0.5);
		position: relative;
		border: 1px solid rgba(50,50,0,0.7);
	}
	#moreImg{
		border: 1px solid black;
		background-color: rgba(0,0,0,0.5);
		width: 80px;
		height: 50px;
		font-size: 20px;
		font-weight:bolder; 
		color: white;
		border-radius: 20%;
	}
	#moreImg:hover{
		cursor: pointer;
	}
</style>    
<script type="text/javascript">
$(document).ready(function(){
	let price = '${prod.prodDetailPrice}'.replace(',','').replace(',','') 
	let point = price * 0.01;
	point = point.toLocaleString() + 'P';
	
	$('#point').html(point);
	
});

// 상품구매 셀렉트박스 이벤트
$('.prod_buy_select').on('onchange',function(){
	console.log('select');
	option = $(this).val();
	
	console.log(option);
});

// 스크롤시 상세 메뉴 상단 고정
$(function() {
	  var lnb = $("#tempDiv").offset().top -100;
	  var window2 = $(this).scrollTop();
	  if(lnb <= window2) {
 	      $("#tempDiv").addClass("fixed");
 	    }else{
 	      $("#tempDiv").removeClass("fixed");
 	    }
  $(window).scroll(function() {
    var window = $(this).scrollTop();
    var content = $('#prodDetailContentsPoint').offset().top - 700
    var revi = $('#prodReview').offset().top - 550
    var qa = $('#prodQA').offset().top - 300
 	 if(lnb <= window) {
 	      $("#tempDiv").addClass("fixed");
 	    }else{
 	      $("#tempDiv").removeClass("fixed");
 	    }
 	 if(window >= content && window < revi){
 		 console.log('컨텐츠보임');
 		$(".prod_nav_tabs > li").css('color','');
        $("#prodInfoLi").css('color','orange');
 	 }else if(window >= revi && window < qa){
 		console.log('리뷰보임');
 		$(".prod_nav_tabs > li").css('color','');
        $("#prodReviewLi").css('color','orange');
 	 }else if(window >= qa){
 		console.log('QA보임');
 		$(".prod_nav_tabs > li").css('color','');
        $("#prodQALi").css('color','orange');
 	 }
  });
});

$(document).on('mouseover','.prod_nav_tabs > li',function(){
	$(this).css('cursor','pointer');
});
// 메뉴이동 클릭시 이벤트
$(document).on('click','.prod_nav_tabs > li',function(){
		$(".prod_nav_tabs > li").css('color','');
		$(this).css('color','orange');
		 if($(this).find("input").val() == 1){
			/* var offset = $("#prod_detail_contents").offset(); //해당 위치 반환
			$("html,body").animate({scrollTop: offset.top},100); */
			document.getElementById('prodDetailContentsPoint').scrollIntoView({behavior: "smooth", block: "center"});
			console.log('1');	
			
		}else if($(this).find("input").val() == 2){
			/* var offset2 = $("#prod_review").offset(); //해당 위치 반환
			$("html,body").animate({scrollTop: offset2.top},100); */
			document.getElementById('prodReview').scrollIntoView({behavior: "smooth",block: "center"});
			console.log('2');
			
		}else if($(this).find("input").val() == 3){
			/* var offset3 = $("#prod_QA").offset(); //해당 위치 반환
			$("html,body").animate({scrollTop: offset3.top},100); */
			document.getElementById('prodQA').scrollIntoView({behavior: "smooth", block: "center"});
			console.log('3');			
		} 
});
// 상품 더보기 이벤트1
$(window).on("load",function(){
	var width = $(".contentList").width() + 200;
	console.log(width);
	$("#prodHide").css("width",width);
});

// 상품 더보기 이벤트2
function fn_moreImg(){
	console.log("더보기 클릭");
	$("#prodHide").hide();
	$('#prod_detail_contents').css("height","auto").css("overflow","visible");
}

</script>    
<br>
<br>
<br>
<br>
<br>
<div>
	<div class="row g-12">
		<div class="col-1"></div>
		<div class="col-5 prod_view_img">
			<div id="view_Category"><tr>${prod.prodDetailCategory }</tr><tr> &gt; </tr><tr>${prod.prodDetailSubCategory }</tr> </div>
			<img alt="" src="${prod.prodDetailImgUrl}">
		</div>		
		<div class="col-3 prod_view">
			<br>
			<div><b>${prod.prodDetailWriter }</b></div>
			<div class="prod_view_title">${prod.prodDetailDescript }</div>
			<br>
			<div > 리뷰 별점이랑 개수 넣을곳</div>
			<div > <span class="prod_view_price"> ${prod.prodDetailPrice } </span><span id="won">원</span> </div>
			<hr>
			<div class="row g-12 ">
				<div class="col-2 ">
					<p>혜택</p>
				</div>
				<div class="col-10 ">
					<span id="point"></span><span id="point_p">  적립 (구매 금액의 1%)</span>
				</div>
			</div>
			<br>
			<div>
				<select class="prod_buy_select">
					<option selected="selected" >수량</option>
					<option  value="1" >1</option>
					<option  value="2" >2</option>
					<option  value="3" >3</option>
				</select>
			</div>
			<br>
			<br>
			<br>
			<div class="row g-12 ">
				<div class="col-1 "></div>
				<div class="col-4 ">
					<button type="button" class="btn btn-outline-secondary prod_buy">장바구니</button>
				</div>
				<div class="col-1 "></div>
				<div class="col-4 ">
					<button type="button" class="btn btn-outline-info prod_buy">바로구매</button>
				</div>
				<div class="col-2 "></div>
			</div>
		</div>		
		<div class="col-3"></div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="row g-12" id="tempDiv">
		<div class="col-1 "></div>
		<div class="col-2 "></div>
		<div class="col-8 row g-12 prod_board_select_div " >
				 <ul class="nav nav-tabs prod_nav_tabs">
				  <li class="nav-item" id="prodInfoLi">
				  	<input type="hidden" value="1">
				    <a class="nav-link disabled prod_nav_a"  >상품 정보</a>
				  </li>
				  <li class="nav-item" id="prodReviewLi">
				  	<input type="hidden" value="2">
				    <a class="nav-link disabled prod_nav_a" >리뷰</a>
				  </li>
				  <li class="nav-item" id="prodQALi">
				  	<input type="hidden" value="3">
				    <a class="nav-link disabled prod_nav_a"  >문의사항</a>
				  </li>
				</ul> 
		</div>
		<div class="col-1 "></div>
	</div>
	<br>
	<br>
	<br>
	<div id="prodDetailContentsPoint"></div>
	<div class="row g-12">
		<div class="col-3 "></div>
		<div class="col-7 ">
			<div class="prod_detail_contents" id="prod_detail_contents">
				<div>
					<c:forEach items="${prod.prodDetailContentsContent}" var="contentList" varStatus="status">
						<img alt="" src="${contentList }" class="contentList">
					</c:forEach>
				</div>
			</div>
			<div id="prodHide" class="row g-12 prodHide">
				<div class="col-5" ></div>
				<div class="col-4" >
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<button onclick="fn_moreImg()" id="moreImg" >더 보기</button>
				</div>
				<div class="col-4" ></div>
			</div>
		</div>
		<div class="col-1 "></div>
	</div>
	<br>
	<br>
	<div id="prodReview"></div>
	<div class="row g-12" >
		<div class="col-3 "></div>
		<div class="col-5 ">
			<div class="prod_review" > 
				<div class="row g-12" >
					<div class="col-5 "id="reviewDiv"><span id="review">리뷰</span><span id="reviewCnt">123리뷰 갯수</span></div>
					<div class="col-5"></div>
					<div class="col-2 "id="reviewWriteDiv"><span id="reviewWrite">리뷰 쓰기</span></div>
				</div>
				<div class="prod_review_board">
					<div class="prod_review_star row g-12">
						<div class="col-6 row g-12">
							<br>
							<br>
							<div class="col-1"></div>
							<div class="col-10">
								<br>
						        <div>
							        <div class="container">
							          <label>
							            <input type="hidden" id="starId" name="ratevalue" value="3" step="0.1" min="0" max="5" />
							          </label>
							          <div class="rating-wrap">
							            <div class="rating">
							                <div class="overlay"></div>
							            </div>
								        <span class="starScore">3.7</span>
							          </div>
							        </div>
							    </div>
								<br>
								<br>
							</div>
							<div class="col-1 line">
							</div>
							<br>
							<br>
						</div>
						<div class="col-6 row g-12">
							<div class="col-1"></div>
							<div class="col-10 ">
								<br>							
								<div class="row g-12">
									<div class="col-2 score">5점</div>
									<div class="col-5">
										<progress value="100" max="200"></progress>
									</div>
									<div class="col-5 rvCnt" name='rvcnt'>127</div>
								</div>
								<div class="row g-12">
									<div class="col-2 score">4점</div>
									<div class="col-5">
										<progress value="40" max="200"></progress>
									</div>
									<div class="col-5 rvCnt" name='rvcnt'>126</div>
								</div>
								<div class="row g-12">
									<div class="col-2 score" >3점</div>
									<div class="col-5">
										<progress value="50" max="200"></progress>
									</div>
									<div class="col-5 rvCnt" name='rvcnt'>125</div>
								</div>
								<div class="row g-12">
									<div class="col-2 score">2점</div>
									<div class="col-5">
										<progress value="60" max="200"></progress>
									</div>
									<div class="col-5 rvCnt" name='rvcnt'>128</div>
								</div>
								<div class="row g-12">
									<div class="col-2 score">1점</div>
									<div class="col-5">
										<progress value="40" max="200"></progress>
									</div>
									<div class="col-5 rvCnt" name='rvcnt'>123</div>
								</div>
								<br>
							</div>
							<div class="col-1"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-3 " ></div>
	</div>
	<br>
	<br>
	<br>
	<div id="prodQA"></div>
	<div class="row g-12">
		<div class="col-3 "></div>
		<div class="col-6 ">
			<div class="prod_QA" > 상품 문위사항 보일 위치</div>
		</div>
		<div class="col-2 "></div>
	</div>
<br>
<br>
</div>
<script>
        const starSize = 30, maxStar = 5, gutter = 2;//별 크기, 별 개수
        let maskMax = 0; //오버레이 마스크 최대 너비
        window.addEventListener('DOMContentLoaded',()=>{
            //별 이미지 SVG 개수만큼 생성
            for(let i = 0;i < maxStar;i++){
                let el = document.createElement('div');
                //el.classList.add('star');
                el.style.width = starSize + 'px';
                el.style.height = starSize + 'px';
                el.style.marginRight = gutter + 'px';
                //인라인 SVG 이미지 부착
                el.innerHTML = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path fill="none" class="starcolor" d="M381.2 150.3L524.9 171.5C536.8 173.2 546.8 181.6 550.6 193.1C554.4 204.7 551.3 217.3 542.7 225.9L438.5 328.1L463.1 474.7C465.1 486.7 460.2 498.9 450.2 506C440.3 513.1 427.2 514 416.5 508.3L288.1 439.8L159.8 508.3C149 514 135.9 513.1 126 506C116.1 498.9 111.1 486.7 113.2 474.7L137.8 328.1L33.58 225.9C24.97 217.3 21.91 204.7 25.69 193.1C29.46 181.6 39.43 173.2 51.42 171.5L195 150.3L259.4 17.97C264.7 6.954 275.9-.0391 288.1-.0391C300.4-.0391 311.6 6.954 316.9 17.97L381.2 150.3z"/></svg>';
                document.querySelector('.rating').appendChild(el);
            }
            maskMax = parseInt(starSize * maxStar + gutter * (maxStar-1));//최대 마스크 너비 계산
            setRating(2.6);	// 입력값 받아 별점 마킹 
            //별점 마킹 함수
            function setRating(val = 0){
                document.querySelector('.overlay').style.width = parseInt(maskMax - val * starSize - Math.floor(val) * gutter) + 'px';//마스크 크기 변경해서 별점 마킹
            }
        });
        
$(function(){
	let rvcntlen = $('div[name="rvcnt"]').length;
	let rvcnts = new Array(rvcntlen);
		//배열에 값 주입
		for(var i=0; i<rvcntlen; i++){                          
			rvcnts[i] = $("div[name='rvcnt']").eq(i).html();
	    }
	/* 정상 동작 */
	console.log('srot 전 - '+rvcnts);
	rvcnts.sort(function(a, b) { // 오름차순
	    return b - a;
	    // 1, 2, 3, 4, 10, 11
	});
	console.log('srot 후 - '+rvcnts);
	let top = rvcnts[0];
	for(var i=0; i<rvcntlen; i++){                          
		let asd = $("div[name='rvcnt']").eq(i).html();
		if(asd == top){
			console.log(asd , top);
			$("div[name='rvcnt']").eq(i).parent().css('color','#35c5f0').css('font-weight','bold');
			console.log($("div[name='rvcnt']").eq(i));
		}
    }
});
</script>

<style>
progress {
	margin-left: -17px;
   width: 140px;
   height: 15px;
   color: blue;
   -webkit-appearance: none;
   appearance: none;
}
progress::-webkit-progress-bar {
   border-radius: 60px;
   background-color: white;
}
progress::-webkit-progress-value {
	border-radius: 60px;
   background-color: #35c5f0;
}
.starScore{
	font-size: 35px;
	font-weight: bold;
	color: black;
	margin-left: 10px;
}
.container{
	margin-top: 10px;
}
#starId{
            margin-bottom: 0;
            margin-left: 0px;
            padding: 0;
            font-size: 1em;
            border: none;
            border-radius: 4px;
        }
        .rating-wrap{
            padding: 0px;
            display: flex;
        }
        .rating-wrap2{
            padding: 0px;
            display: flex;
        }
        .rating {
            display: flex;
            align-items: center;
            position: relative;
        }
        .starcolor{
            fill: #35c5f0;
        }
        .overlay {
            background-color: #000;
            opacity: 0.5;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            z-index: 1;
            transition: all 0.3s ease-in-out;
        }
        @supports (mix-blend-mode: color) {
            .overlay{
                mix-blend-mode: color;
                opacity: unset;
            }
        }
#reviewDiv{
	font-size: 20px;
	font-weight: bold;
	color: black;
	text-align: justify; 
}
#reviewCnt{
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	color: #35c5f0;
	margin-left: 10px;
}
#reviewWrite{
	color: #35c5f0;
	font-weight:bold; 
	text-align: right;
}
#reviewWrite:hover{
	cursor: pointer;
}
.prod_review_star{
	background-color: rgba(10,10,10,0.1);
	border-radius: 10px;
}
.score{
	font-size: 14px;
	
}
.rvCnt{
	font-size: 14px;
}
.line{
	border-right-style:  dashed;
	border-right-width: 1px;
	height: 150px;
	margin-top: 20px;
}

</style>







