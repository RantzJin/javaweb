<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%-- bootstrap, jquery lib, javascript CDN --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%-- viewport --%>
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>MyFirstDevWeb</title>
<script type="text/javascript">
/* 메인, 로그인 이동 버튼 처리 */
	$(function() {
		$("#mainBtn").click(function() {
			location.href="main.jsp";
		})
		$("#loginBtn").click(function() {
			location.href="login.jsp";
		})
	})
</script>
</head>
<body>
	<%@ include file="/default/header.jsp"%>
	<br><br>
	<div class="container" style="width: 30%; float:none; margin:0 auto">
		<h1 align="center"><b>회원가입을 축하합니다!</b></h1>
		<br>
		<h4 align="center"><b>가입하신 정보는 다음과 같습니다.</b></h4>
		<br>
		<div class="form-group">
            <span class="label label-success">아이디</span>
            <div class="well well-sm">${memberDTO.id}</div>
        </div>
        <div class="form-group">
       		<span class="label label-primary">이름</span>
            <div class="well well-sm">${memberDTO.name}</div>
        </div>
		<div class="form-group">
     		<span class="label label-primary">휴대폰 번호</span>
     		<div class="well well-sm">${memberDTO.tel}</div>
   		</div>
   		<div class="form-group">
       		<span class="label label-primary">이메일</span>
            <div class="well well-sm">${memberDTO.email}</div>
        </div>
   		<br>
		<div class="form-group text-center">
  			<input type="button" class="btn btn-default" id="mainBtn" value="메인으로">
			<input type="button" class="btn btn-success" id="loginBtn" value="로그인 페이지로">
        </div>
        <br><br><br>
	</div>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>