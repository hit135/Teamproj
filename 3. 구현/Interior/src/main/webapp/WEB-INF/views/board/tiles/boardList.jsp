<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

$(function(){

	$('#id_rowSizePerPage').change(function() {
		sf.find("input[name='curPage']").val(1);
		sf.find("input[name='rowSizePerPage']").val($(this).val());
		sf.submit();
	});


	let sf =$("form[name='search']");
	let curPage= sf.find("input[name='curPage']");
	let rowSizePerPage = sf.find("input[name='rowSizePerPage']");
	$('ul.pagination li a').click(function(e) {
		e.preventDefault();

		console.log($(e.target).data("curpage"));  
		
		curPage.val($(e.target).data("curpage")); 
		rowSizePerPage.val($(this).data("rowsizeperpage")); 
		sf.submit();
	});


	sf.find("button[type=submit]").click(function(e) {
		e.preventDefault();
		curPage.val(1);
		rowSizePerPage.val(10);
		sf.submit();
	});

	
	$('#id_btn_reset').click(function() {
		sf.find("select[name='searchType'] option:eq(0)").attr("selected", "selected");	
		sf.find("input[name='searchWord']").val("");
		sf.find("input[name='curPage']").val(1);
		sf.find("input[name='rowSizePerPage']").val(10);
		sf.submit();
	});  	


	
	
	
});

function fn_boardViewBoNo(boNo){
	
	let st = $("select[name='searchType']").val();
	let sw = $("input[name='searchWord']").val();
	let cp = $("input[name='curPage']").val();
	let rpp = $("input[name='rowSizePerPage']").val();
	console.log("st : ",st, ", sw: ", sw);
	location.href="${pageContext.request.contextPath}/boardList?boNo="+boNo+"&searchType="+st+"&searchWord="+sw+"&curPage="+cp+"&rowSizePerPage="+rpp;
	
	
}

 $(function(){
   $(window).scroll(function(){
   var navbar = $(this).scrollTop();
//    console.log(navbar);
   var sidebar = $('.my-side-bar');
   if(navbar > 200){
	   sidebar.addClass('activated-change-height-sidebar');
   }else{
	   sidebar.removeClass('activated-change-height-sidebar');
   }
 })
 })
</script>
<style>
.activated-change-height-sidebar {
  
  transition: all 0.2s ease 0s;  
} 
.my-side-bar {
  list-style-type: none;
  padding: 0px;
  margin: 0px;
  width: 100px;
  background: #FF6347;
  overflow: auto;
  z-index:100;
  height:100%;
  position:fixed;
}


.in-my-side-bar a {
  text-decoration: none;
  padding: 10px;
  display: block;
  color: #000;
  font-weight: bold;
}

.in-my-side-bar a:hover {
  background: #333;
  color: #fff;
}

.in-my-side-bar a.myBoard {
  background : #333;
  color: #fff;
}

#div_table {
  margin-left: 120px;
}

.content01_h1{
	margin-left: 120px;
}
#all-Board{
	margin-left: 120px;
}
.content01 {
	height:100%;
}
.div_search{
	margin-left:120px;
}
.div_paging{
    width: 100%;
    margin-left:30%;
    height: 100%;
    background-color: lightcyan;
}
.pagination{
    width: 300px;
    /* height: 30px; */
    height: 100%;
    background-color: lightpink;
    text-align: center;
    padding-top: 20px;
    display: flex;
}
.pagination > li{
	width: 20px;
}
.div_board_write{
    width: 100px;
    height: 50px;
    background-color: limegreen;
    position: relative;
    left: 510px;
    top: -30px;
} 

.div_board_write > input{
    padding: 5px;
    border: none;
    border-radius: 5px;
}
.boastTitle-a {
	color:black;
}
</style>

    <!-- 전체 영역잡기 -->
    <div class="contents">
        <!-- 사용할 영역잡기 -->
        <div class="content01">
			<ul class="my-side-bar">
				<li class="in-my-side-bar"><a class="myBoard" href="#">내가 쓴 게시글</a></li>
			</ul>
			<div class="content01_h1">
           	<h1>자유게시판</h1>
          </div>
			<c:if test="${bne ne null or de ne null}">
				<div class="alert alert-warning">
					목록을 불러오지 못하였습니다. 전산실에 문의 부탁드립니다. 042-719-8850
				</div>	
				<div class="div_button">
					<input type="button" onclick="history.back();" value="뒤로가기">
				</div>
			</c:if>      

			<c:if test="${bnf eq null and de eq null}">
		 		<div class="div_search">
					<form name="search" action="${pageContext.request.contextPath }/boardList" method="post">
						<input type="hidden" name="curPage" value="${BoardSearchVO.curPage}"> 
						<input type="hidden" name="rowSizePerPage" value="${BoardSearchVO.rowSizePerPage}">
						
						<div>
							<label for="id_searchType">검색</label>
							&nbsp;&nbsp;
							<select id="id_searchType" name="searchType">
								<option value="T" ${BoardSearchVO.searchType eq "T" ? "selected='selected'" : ""} >제목</option>
								<option value="W" ${BoardSearchVO.searchType eq "W" ? "selected='selected'" : ""} >작성자</option>
								<option value="C" ${BoardSearchVO.searchType eq "C" ? "selected='selected'" : ""} >내용</option>
							</select>
							<input type="text" name="searchWord" value="${BoardSearchVO.searchWord }" placeholder="검색어">
							&nbsp;&nbsp;&nbsp;&nbsp;	
							
							<button type="submit">검 색 </button>
							<button type="button" id="id_btn_reset" >초기화</button>
						</div>
					</form>
				</div>        
            
            
				<div class="rowSizePerPage">
					<div id="all-Board">
						전체 ${BoardSearchVO.totalRowCount } 건의 게시글
						
						
					</div>
				</div>
	            
	            <!-- 리스트 -->
	            <div id="div_table">
	                <table>
	                    <colgroup>
	                        <col width="100">
	                        <col width="150">
	                        <col >
	                        <col width="150">
	                        <col width="150">
	                        <col width="100">
	                    </colgroup>
	                    <thead>
	                        <tr>
	                            <th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회수</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	
	       					<c:forEach items="${BoardList }" var ="Board">
	       						<tr>
									<td>${Board.boastNumber }</td>
									<td>
										<a class="boastTitle-a" href="#" onclick="fn_boardViewBoNo('${Board.boastNumber }')">
											${Board.boastTitle }						
										</a>
									</td>
									<td>${Board.boastWriter }</td>
									<td>${Board.boastRegDate }</td>
									<td>${Board.boastHit }</td>
	       						</tr>
	       					</c:forEach>	                 
	                        
	                    </tbody>
	                </table>
	            </div>
	
	            <!-- paging -->
	            <div class="div_paging">
	                <ul class="pagination">
						<c:if test="${BoardSearchVO.firstPage gt 10 }">
		                	<li><a href="#" 
		                		data-curPage=${BoardSearchVO.firstPage-1 }   data-rowSizePerPage=${BoardSearchVO.rowSizePerPage } >&laquo;</a></li>
		                </c:if> 
		                
						<c:if test="${BoardsearchVO.curPage ne 1 }">
							<li><a href="#" 
								data-curPage=${BoardSearchVO.curPage-1 }   data-rowSizePerPage=${BoardSearchVO.rowSizePerPage } >&lt;</a></li>
						</c:if>
		                
						<c:forEach begin="${BoardSearchVO.firstPage }" end="${BoardSearchVO.lastPage }" step="1" var="i"> 
							<c:if test="${BoardSearchVO.curPage ne i}">
								<li><a href="#"
									data-curPage=${i }   data-rowSizePerPage=${BoardSearchVO.rowSizePerPage }  >${i }</a></li>
							</c:if>
							<c:if test="${BoardSearchVO.curPage eq i }">
								<li><a href="#" class="curPage_a">${i }</a></li>
							</c:if>
						</c:forEach>
	                
						<c:if test="${BoardSearchVO.lastPage ne BoardSearchVO.totalPageCount }">
							<li><a href="#"
									data-curPage=${BoardSearchVO.curPage+1  }   data-rowSizePerPage=${BoardSearchVO.rowSizePerPage }  >&gt;</a></li>
							<li><a href="#"
									data-curPage=${BoardSearchVO.lastPage+1  }   data-rowSizePerPage=${BoardSearchVO.rowSizePerPage }>&raquo;</a></li>
						</c:if>
						
	
					</ul>
	                
	                <div class="div_board_write">
	                    <input type="button" onclick="location.href='${pageContext.request.contextPath}/boardForm'" value="글쓰기">
	                </div>
	            </div>
            </c:if>
            
            
        </div>
    </div>