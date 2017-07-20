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
<!-- 나만의 css -->
<link rel="stylesheet" href="../css/custom.css">
<!-- Template Javascript Files
<!-- jquery -->
<script src="../js/jquery.min.js"></script>
<!-- bootstrap js -->
<script src="../js/bootstrap.min.js"></script>
<!--================================================== -->
</head>
<body>
	<%@ include file="./header.jsp"%>

	<div class="container">
		<form class="form-horizontal" id="survey" action="shophome.jsp"  >
		<!-- method="post" -->
		<!-- 
		surveytest2.jsp?typesite=2&address=경기도&useageboxes=1&useageboxes=2&useageboxes=3&submitfull=
		 -->
			<fieldset>
				<!-- Form Name -->
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

				<!-- Select Basic -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="typesite">
						무슨 일로 오셨나요?</label>
					<div class="col-md-4">
						<select id="typesite" name="typesite" class="form-control">
							<option value="1">잃어버린 동물을 찾기 위해서</option>
							<option value="2">동물을 입양을 하고 싶어서</option>
							
						</select>
					</div>
				</div>

				
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="address">
					거주지입력</label>
					<div class="col-md-4">
						<input id="address" name="address" type="text"
							placeholder="예)충청남도"
							class="form-control input-md" maxlength="10">

					</div>
				</div>

				<!-- Multiple Checkboxes -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="useageboxes">
					입양받기 원하시는 동물</label>
					<div class="col-md-4">
						<div class="checkbox">
							<label for="useageboxes-0"> <input type="checkbox"
								name="useageboxes" id="useageboxes-0" value="1">
								강아지
							</label>
						</div>
						<div class="checkbox">
							<label for="useageboxes-1"> <input type="checkbox"
								name="useageboxes" id="useageboxes-1" value="2">
								고양이
							</label>
						</div>
						<div class="checkbox">
							<label for="useageboxes-2"> <input type="checkbox"
								name="useageboxes" id="useageboxes-2" value="3">
								개성강한동물(예:돼지,토끼 등등)
							</label>
						</div>
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submitfull"><span
						style="font-size: 110%; color: blue;">
						</span></label>
					<div class="col-md-6">
						<button type="submit" id="submitfull" name="submitfull" class="btn btn-primary"
							style="width: 360px;">등록</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
</body>