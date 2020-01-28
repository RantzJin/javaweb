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
</head>
<body>
	<%@ include file="/default/headerBbs.jsp"%>
	<br><br>
	<h1 align="center"><b>자유게시판</b></h1>
	<br><br>
	<div class="container">
		<div class="row">
			<form name="updateForm" action="update.do" method="post">
			<input type="hidden" name="bno" id="bno" value="${view.bno}"></input>
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시물 수정</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글제목" name="title" id="title" maxlength="40" value="${view.title}"></td>
					</tr>
					<tr>
						<td><input type="text" class="form-control" placeholder="작성자" name="writer" id="writer" maxlength="40" value="${view.writer}" readonly></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="내용을 입력해주세요" name="content" id="content" maxlength="2048" style="height: 350px;">${view.content}</textarea></td>
					</tr>
				</tbody>
			</table>
			<div>
			<a href="list.do" class="btn btn-primary">목록으로</a>
			<button type="submit" class="btn btn-success" id="updateBtn" onclick="goModify(this.form)">수정하기</button>
			</div>
		</form>
		</div>
		<br><br><br>
	</div>
	<script type="text/javascript">
	function goModify(frm) {
		var bno = frm.bno.value;
		var title = frm.title.value;
		var writer = frm.writer.value;
		var content = frm.content.value;
		
		if (title.trim() == ''){
			alert("제목을 입력해주세요");
			return false;
		}
		if (content.trim() == ''){
			alert("내용을 입력해주세요");
			return false;
		}
		frm.submit();
	}
	</script>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>