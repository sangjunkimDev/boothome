<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="../images/favicon.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Ionicons Fonts Css -->
<link rel="stylesheet" href="../css/ionicons.min.css">
<!-- animate css -->
<link rel="stylesheet" href="../css/animate.css">
<!-- Hero area slider css-->
<link rel="stylesheet" href="../css/slider.css">
<!-- owl craousel css -->
<link rel="stylesheet" href="../css/owl.carousel.css">
<link rel="stylesheet" href="../css/owl.theme.css">
<link rel="stylesheet" href="../css/jquery.fancybox.css">
<!-- template main css file -->
<link rel="stylesheet" href="../css/main.css">
<!-- responsive css -->
<link rel="stylesheet" href="../css/responsive.css">
<!-- custom.css -->
<link rel="stylesheet" href="../css/custom.css">
<!-- Template Javascript Files
        ================================================== -->
<!-- modernizr js -->
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- owl carouserl js -->
<script src="js/owl.carousel.min.js"></script>
<!-- bootstrap js -->

<script src="../js/bootstrap.min.js"></script>
<!-- wow js -->
<script src="js/wow.min.js"></script>
<!-- slider js -->
<script src="js/slider.js"></script>
<script src="js/jquery.fancybox.js"></script>
<!-- template main js -->
<script src="js/main.js"></script>
</head>

<body>
<%@ include file="./header.jsp" %>
	
	<!--
        ==================================================
        가운데 상단 카테고리
        ================================================== -->
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="section-heading">
				<br> <br> <br> <br> <br> <br>
				<h2 class="title wow fadeInDown" data-wow-delay=".3s">동물 종류</h2>
				<p class="wow fadeInDown" data-wow-delay=".5s"></p>
				<br>
				<div class="list-group">
					<a href="" class="list-group-item">강아지</a> <a href=""
						class="list-group-item">고양이</a> <a href="" class="list-group-item">개성동물</a>
				</div>

			</div>
		</div>
	</div>




	<section id="works" class="works">
		<div class="container">
			<div class="row">
				<%
					int i = 0;
					for (i = 0; i < 15; i++) {
						/* if문 추가해서 받아온 데이터가 있으면 추가  */
				%>
				<div class="col-sm-4 col-xs-12">
					<figure class="wow fadeInLeft animated portfolio-item"
						data-wow-duration="500ms" data-wow-delay="0ms">
						<div class="thumbnail-wrapper">
							<div class="thumbnail">
								<div class="centered">
									<%-- <%db에서 받은 이미지 경로추가%> --%>
									<img src="../images/animal/dog/dog_04.jpg"
										class="img-responsive" alt="this is a title">
								</div>
								<figcaption>
									<h4>
										<br> <br> <br> <br> <br> <br>
										<%-- 
										<% if(로그인이 되있으면 <a href="portfolio.jsp">
										아니라면 가입 하는 페이지로 보내기%> 
										--%>
										<a href="portfolio.jsp"> 보호중</a>
									</h4>
									<br>
									<p>경기도 고양시 덕양구 고양대로 1695 (원흥동, 고양시 농업기술센터) 고양시동물보호센터</p>
									<%
										if (i % 3 == 2) {
												out.print("<br><br>");
											}
									%>
								</figcaption>
							</div>
						</div>
					</figure>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</section>
	
	<section>
		<div class="container">
			<ul class="pagination">
			<%/* j는 데이터의 양에 따라서 j < data.size 사용 */
			int j=0;
				for(j=1;j<6;j++) {
					
					out.print("<li><a href='123'>"+j+"</a></li>");
				}
			%>
			</ul>
		</div>
	</section>
	<!-- /.container -->
	<div class="container">
		<hr>
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Website 2014</p>
				</div>
			</div>
		</footer>
	</div>
</body>

</html>
