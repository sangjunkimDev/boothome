<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>동물상세정보</title>
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
<link rel="stylesheet" href="../css/main.css">
<!-- responsive css -->
<link rel="stylesheet" href="../css/responsive.css">
<!-- custom.css -->
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
<!-- 변경시작점========================================================================== -->
<!-- <script>
	//----------?뒤에있는 유기번호 파라미터 받아옴-----------------
	var urldesertionNo = document.location.href.split("=");
	var para = urldesertionNo[1];
	console.log(para);
	
	"</div><div class='portfolio-content'><table border='1px' class='table_custom'>"
	
	$(document).ready(function() {
		$.ajax({
			url : "../writecomments.TestServlet", //수정필요 유기번호를 통해 전부다셀렉트하는 서비스로 전송
			dataType : "json",//가지고 오는 데이터의 타입//"json", "xml" 도 가능
			success : function(data) {//호출 성공시
			console.log(data);
			var str;
			$.each(data, function(index, item) {
				console.log(index);
				console.log(item);
				str = "<img class='img-responsive' alt='' src="+ item.Popfile +">"//이미지 url
				+"</div><div class='portfolio-content'><table border='1px' id='table_custom'>";
				str = str +"<tr><th><h4>발견날짜</h4></th><td><h4>" +item.happenDt "</h4></td>";
				str = str +"<tr><th><h4>발견장소</h4></th><td><h4>" +item.happenPlace "</h4></td>";
				str = str +"<tr><th><h4>상태</h4></th><td><h4>" +item.processState "</h4></td>";
				str = str +"<tr><th><h4>성별</h4></th><td><h4>" +item.sexCd "</h4></td>";
				str = str +"<tr><th><h4>중성화</h4></th><td><h4>" +item.neuterYn "</h4></td>";
				str = str +"<tr><th><h4>나이</h4></th><td><h4>" +item.age "</h4></td>";
				str = str +"<tr><th><h4>몸무게</h4></th><td><h4>" +item.weight "</h4></td>";
				str = str +"<tr><th><h4>색깔</h4></th><td><h4>" +item.colorCd "</h4></td>";
				str = str +"<tr><th><h4>특징</h4></th><td><h4>" +item.specialMark "</h4></td>";
				str = str +"<tr><th><h4>보호소이름</h4></th><td><h4>" +item.careNm "</h4></td>";
				</tr>
				str = str +
				$("#mainmaker").html(str+"</table></div></div></div></div></section>";
						
				);
			});
			},
			error : function() {
				console.log("error");
			}
		});
	});
</script> -->

<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>
</head>
<!-- 변경끝점========================================================================== -->
<body>
<%@ include file="./header.jsp" %>
<%-- <% 
List<Map<String,String>> list=(List<Map<String,String>>)request.getAttribute("list"); 
	for(int i =0; i<list.size();i++){
		out.print(list.get(i));
	}
%> --%>
	<!--
        ==================================================
       	header Section Start
        ================================================== -->
	<section class="global-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<h3>새로운 동물 친구를 소개합니다</h3>
						<div class="portfolio-meta" id="headervoid">
							<span> 등록일 : 태그쓰고 db에서 가져오기</span>| <span> 보호중: 태그써서 db에서
								가져오기</span>| <span><a href="signup.jsp">회원가입</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#Page header-->

	<section class="portfolio-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="portfolio-single-img" id="mainmaker">
						<!-- 
						custom
						
						src="images/portfolio/post-1.jpg" 의 이미지를 가져오기 jsp사용 
					
                            -->
						<img class="img-responsive" alt=""
							src="../images/animal/dog/dog_04.jpg">
					</div>
					<div class="portfolio-content">
							<table border="1px" id="table_custom">
							<tr>
							<th><h4>발견날짜</h4></th>
							<td><h4>item.happenDt</h4></td>
							</tr>
							<tr>
							<th><h4>발견장소</h4></th>
							<td><h4>item.happenPlace</h4></td>
							</tr>
							<tr>
							<th><h4>상태</h4></th>
							<td><h4>item.processState</h4></td>
							</tr>
							<tr>
							<th><h4>성별</h4></th>
							<td><h4>item.sexCd</h4></td>
							</tr>
							<tr>
							<th><h4>중성화</h4></th>
							<td><h4>item.neuterYn</h4></td>
							</tr>
							<tr>
							<th><h4>나이</h4></th>
							<td><h4>item.age</h4></td>
							</tr>
							<tr>
							<th><h4>몸무게</h4></th>
							<td><h4>item.weight<h4></td>
							</tr>
							<tr>
							<th><h4>색깔</h4></th>
							<td><h4>item.colorCd</h4></td>
							</tr>
							<tr>
							<th><h4>특징</h4></th>
							<td><h4>item.specialMark</h4></td>
							</tr>
							<tr>
							<th><h4>보호소이름</h4></th>
							<td><h4>item.careNm</h4></td>
							
							</tr>
							<tr>
							<th><h4>보호소주소</h4></th>
							<td><h4>item.careAddr</h4></td>
							</tr>
							<tr>
							<th><h4>보호소번호</h4></th>
							<td><h4>item.careTel</h4></td>
							</tr>
							</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 
        ================================================== 
            Contact Section Start
        ================================================== -->
	<section id="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="block">
						<h2 class="subtitle wow fadeInDown" data-wow-duration="500ms"
							data-wow-delay=".3s">메일 보내기</h2>
						<div class="contact-form">
							<form id="contact-form" method="post" action="sendmail.php"
								role="form">
								<!--
								
								이메일 보내기
								
								-->
								<div class="form-group wow fadeInDown" data-wow-duration="500ms"
									data-wow-delay=".6s">
									<input type="text" placeholder="이름을 입력하세요" class="form-control"
										name="name" id="name">
								</div>
								<div class="form-group wow fadeInDown" data-wow-duration="500ms"
									data-wow-delay=".8s">
									<input type="email" placeholder="이메일을 입력하세요"
										class="form-control" name="email" id="email">
								</div>
								<div class="form-group wow fadeInDown" data-wow-duration="500ms"
									data-wow-delay="1s">
									<input type="text" placeholder="제목을 입력하세요" class="form-control"
										name="subject" id="subject">
								</div>
								<div class="form-group wow fadeInDown" data-wow-duration="500ms"
									data-wow-delay="1.2s">
									<textarea rows="6" placeholder="내용을 기입하세요" class="form-control"
										name="message" id="message"></textarea>
								</div>
								<div id="submit" class="wow fadeInDown"
									data-wow-duration="500ms" data-wow-delay="1.4s">
									<!-- 
									custom
									이메일 보낼때 태그걸어서 관리자 페이지에 보내기
									
									-->
									<input type="submit" id="mail-submit"
										class="btn btn-default btn-send" value="보내기">
								</div>

							</form>
						</div>
					</div>
				</div>
				<!-- 
				
				분양소 위치 보여주기 
				
				 -->
				<div class="col-md-6">
					<div class="map-area">
						<h2 class="subtitle  wow fadeInDown" data-wow-duration="500ms"
							data-wow-delay=".3s">입양소 위치</h2>
						<div class="map">
							<!-- custom -->
							<div id="map" style="width: 100%; height: 400px; border: 0"></div>
							<script type="text/javascript"
								src="//apis.daum.net/maps/maps3.js?apikey=813f5e39b246a2a99a63ea0e67fb9706&libraries=services"></script>
							<script>
								/* static var result_row;
								static var result_col; */

								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new daum.maps.LatLng(33.450701,
											126.570667), // 지도의 중심좌표
									level : 3
								// 지도의 확대 레벨
								};

								// 지도를 생성합니다    
								var map = new daum.maps.Map(mapContainer,
										mapOption);
								// 지도 타입 변경 컨트롤을 생성한다
								var mapTypeControl = new daum.maps.MapTypeControl();
								// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
								map.addControl(mapTypeControl,
										daum.maps.ControlPosition.TOPRIGHT);
								// 지도에 확대 축소 컨트롤을 생성한다
								var zoomControl = new daum.maps.ZoomControl();
								// 지도의 우측에 확대 축소 컨트롤을 추가한다
								map.addControl(zoomControl,
										daum.maps.ControlPosition.RIGHT);
								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new daum.maps.services.Geocoder();
								// 지도 중심 좌표 변화 이벤트를 등록한다
								daum.maps.event.addListener(map,
										'center_changed', function() {
											console.log('지도의 중심 좌표는 '
													+ map.getCenter()
															.toString()
													+ ' 입니다.');
										});

								///
								///////callback 객체 생성
								var callback = function(status, result) {
									// 정상적으로 검색이 완료됐으면 
									if (status === daum.maps.services.Status.OK) {
										var coords = new daum.maps.LatLng(
												result.addr[0].lat,
												result.addr[0].lng);
										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new daum.maps.Marker({
											map : map,
											position : coords
										});

										// 인포윈도우로 장소에 대한 설명을 표시합니다
										// db에서 위치 이름 가져오기
										var infowindow = new daum.maps.InfoWindow(
												{
													content : '<div style="width:150px;text-align:center;padding:6px 0;">대구시수의사회(더난)</div>'
												});
										infowindow.open(map, marker);

										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.setCenter(coords);
										// 지도 중심 좌표 변화 이벤트를 등록한다
										daum.maps.event.addListener(map,
												'center_changed', function() {
													console.log('지도의 중심 좌표는 '
															+ map.getCenter()
																	.toString()
															+ ' 입니다.');
													/* //result_row = map.getCenter().getLat().toString();
													//result_col = map.getCenter().getLng().toString();
													//document.write('<h1><a href=http://map.daum.net/link/to/대구시수의사회(더난),'+ result_row +','+ result_col +'>길찾기주소</h1>');
													document.write('<h1><a href=http://map.daum.net/link/to/대구시수의사회(더난),'+ map.getCenter().getLat() +','+ map.getCenter().getLng() +'>길찾기주소</h1>'); */
												});
									}
								};
								// 주소로 좌표를 검색합니다 //db에서 가져와 주소 붙여넣기
								geocoder.addr2coord({
									addr : '대구광역시 서구 국채보상로 176 (중리동)',
									callback : callback
								});
								//document.write('<br><br><br><br><br><br><br><br><br><br><h1><a href=http://map.daum.net/link/to/대구시수의사회(더난),'+ result_row +','+ result_col +'>길찾기주소</h1>');
							</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--
            ==================================================
            Call To Action Section Start
            입양받고 싶으면 전화해!
            ================================================== -->
	<section id="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<h2 class="title wow fadeInDown" data-wow-delay=".3s"
							data-wow-duration="300ms">이 친구를 입양받고 싶나요?</h2>
						<p class="wow fadeInDown" data-wow-delay=".5s"
							data-wow-duration="300ms">
							아래의 번호로 전화해주세요.<br>010-1234-5678
						</p>
						<a href="#" class="btn btn-default btn-contact wow fadeInDown"
							data-wow-delay=".7s" data-wow-duration="300ms">041-7123-7456</a>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- 
			
			custom
			
			 -->
	<section id="contact-section">
		<div class="container">
			<div class="row">
				<div class="row address-details" id="custom-container">
					<div class="col-md-3" id="custom-block">
						<div class="address wow fadeInLeft" data-wow-duration="500ms"
							data-wow-delay=".3s">
							<i class="ion-ios-location-outline"></i>
							<h5>
								홈페이지 사무소<br>충남대학교 <br>공학 4층건물
							</h5>
						</div>
					</div>
					<div class="col-md-3" id="custom-block">
						<div class="email wow fadeInLeft" data-wow-duration="500ms"
							data-wow-delay=".7s">
							<i class="ion-ios-email-outline"></i>
							<p>
								홈페이지 메일<br>tkdjun67@naver.com<br>52121813@dankook.ac.kr
							</p>
						</div>
					</div>
					<div class="col-md-3" id="custom-block">
						<div class="phone wow fadeInLeft" data-wow-duration="500ms"
							data-wow-delay=".9s">
							<i class="ion-ios-telephone-outline"></i>
							<p>
								홈페이지 전화번호<br>041 572 1234<br>010 9999 2222
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- footer -->
	<%@ include file="./footer.jsp"%>

</body>
</html>