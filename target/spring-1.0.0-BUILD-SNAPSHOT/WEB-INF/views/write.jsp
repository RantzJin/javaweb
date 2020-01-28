<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	/* 확인 버튼 클릭 처리 */
	$(document).ready(function() {
		$("#writeSave").click(function() {
			var title = $("#title").val();
			var writer = $("#writer").val();
			var content = $("#content").val();
			if (title == "") {
				alert("제목을 입력하세요");
				document.writeForm.title.focus();
				return;
			}
			if (writer == "") {
				alert("이름을 입력하세요");
				document.writeForm.writer.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.writeForm.content.focus();
				return;
			}
			document.writeForm.submit();
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
			<form name="writeForm" action="insert.do" method="post">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="제목입력" name="title" id="title" maxlength="40"></td>
					</tr>
					<tr>
						<td><input type="text" class="form-control" placeholder="이름입력" name="writer" id="writer" maxlength="40"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="내용을 입력해주세요" name="content" id="content" maxlength="2048" style="height: 350px;"></textarea></td>
					</tr>
				</tbody>
			</table>
			<button type="button" class="btn btn-primary pull-right" id="writeSave">확인</button>
			<button type="reset" class="btn btn-primary pull-right">취소</button>
		</form>
		</div>
		<br><br>
	</div>

	<%@ include file="/default/footer.jsp"%>
</body>
</html>