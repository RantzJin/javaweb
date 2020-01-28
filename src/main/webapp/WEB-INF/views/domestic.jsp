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
</head>
<body>
	<%@ include file="/default/headerDomestic.jsp"%>
	<br><br>
	<div class="container text-center">
		<h1><b>국내 추천 여행지</b></h1>
		<br><br>
		<div class="row">
			<div class="col-sm-4">
				<a href="${path}domtrip/domestic1">
				<img src="resources/img/domestic/travel1/DT1_thumbnail.png" class="img-responsive" style="width: 100%; height: 230px" alt="">
				<p><b>뜨끈뜨끈 지금 가면 딱 좋은 국내 온천 TOP3</b></p></a>
				<p>날씨가 점점 추워지는 걸 보니 겨울이 온 게 맞다. 퇴근 후 집에만 들어가면 곧바로 전기장판에 몸 녹이기 바쁜 요즘이다. 그렇다고 그냥 집에만 있기에 노 잼!</p>
			</div>
			<div class="col-sm-4">
				<a href="${path}domtrip/domestic2">
				<img src="resources/img/domestic/travel2/DT2_thumbnail.png" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>놀 거리 가득한 겨울왕국! 인제, 양구 여행 코스 #1</b></p></a>
				<p>추워지는 계절에 집에 틀어박히기 십상이지만 이 와중에도 겨울에만 맛볼 수 있는 별미 같은 여행지들이 있습니다.<br>인제와 양구를 소개합니다.</p>
			</div>
			<div class="col-sm-4">
				<a href="${path}domtrip/domestic3">
				<img src="resources/img/domestic/travel3/DT3_thumbnail.png" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>놀 거리 가득한 겨울왕국! 인제, 양구 여행 코스 #2</b></p></a>
				<p>추워지는 계절에 집에 틀어박히기 십상이지만 이 와중에도 겨울에만 맛볼 수 있는 별미 같은 여행지들이 있습니다.<br>인제와 양구를 소개합니다.</p>
				<br><br><br>
			</div>
			<div class="col-sm-4">
				<a href="${path}domtrip/domestic3">
				<img src="resources/img/domestic/travel3/DT3_thumbnail.png" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>놀 거리 가득한 겨울왕국! 인제, 양구 여행 코스 #2</b></p></a>
				<p>추워지는 계절에 집에 틀어박히기 십상이지만 이 와중에도 겨울에만 맛볼 수 있는 별미 같은 여행지들이 있습니다.<br>인제와 양구를 소개합니다.</p>
				<br><br><br>
			</div>
			<div class="col-sm-4">
				<a href="${path}domtrip/domestic3">
				<img src="resources/img/domestic/travel3/DT3_thumbnail.png" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>놀 거리 가득한 겨울왕국! 인제, 양구 여행 코스 #2</b></p></a>
				<p>추워지는 계절에 집에 틀어박히기 십상이지만 이 와중에도 겨울에만 맛볼 수 있는 별미 같은 여행지들이 있습니다.<br>인제와 양구를 소개합니다.</p>
				<br><br><br>
			</div>
			<div class="col-sm-4">
				<a href="${path}domtrip/domestic3">
				<img src="resources/img/domestic/travel3/DT3_thumbnail.png" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>놀 거리 가득한 겨울왕국! 인제, 양구 여행 코스 #2</b></p></a>
				<p>추워지는 계절에 집에 틀어박히기 십상이지만 이 와중에도 겨울에만 맛볼 수 있는 별미 같은 여행지들이 있습니다.<br>인제와 양구를 소개합니다.</p>
				<br><br><br>
			</div>
		</div>
	</div>
	<br><br><br><br>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>