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
	<%@ include file="/default/headerOverseas.jsp"%>
	<br><br>
	<div class="container text-center">
		<h1><b>해외 추천 여행지</b></h1>
		<br><br>
		<div class="row">
			<div class="col-sm-4">
				<a href="${path}overtrip/overseas1">
				<img src="resources/img/overseas/travel1/OT1_thumbnail.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>2020년에는 여기! 전문가들이 찍은 새해 10대 여행지 #1</b></p></a>
				<p>#1편 &lt;더 트래블러&gt; 편집부와 여행 전문가들이 여행 키워드를 바탕으로 2020년 주목해야 할 세계 3대 여행지를 선정했다. &nbsp;&nbsp;#친환경, #공유경제, #소규모투어</p>
			</div>
			<div class="col-sm-4">
				<a href="${path}overtrip/overseas2">
				<img src="resources/img/overseas/travel2/OT2_thumbnail.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>2020년에는 여기! 전문가들이 찍은 새해 10대 여행지 #2</b></p></a>
				<p>#2편 &lt;더 트래블러&gt; 편집부와 여행 전문가들이 여행 키워드를 바탕으로 2020년 주목해야 할 세계 3대 여행지를 선정했다. &nbsp;&nbsp;#친환경, #공유경제, #소규모투어</p>
			</div>
			<div class="col-sm-4">
				<a href="${path}overtrip/overseas3">
				<img src="resources/img/overseas/travel3/OT3_thumbnail.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>2020년에는 여기! 전문가들이 찍은 새해 10대 여행지 #3</b></p></a>
				<p>#3편 &lt;더 트래블러&gt; 편집부와 여행 전문가들이 여행 키워드를 바탕으로 2020년 주목해야 할 세계 3대 여행지를 선정했다. &nbsp;&nbsp;#친환경, #공유경제, #소규모투어</p>
				<br><br><br>
			</div>
			<div class="col-sm-4">
				<a href="${path}overtrip/overseas4">
				<img src="resources/img/overseas/travel4/OT4_thumbnail.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>이래서 연예인 미모의 여배우가 태국가서 남긴 사진...</b></p></a>
				<p>매서운 바람이 몰아치는 추운 겨울, 많은 분들이 어김없이 따듯한 휴양지로 떠나는 힐링여행을 계획하실 텐데요. 그중에서도 화려한 볼거리와 맛있는 음식으로...</p>
			</div>
			<div class="col-sm-4">
				<a href="${path}overtrip/overseas4">
				<img src="resources/img/overseas/travel4/OT4_thumbnail.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>이래서 연예인 미모의 여배우가 태국가서 남긴 사진...</b></p></a>
				<p>매서운 바람이 몰아치는 추운 겨울, 많은 분들이 어김없이 따듯한 휴양지로 떠나는 힐링여행을 계획하실 텐데요. 그중에서도 화려한 볼거리와 맛있는 음식으로...</p>
			</div>
			<div class="col-sm-4">
				<a href="${path}overtrip/overseas4">
				<img src="resources/img/overseas/travel4/OT4_thumbnail.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p><b>이래서 연예인 미모의 여배우가 태국가서 남긴 사진...</b></p></a>
				<p>매서운 바람이 몰아치는 추운 겨울, 많은 분들이 어김없이 따듯한 휴양지로 떠나는 힐링여행을 계획하실 텐데요. 그중에서도 화려한 볼거리와 맛있는 음식으로...</p>
			</div>
		</div>
	</div>
	<br><br><br><br>
	<%@ include file="/default/footer.jsp"%>
</body>
</html>