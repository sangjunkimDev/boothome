<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>bootstrap template</title>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Custom style -->
<link rel="stylesheet" href="../css/custom.css" media="screen"
	title="no title" charset="utf-8">
<script src="../js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
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
</script>

</head>
<body>

	<form method="post" action="shophome.jsp" name="user"
		onsubmit="return checkValue()">
		<article class="container">
			<div class="page-header">
				<h1>회원가입</h1>
			</div>
			<div class="col-md-6 col-md-offset-3">
				<form role="form">
					<div class="form-group">
						<label for="InputEmail">*이메일 주소</label> <input type="email"
							class="form-control" id="email" placeholder="이메일 주소"
							maxlength="50">
					</div>
					<div class="form-group">
						<label for="InputPassword1">*비밀번호</label> <input type="password"
							class="form-control" id="password" placeholder="비밀번호"
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
							class="form-control" id="name" placeholder="이름을 입력해 주세요"
							maxlength="50">
					</div>
					<div class="form-group">
						<label for="username">*성별</label> <input type="radio"
							name="gender" value="남" checked>남 <input type="radio"
							name="gender" value="여">여
					</div>
					<div class="form-group">
						<label for="username">*생년월일</label> <input type="text"
							class="form-control" id="birth" placeholder="예)20101213"
							maxlength="8">
					</div>
					<div class="form-group">
						<label for="username">프로필사진</label> <input type="file"
							class="form-control" id="profile_photo" maxlength="200">
					</div>
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
