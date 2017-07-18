<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
		$(document).ready(function() {
			$("#myBtn").click(function() {
				$("#myModal").modal();
			});
		});
</script>
<style>
.modal-header h4, .close {
	background-color: #02bdd5;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #02bdd5;
}

#login_face{
	background-color: rgb(2, 89, 213);
}
</style>
</head>
<body>
	<div class="container">
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green" id="myBtn">Login</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
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
									class="glyphicon glyphicon-user"></span> ID</label> <input type="text"
									class="form-control" id="id" placeholder="ID를 입력하세요">
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

</body>
</html>