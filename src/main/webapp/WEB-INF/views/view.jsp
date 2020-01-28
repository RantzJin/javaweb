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
	/* 삭제 버튼 처리 */
	$(document).ready(function() {
		$("#deleteBtn").click(function() {
			if (confirm("글을 삭제하시겠습니까?")) {
				document.viewForm.action = "${path}delete.do";
				document.viewForm.submit();
			}
		})
	});
</script>
</head>
<body>
	<%@ include file="/default/headerBbs.jsp"%>
	<br><br>
	<h1 align="center"><b>자유게시판</b></h1>
	<br><br>
	<form name="viewForm" method="post">
		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시물 보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%;">글 제목</td>
							<td colspan="2" id="title">${view.title}</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2" id="writer">${view.writer}</td>
						</tr>
						<tr>
							<td>작성일</td>
							<td colspan="2" id="regdate">
								<fmt:formatDate value="${view.regdate}" pattern="yyyy-MM-dd"/>
							</td>
						</tr>
						<tr>
							<td>조회수</td>
							<td colspan="2" id="viewcnt">${view.viewcnt}</td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="height:200px; text-align:left;">${view.content}</td>
						</tr>
					</tbody>
				</table>
				<a href="list.do" class="btn btn-primary">목록으로</a>
	  				<input type="hidden" name="bno" value="${view.bno}">
	  				<!-- 본인이 쓴 게시물만 수정 삭제 가능하도록 -->
	  				<c:if test="${sessionScope.id == view.writer}">
					<button type="button" class="btn btn-success" id="updateBtn" onclick="location.href='<c:url value='modify.do?bno=${view.bno}'/>' ">수정</button>
					<button type="button" class="btn btn-danger" id="deleteBtn">삭제</button>
					</c:if>
	       		<br><br><br><br><br>
			</div>
		</div>
	</form>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>