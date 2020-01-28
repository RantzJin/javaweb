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
		/* 수정 버튼 처리 */
		$("#updateBtn").click(function() {
			var title = $("#title").val();
			var writer = $("#writer").val();
			var content = $("#content").val();
			if (title == "") {
				alert("제목을 입력하세요");
				document.viewForm.title.focus();
				return;
			}
			/* if (writer == "") {
				alert("이름을입력하세요");
				document.viewForm.writer.focus();
				return;
			} */
			if (content == "") {
				alert("내용을 입력하세요");
				document.viewForm.content.focus();
				return;
			}
			document.viewForm.action="${path}update.do";
			document.viewForm.submit();
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
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
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
							<td colspan="2">
								<fmt:formatDate value="${view.regdate}" pattern="yyyy-MM-dd"/>
							</td>
						</tr>
						<tr>
							<td>조회수</td>
							<td colspan="2">${view.viewcnt}</td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="min-height: 200px; text-align: left;">${view.content}</td>
						</tr>
					</tbody>
				</table>
				<a href="list.do" class="btn btn-primary">목록</a>
				<div class="form-group text-center">
	  				<input type="hidden" name="bno" value="${view.bno}">
					<button type="button" class="btn btn-primary" id="updateBtn">수정</button>
					<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
	       		</div>
			</div>
		</div>
	</form>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>