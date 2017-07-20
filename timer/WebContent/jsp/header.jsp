<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String sessionS = (String)session.getAttribute("SESSION");
	%>
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
				<a href="index.jsp"> <img src="../images/logo.png" alt="">
				</a>
			</div>
			<!-- /logo -->
		</div>
		<!-- main menu -->
		<nav class="collapse navbar-collapse navbar-right" role="navigation">
		<div class="main-menu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="surveytest.jsp">동물보기</a></li>
				<li><a href="myhome.jsp" <%
								if(sessionS!=null) {//로그인 상태
								out.print("style='display:none;'");
								}
								else {
									out.print("style='display:inline-block;'");
								}
								%>>관리자페이지</a></li>
				<li><a href="signup.jsp">가입하기</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Blog <span class="caret"></span></a>
					<div class="dropdown-menu">
						<ul>
							<li><a href="blog-fullwidth.html">Blog Full</a></li>
							<li><a href="blog-left-sidebar.html">Blog Left sidebar</a></li>
							<li><a href="blog-right-sidebar.html">Blog Right sidebar</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
		</nav>
		<!-- /main nav -->
	</div>
	</header>
</body>
</html>