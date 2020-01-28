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
<title>MyFirstDevWeb</title>

</head>
<body>
	<%@ include file="/default/header.jsp"%>
	<br><br>
	<div class="container" style="width: 30%; float:none; margin:0 auto">
	<form method="post" name="loginForm" id="loginForm">
		<h1 align="center"><b>로그인</b></h1>
		<br><br>
    	<div class="form-group">
    		<label class="control-label" for="id">아이디</label>
    		<input type="text" class="form-control" name="id" id="id" placeholder="4~12자의 영문, 숫자 아이디 입력"/>
    	</div>
    	<br>
    	<div class="form-group">
      		<label for="pw">비밀번호:</label>
      		<input type="password" class="form-control" name ="pw" id="pw" placeholder="4~12자의 영문, 숫자 비밀번호 입력">
      			<c:if test="${msg == 'fail'}">
       				<div style="color: red">
       				아이디 또는 비밀번호가 일치하지 않습니다.
       				</div>
        		</c:if>
   		</div>
   		<br><br><br>
   		<div class="form-group text-center">
  			<input type="button" class="btn btn-default" id="mainBtn" value="메인으로">
			<input type="button" class="btn btn-success" id="loginBtn" value="로그인">
        </div>

  	</form>
  		<br><br><br><br><br><br><br><br><br><br><br><br>
	</div>	
<script type="text/javascript">
/* 메인 버튼 처리 */
	$("#mainBtn").click(function(){
		location.href="main.jsp";
	})
/* 로그인 검증  */
	$("#loginBtn").click(function(){
		var id = $("#id").val();
		var pw = $("#pw").val();
			
		if (id == "") { 
			alert("아이디를 입력하세요.");
			$("#id").focus();
			return;
		}
		if (pw == "") {
			alert("비밀번호를 입력하세요.");
			$("#pw").focus();
			return;
		}
		document.loginForm.action="${path}loginCheck.do"; //폼 내부 데이터를 전송할 주소
		document.loginForm.submit(); //전송
	})
</script>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>