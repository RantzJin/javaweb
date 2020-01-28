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
					<c:forEach var="row" items="${list}">
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
			<button type="button" class="btn btn-primary pull-right" id="writeBtn">글쓰기</button>
		</div>
		<br><br>
	</div>
	
	<%@ include file="/default/footer.jsp"%>
</body>
</html>