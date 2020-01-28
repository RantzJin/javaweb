<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 코어 태그 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%-- bootstrap, jquey lib, javascript CDN --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%-- viewport --%>
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>MyFirstDevWeb</title>
</head>
<body>
	<%-- 네비게이션 --%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${path}main">MyFirstDevWeb</a>
			</div>
			<%-- 네비게이션 목록 --%>
			<ul class="nav navbar-nav">
				<li><a href="${path}main">Home</a></li>
				<li><a href="${path}domestic">국내</a></li>
				<li><a href="${path}overseas">해외</a></li>
				<li class="active"><a href="${path}list.do">자유게시판</a></li>
			</ul>
			<%-- 회원가입, 로그인 --%>
			<ul class="nav navbar-nav navbar-right">
			<c:choose>
				<c:when test="${sessionScope.id == null}">
					<li><a href="${path}regMember"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
					<li><a href="${path}login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="#"><span class="glyphicon glyphicon-ok-sign"></span>  ${sessionScope.id}님이 접속중입니다.</a></li>
					<li><a href="${path}logout.do"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
	</nav>
</body>
</html>