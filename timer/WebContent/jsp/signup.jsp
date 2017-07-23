<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>회원가입</title>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Custom style -->
<link rel="stylesheet" href="../css/custom.css" media="screen"
	title="no title" charset="utf-8">
<script src="../js/bootstrap.min.js"></script>
<!-- jquery -->
<script src="../js/jquery.min.js"></script>
<script type="text/javascript">
	// 필수 입력정보가 입력되었는지 확인하는 함수들
	function checkValue() {
		if (!document.user.email.value) {
			alert("이메일을 입력하세요.");
			return false;
		}
		if (!document.user.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.user.password.value != document.user.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if (!document.user.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (!(document.user.birth.value.length==8)) {
			alert("생년월일을 입력하세요.");
			return false;
		}

	}
	
	// AJAX 연습
	$(function() {
		$("#emailcheck").click(function() {
			$.ajax({
				url : "http://52.78.31.250:8080/WebProject2/register.puppy",
				data : {
					"email" : $("#email").val()
				},//보내는 데이터
				dataType : "text",//가지고 오는 데이터의 타입//"json", "xml" 도 가능
				success : function(data) {//호출 성공시
					console.log("success");
					console.log(data);
					if(data==0)
						$("#checkresult").html("중복됨").css("color","red");
					else
						$("#checkresult").html("사용가능").css("color","blue");
				},
				error : function() {//호출 실패시
					console.log("error");
				}
			});
		});
	});
</script>
</head>
<body>
	<form action="surveytest.jsp" method="post" name="user"
		onsubmit="return checkValue()" enctype="multipart/form-data">
		<article class="container">
			<div class="page-header">
				<h1>회원가입</h1>
			</div>
			<div class="col-md-6 col-md-offset-3">
				<form role="form">
				<!-- method="post" action="surveytest2.jsp"    -->
					<div class="form-group">
						<label for="InputEmail">*이메일 주소</label> <input type="email"
							class="form-control" name="email" id="email" placeholder="이메일 주소"
							maxlength="50">
							<input type="button" value="중복확인" id="emailcheck">
							<span id="checkresult"></span>
					</div>
					<div class="form-group">
						<label for="InputPassword1">*비밀번호</label> <input type="password"
							class="form-control" id="password" name="password" placeholder="비밀번호"
							maxlength="50">
					</div>
					<div class="form-group">
						<label for="InputPassword2">*비밀번호 확인</label> <input
							type="password" class="form-control" id="passwordcheck"
							placeholder="비밀번호 확인" maxlength="50">
						<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
					</div>
					<div class="form-group">
						<label for="username">*이름</label> <input type="text"
							class="form-control" name="name" placeholder="이름을 입력해 주세요"
							maxlength="50">
					</div>
					<div class="form-group">
						<label for="username">*성별</label> <input type="radio"
							name="gender" value="male" checked>남 <input type="radio"
							name="gender" value="female">여
					</div>
					<div class="form-group">
						<label for="username">*생년월일</label> <input type="text"
							class="form-control" id="birth" name="born" placeholder="예)20101213"
							maxlength="8">
					</div>
					<!-- <div class="form-group">
						<label for="username">프로필사진</label> <input type="file"
							class="form-control" name="profile" maxlength="200">
					</div>		 -->			
					<div class="form-group text-center">
						<button type="submit" class="btn btn-info" id="regist">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						
						<a href="index.jsp"><button type="button" class="btn btn-warning" id="fault">
							가입취소<i class="fa fa-times spaceLeft"></i>
						</button></a>
					</div>
				</form>
			</div>
		</article>
	</form>
</body>
</html>
