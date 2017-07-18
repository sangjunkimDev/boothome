<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="../images/favicon.png">
<title>Timer Agency Template</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Mobile Specific Metas
        ================================================== -->
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->

<link rel="stylesheet" href="../css/bootstrap.min.css">
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
<link rel="stylesheet" href="../css/main.css?ver=1">
<!-- responsive css -->
<link rel="stylesheet" href="../css/responsive.css">

<!-- 나만의 css -->
<link rel="stylesheet" href="../css/custom.css">
<!-- Template Javascript Files
        ================================================== -->
<!-- modernizr js -->
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jquery -->
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
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
<script>
		$(document).ready(function() {
			$("#myBtn").click(function() {
				$("#myModal").modal();
			});
		});
</script>
</head>
<body>
	<!--
        ==================================================
        Header Section Start
        ================================================== -->
	<header id="top-bar" class="navbar-fixed-top animated-header">
		<div class="container">
			<div class="navbar-header">
				<!-- responsive nav button -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- /responsive nav button -->

				<!-- logo -->
				<div class="navbar-brand">
					<a href="index.jsp"> <img src="../images/logogo.png" alt="">
					</a>
				</div>
				<!-- /logo -->
			</div>
			<!-- main menu -->
			<nav class="collapse navbar-collapse navbar-right" role="navigation">
				<div class="main-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="service.html">Service</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Pages <span class="caret"></span></a>
							<div class="dropdown-menu">
								<ul>
									<li><a href="404.html">404 Page</a></li>
									<li><a href="gallery.html">Gallery</a></li>
								</ul>
							</div></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Blog <span class="caret"></span></a>
							<div class="dropdown-menu">
								<ul>
									<li><a href="blog-fullwidth.html">Blog Full</a></li>
									<li><a href="blog-left-sidebar.html">Blog Left sidebar</a></li>
									<li><a href="blog-right-sidebar.html">Blog Right
											sidebar</a></li>
								</ul>
							</div>
					</ul>
				</div>
			</nav>
			<!-- /main nav -->
		</div>
	</header>

	<!--
        ==================================================
        Slider Section Start
        ================================================== -->
	<section id="hero-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="block wow fadeInUp" data-wow-delay=".3s">

						<!-- Slider -->
						<section class="cd-intro">
							<h1 class="wow fadeInUp animated cd-headline slide"
								data-wow-delay=".4s">
								<span>반갑습니다</span> <span class="cd-words-wrapper"> <b
									class="is-visible">고양이집사</b> <b>강아지집사</b> <b>개성파 집사</b>
								</span> <span>여러분</span><br>
							</h1>
						</section>
						<!-- cd-intro -->
						<!-- /.slider -->
						<h2 class="wow fadeInUp animated" data-wow-delay=".6s">
							저희는 새로운 인생을 드리기 위해 반려 동물 친구들을 분양해줍니다.<br> 또한 분양은 동물에게도 새로운
							인생을 줍니다.<br> 유기된 우리 동물 친구들과 함께 새로운 인생을 살아보세요!
						</h2>
						<a
							class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green"
							data-wow-delay=".9s" href="#works" data-section="#works"> 새로온
							동물 보러가기!</a>
						<!-- custom
							 가입하는 사이트로 연결 
							 현재는 목록사이트임
							 -->
						<a href="signup.jsp" data-wow-delay=".9s"
							class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green">
							가입하고 더 많은 동물 보러가기!</a>
							
							
							
							
							
							
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green" id="myBtn">Login</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 0px">
						<button type="button" class="close" data-dismiss="modal" style="margin-top: 0px">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-lock"></span> Login
						</h4>
					</div>
					<div class="modal-body" style="padding: 40px 50px;">
						<form role="form">
							<div class="form-group">
								<input type="text"
									class="form-control" id="id" placeholder="ID를 입력하세요">
							</div>
							<div class="form-group">
								<input
									type="text" class="form-control" id="psw" placeholder="비밀번호를 입력하세요">
							</div>
							<button type="submit" class="btn btn-success btn-block">
								<span class="glyphicon glyphicon-off"></span> Login
							</button>
							<button type="submit" id="login_face" class="btn btn-success btn-block">
								<span class="glyphicon glyphicon-off"></span> Facebook Login
							</button>
						</form>
					</div>
					<div class="modal-footer">
						<p>
							아직 가입안하셨나요? <a href="#">가입하기</a>
						</p>
					</div>
				</div>
			
		</div>
	</div>
							
							
							
							
							
							
							
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="block wow fadeInUp" data-wow-delay=".3s">
	Trigger the modal with a button
						<button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>

						Modal
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">
								Modal content
								<div class="modal-content">
									<div class="modal-header" style="padding: 35px 50px;">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>
											<span class="glyphicon glyphicon-lock"></span> Login
										</h4>
									</div>
									<div class="modal-body" style="padding: 40px 50px;">
										<form role="form">
											<div class="form-group">
												<label for="usrname"><span
													class="glyphicon glyphicon-user"></span> ID</label> <input
													type="text" class="form-control" id="id"
													placeholder="ID를 입력하세요">
											</div>
											<div class="form-group">
												<label for="psw"><span
													class="glyphicon glyphicon-eye-open"></span> Password</label> <input
													type="text" class="form-control" id="psw"
													placeholder="비밀번호를 입력하세요">
											</div>
											<button type="submit" class="btn btn-success btn-block">
												<span class="glyphicon glyphicon-off"></span> Login
											</button>
											<button type="submit" id="login_face"
												class="btn btn-success btn-block">
												<span class="glyphicon glyphicon-off"></span> Facebook Login
											</button>
										</form>
									</div>
									<div class="modal-footer">
										<p>
											아직 가입안하셨나요? <a href="#">가입하기</a>
										</p>
										<p>
											비밀번호를 잊어버리셨나요? <a href="#">비밀번호찾기</a>
										</p>
									</div>
								</div>
							</div>
						</div>
	</div></div></div></div></section> -->

	<!--
            ==================================================
            Slider Section Start
            ================================================== -->
	<!--
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="block wow fadeInLeft" data-wow-delay=".3s"
						data-wow-duration="500ms">
						<h2>설문 조사를 하셔야 더 많은 동물을 볼수 있어요!</h2>
						<p>하하하하하하</p>
						<p>호호호호호호</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="block wow fadeInRight" data-wow-delay=".3s"
						data-wow-duration="500ms">
						<img src="images/about/about2.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	 -->
	<!-- /#about -->
	<!--
            ==================================================
            Portfolio Section Start
            새로운 동물 소개 섹션
            ================================================== -->
	<section id="works" class="works">
		<div class="container">
			<div class="section-heading">
				<h1 class="title wow fadeInDown" data-wow-delay=".3s">New Face</h1>
				<p class="wow fadeInDown" data-wow-delay=".5s">
					<br>
				</p>
			</div>
			<div class="row">

				<%
					int i = 0;
					for (i = 0; i < 15; i++) {
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
	<!-- #works -->

	<!--
            ==================================================
            Footer Section Start
            ================================================== -->
	<footer id="footer">
		<div class="container">
			<div class="col-md-8">
				<p class="copyright">
					Copyright: <span>2015</span> . Design and Developed by <a
						href="http://www.Themefisher.com">Themefisher</a>
				</p>
			</div>
			<div class="col-md-4">
				<!-- Social Media -->
				<ul class="social">
					<li><a href="http://wwww.fb.com/themefisher" class="Facebook">
							<i class="ion-social-facebook"></i>
					</a></li>
					<li><a href="http://wwww.twitter.com/themefisher"
						class="Twitter"> <i class="ion-social-twitter"></i>
					</a></li>
					<li><a href="#" class="Linkedin"> <i
							class="ion-social-linkedin"></i>
					</a></li>
					<li><a href="http://wwww.fb.com/themefisher"
						class="Google Plus"> <i class="ion-social-googleplus"></i>
					</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- /#footer -->

</body>
</html>