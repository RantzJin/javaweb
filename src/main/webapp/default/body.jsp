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
<%-- Carousel slide --%>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active" style="width: 1250px; height: 400px; overflow: hidden">
					<img src="resources/img/main1.jpg" alt="" class = "img-responsive center-block" style="width: 1250px; height: 600px;"/>
				</div>

				<div class="item" style="width: 1250px; height: 400px; overflow: hidden">
					<img src="resources/img/main2.jpg" alt="" class = "img-responsive center-block" style="width: 1250px; height: 600px;"/>
				</div>

				<div class="item" style="width: 1250px; height: 400px; overflow: hidden">
					<img src="resources/img/main3.jpg" alt="" class = "img-responsive center-block" style="width: 1250px; height: 600px;"/>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div><br>

	<%-- jumbotron --%>
	<div class="jumbotron text-center" >
		<h1>Life is either a daring adventure or nothing</h1><br><br>
		<p style="font-size:20px">인생은 과감한 모험이던가, 아니면 아무 것도 아니다.</p>
		<p style="font-size:15px">헬렌 켈러 - Helen Adams Keller</p>
	</div>
	<%-- bottom div --%>
	<div class="container text-center">
		<h3>추천 여행지</h3>
		<br>
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
		</div>
	</div>
	<br>
</body>
</html>