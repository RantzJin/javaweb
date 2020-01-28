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
					<img src="resources/img/ch1.jpg" alt="" class = "img-responsive center-block" style="width: 1250px; height: auto;"/>
				</div>

				<div class="item" style="width: 1250px; height: 400px; overflow: hidden">
					<img src="resources/img/ch2.jpg" alt="" class = "img-responsive center-block" style="width: 1250px; height: auto;"/>
				</div>

				<div class="item" style="width: 1250px; height: 400px; overflow: hidden">
					<img src="resources/img/ch3.jpg" alt="" class = "img-responsive center-block" style="width: 1250px; height: auto;"/>
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
		<h1>Welcome My Spring Page</h1>
		<p>I don't know what to write.</p>
	</div>
	<%-- bottom div --%>
	<div class="container text-center">
		<h3>What We Do</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<img src="resources/img/ch3.jpg" class="img-responsive" style="width: 100%; height: 230px" alt="">
				<p>Current Project</p><br>
			</div>
			<div class="col-sm-4">
				<img src="resources/img/ch1.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p>Project 2</p><br>
			</div>
			<div class="col-sm-4">
				<img src="resources/img/ch1.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p>Project 2</p><br>
			</div>
			<div class="col-sm-4">
				<img src="resources/img/ch1.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p>Project 2</p>
			</div>
			<div class="col-sm-4">
				<img src="resources/img/ch1.jpg" class="img-responsive" style="width: 100%; height:230px" alt="">
				<p>Project 2</p>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<p>Some text..</p>
				</div>
				<div class="well">
					<p>Some text..</p>
				</div>
			</div>
		</div>
	</div>
	<br>
</body>
</html>