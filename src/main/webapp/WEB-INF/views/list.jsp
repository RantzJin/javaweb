<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<%-- bootstrap, jquery lib, javascript CDN --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%-- viewport --%>
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>자유게시판</title>
<style>
.page {
	float: left;
	width: 100%;
	padding-right: 20px;
	padding-left: 25px;
	margin: 0 auto;
	text-align: center;
}

.page ul {
	list-style: none;
}

.page ul li {
	padding-bottom: 3px;
	display:inline-block;
	padding-right: 10px;
}
</style>
<script type="text/javascript">
	/* 글쓰기 버튼 클릭 시 이동 */
	$(document).ready(function() {
		$("#writeBtn").click(function() {
			location.href = "write.do";
			/* if (${empty sessionScope.id}) { //id 세션 없을 시 로그인 페이지로 이동
				alert("로그인을 해주세요");
				location.href = "login.jsp";
			} else { //아니면 글쓰기
				location.href = "write.do";
			} */
		})
	})

	//이전 버튼 이벤트
/* 	function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${path}list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	} */
	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/getBbsList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
/* 	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/getBbsList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	} */
</script>
</head>
<body>
	<%@ include file="/default/headerBbs.jsp"%>
	<br><br>
	<h1 align="center"><b>자유게시판</b></h1>
	<br><br>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
				</thead>
				<tbody>
					<c:forEach items="${bbsList}" var="row">
					<tr>
						<td>${row.bno}</td>
						<td><a href="${path}view.do?bno=${row.bno}">${row.title}</a></td>
						<td>${row.writer}</td>
						<td><fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd"/></td> 
						<td>${row.viewcnt}</td>
					</tr>
					</c:forEach>						
				</tbody>
			</table>
			
			<!-- pagination{start} -->
			<div class="page">
			<ul>
				<c:if test="${paging.prev }">
					<li>
						<a href='<c:url value="list.do?page=${paging.startPage-1 }"/>'>
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
					</li>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="idx">
					<c:choose>
						<c:when test="${paging.cri.page eq idx}">
							<li><b> 
								<a href='<c:url value="list.do?page=${idx }"/>'>
									<i class="fa">${idx }&nbsp;</i></a></b>
							</li>
						</c:when>
						<c:otherwise>
							<li><a href='<c:url value="list.do?page=${idx }"/>'>
									<i class="fa">${idx }&nbsp;</i></a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.next && paging.endPage > 0 }">
					<li><a href='<c:url value="list.do?page=${paging.endPage+1 }"/>'>
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</li>
				</c:if>
			</ul>
			</div>
			<!-- pagination{end} -->
			
			<!-- 로그인한 사용자만 글쓰기 버튼 활성화 -->
			<c:if test="${sessionScope.id != null}">
			<button type="button" class="btn btn-primary pull-right" id="writeBtn">글쓰기</button>
			</c:if>
		</div>
		<br><br><br><br>
	</div>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>