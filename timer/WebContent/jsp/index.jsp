<%@page import="java.io.Console"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
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
<title>HappyPuppy</title>
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

<link rel="stylesheet" href="../css/bootstrap.css">
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
<script src="../js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jquery -->
<script src="../js/jquery.min.js"></script>
<!-- owl carouserl js -->
<script src="../js/owl.carousel.min.js"></script>
<!-- bootstrap js -->

<script src="../js/bootstrap.min.js"></script>
<!-- wow js -->
<script src="../js/wow.min.js"></script>
<!-- slider js -->
<script src="../js/slider.js"></script>
<script src="../js/jquery.fancybox.js"></script>
<!-- template main js -->
<script src="../js/main.js"></script>
<script>
//--------------------------변경시작점---------------------------------------------------------------------------------------
	$(document).ready(function() {
		$("#myBtn").click(function() {
			$("#myModal").modal();
			$("#email").focusout(function() {
				if ($("#email").val() == "") {
					$("#emailnull").html("<h4>아이디를 입력하세요</h4>").css("color","red");
					event.preventDefault();
				}
			});
			$("#password").focusout(function() {
				if ($("#password").val() == "") {
					$("#passwordnull").html("<h4>비밀번호를 입력하세요</h4>").css("color","red");
					event.preventDefault();
				}
			});
			$("#form_login").submit(function(event) {
				if (($("#email").val() == "") || ($("#password").val() == "")) {
					event.preventDefault();
					location.reload();	
				} else {
					$("#form_login").submit();
				}
			});
		});
		//==========모달로그인 끝=====================================================
		//==========json 받기 시작=====================================================
	
		
		
		
		
		
		
	});
	//--------------------------변경종료점--------------------------------------------------------------------------
</script>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>
</head>
<body>
	<%@ include file="./header.jsp"%>
<%-- 	<% 
	List<Map<String,String>> list=(List<Map<String,String>>)request.getAttribute("list"); 
	for(int i =0; i<list.size();i++){
		out.print(list.get(i));
	}
%> --%>
	<!-- String sessionS = (String) session.getAttribute("SESSION"); -->
	<!-- 

if(session==null) {//로그아웃 상태
	
}
else {//로그인 상태
	
}
session.removeAttribute("SESSION");
session.invalidate();
 -->
	<!--
        ==================================================
        Slider Section Start
        로그아웃에서 세션 종료하는 거 만들기
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
									class="is-visible">고양이 집사</b> <b>강아지 집사</b> <b>개성파 집사</b>
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
							동물 보러가기!</a> <a
							href="http://52.78.31.250:8080/WebProject2/register.puppy"
							data-wow-delay=".9s"
							class="btn-lines dark light wow fadeInUp btn btn-green"
							<%if (sessionS == null) {//로그아웃상태
				out.print("style='display:inline-block;'");
			} else {//로그인상태
				out.print("style='display:none;'");
			}%>>가입하고
							더 많은 동물 보러가기!</a> <a
							href="http://52.78.31.250:8080/WebProject2/recommend.puppy"
							data-wow-delay=".9s"
							class="btn-lines dark light wow fadeInUp btn btn-green"
							<%if (sessionS == null) {//로그아웃상태	
				out.print("style='display:none;'");
			} else {//로그인상태
				out.print("style='display:inline-block;'");
			}%>>더
							많은 동물 보러가기!</a>
						<!--
						슬라이더 버튼 
						-->
						<!-- Trigger the modal with a button -->
						<button type="button" data-wow-delay=".9s"
							class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green"
							id="myBtn"
							<%if (sessionS == null) {//로그아웃상태
				out.print("style='display:inline-block;'");
			} else {//로그인상태
				out.print("style='display:none;'");
			}%>>Login</button>

						<button type="button" data-wow-delay=".9s" id="logout"
							onclick="location.href='http://52.78.31.250:8080/WebProject2/logout.puppy'"
							class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green"
							<%if (sessionS == null) {//로그아웃 상태
				out.print("style='display:none;'");
			} else {
				out.print("style='display:inline-block;'");
			}%>>Logout</button>
						</a>
						<!-- Modal -->
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header" style="padding: 0px">
										<button type="button" class="close" data-dismiss="modal"
											style="margin-top: 0px">&times;</button>
										<h4>
											<span class="glyphicon glyphicon-lock"></span> Login
										</h4>
									</div>
									<div class="modal-body" style="padding: 40px 50px;">
										<!-- 
										
										변경시작점	-----------------------------------------------------------
										
										-->
										<form role="form"
											action="http://52.78.31.250:8080/WebProject2/login.puppy"
											method="post" 
											id="form_login">
											<div class="form-group">
												<input type="text" class="form-control" id="email"
													name="email" placeholder="email을 입력하세요">
											</div>
											<div id="emailnull" style="font-color:red"></div>
											<div class="form-group">
												<input type="password" class="form-control" id="password"
													name="password" placeholder="비밀번호를 입력하세요">
											</div>
											<div id="passwordnull" style="font-color:red"></div>
											<div></div>
											<button type="submit" class="btn btn-success btn-block">
												<span class="glyphicon glyphicon-off"></span> Login
											</button>
											<button type="submit" id="login_face"
												class="btn btn-success btn-block">
												<span class="glyphicon glyphicon-off"></span> Facebook Login
											</button>
										</form>
										<!-- 
										
										변경끝난점	------------------------------------------------------------------
										
										-->
									</div>
									<div class="modal-footer">
										<p>
											아직 가입안하셨나요? <a
												href="signup.jsp">가입하기</a>
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
	<!-- footer -->
	<%@ include file="./footer.jsp"%>
</body>
</html>