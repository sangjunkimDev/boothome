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

<title>동물리스트</title>

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
<script src="../js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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
		//==========json 날짜 검색 후 받기 시작=====================================================
	$("#dayselect").click(function() {
		$.ajax({
			url : "../writecomments.TestServlet", //수정필요 where 날짜로 셀렉트하는 서비스로 전송
			data : {
				"bgnde" : $("#bgnde").val(),
				"endde" : $("#endde").val(),
			},//보내는 데이터
			dataType : "json",//가지고 오는 데이터의 타입//"json", "xml" 도 가능
			success : function(data) {//호출 성공시
			console.log(data);
			var str;
			$.each(data, function(index, item) {
				console.log(index);
				console.log(item);
				str = "<img src=" + item.Popfile + " class='img-responsive' alt='this is a title'>"//이미지 url
				+"</div><figcaption><h4><br><br><br><br><br><br>";
				str = str + "<a href=서블릿이름?desertionNo=" + item.DesertionNo + ">" + item.ProcessState + "</a></h4><br>";//유기번호,상태(종료,입양)
				str = str + "<p>" + item.CareAddr + "</p>";//보호장소
				if (index % 3 == 0) {
						str = str + "<br><br>";
				}
				$("#listmaker").html("<div class='col-sm-4 col-xs-12'><figure class='wow fadeInLeft animated portfolio-item'"
						+" data-wow-duration='500ms' data-wow-delay='0ms'><div class='thumbnail-wrapper'><div class='thumbnail'><div class='centered'>"
						+ str
						+"</figcaption></div></div></figure></div>"
				);
			});
			},
			error : function() {
				console.log("error");
			}
		});
	});
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
<% 
List<Map<String,String>> list=(List<Map<String,String>>)request.getAttribute("list"); 
	for(int i =0; i<list.size();i++){
		out.print(list.get(i).get("popfile"));
	}

%>
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
					<!-- 변경됨 링크를 서블릿으로 바꾸기 -->
					<a href="index.jsp?upkind=417000" class="list-group-item">강아지</a> <a
						href="?upkind=422400" class="list-group-item">고양이</a> <a
						href="?upkind=429900" class="list-group-item">개성동물</a>
				</div>
				<!--------추가됨 시작-------------------------------->
				<fieldset>
					<legend>날짜로 검색</legend>
					<ul>
						<li>시작날짜 : <input type="text" name="bgnde" id="bgnde"
							maxlength="8" placeholder="20170720"></li>
						<li>종료날짜 : <input type="text" name="endde" id="endde"
							maxlength="8" placeholder="20170721"></li>
					</ul>
					<input type="button" id="dayselect" value="검색하기">
				</fieldset>
				<!--------추가됨 끝-------------------------------->
			</div>
		</div>
	</div>


	<!-- 변경점---------------------------------------------------------------------------------- -->

	<section id="works" class="works">
		<div class="container">
			<div class="row" id="listmaker">
				<!-- id="listmaker"추가 -->
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
									<%-- 	<%db에서 받은 이미지 경로추가%> --%>
									<img src="<% %>../images/animal/dog/dog_04.jpg"
										class="img-responsive" alt="this is a title">
								</div>
								<figcaption>
									<h4>
										<br> <br> <br> <br> <br> <br>
										<%-- <% if(로그인이 되있으면 <a href="portfolio.jsp">
										아니라면 가입 하는 페이지로 보내기%>  --%>

										<a href="<% %>portfolio.jsp?desertionNo=222">
										<% %>보호중</a>
									</h4>
									<br>
									<p><%  %>경기도 고양시 덕양구 고양대로 1695 (원흥동, 고양시 농업기술센터) 고양시동물보호센터</p>
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
				<%
					/* j는 데이터의 양에 따라서 j < data.size 사용 */
					int j = 0;
					for (j = 1; j < 6; j++) {

						out.print("<li><a href='123'>" + j + "</a></li>");
					}
				%>
			</ul>
		</div>
	</section>
	<!-- /.container -->
	<!-- footer -->
	<%@ include file="./footer.jsp"%>
</body>

</html>
