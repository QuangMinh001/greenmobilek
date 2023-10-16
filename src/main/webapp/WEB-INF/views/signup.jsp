<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<!-- variables -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>

<!-- Custome css resource file -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Signup</title>
</head>
<body style="background: rgba(220, 220, 220, 0.6)">
	<form action="${classpath }/register" method="post">
		<div class="container text-dark">
			<h2 class="text-center p-3">SIGN UP</h2>
			<div class="row">
				<div class="col-md-6">
					<div class="col-md-12">
						<label for="account" class="form-label">Tài khoản</label> <input
							type="text" id="username" name="username" class="form-control"
							aria-describedby="passwordHelpBlock" placeholder="your username">
					</div>
					<div class="col-md-12 mt-4">
						<label for="inputPassword5" class="form-label">Mật khẩu</label> <input
							type="password" id="password" name="password" class="form-control"
							aria-describedby="passwordHelpBlock" placeholder="your passsword">
							<div id="passwordHelpBlock" class="form-text">Mật khẩu có ít nhất 8 ký tự bao gồm một số và một ký tự đặc biệt.</div>
					</div>
					<div class="col-md-12 mt-4">
						<label for="inputPassword5" class="form-label">Nhập lại mật khẩu
							</label> <input type="password" id="retypePassword"
							class="form-control" aria-describedby="passwordHelpBlock"
							placeholder="retype passsword">
					</div>
					<div class="col-md-12 mt-4">
						<label for="account" class="form-label">Email</label> <input
							type="text" id="email" name="email" class="form-control"
							aria-describedby="passwordHelpBlock" placeholder="your email">
					</div>
					<div class="col-md-12 mt-4">
						<label for="account" class="form-label">Số điện thoại</label> <input
							type="text" id="phone" name="phone" class="form-control"
							aria-describedby="passwordHelpBlock" placeholder="phone number">
					</div>
					<div class="row">
						<button type="submit" class="btn btn-info ml-4 mt-2"
							style="margin-left: 82%; max-width: 100px">Register</button>
					</div>
				</div>
<%-- 				<div class="col-md-6" style="max-height: 400px">
					<img alt="" src="${classpath }/user/img/products/4.jpeg"
						class="h-55"
						style="margin-top: 40px; height: 100%; overflow: hidden;">
				</div> --%>

			</div>
		</div>
	</form>

</body>
</html>