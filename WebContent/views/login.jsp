<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
</script>
<link rel="stylesheet" href="css/nav.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/anaeyg.css">
<link rel="stylesheet" href="css/loginsign.css">
</head>
<body>
<!-- 로그인 div 시작 -->
	<div class="login-wrap">
		<form action="access" id="test-form" method="post">
			<div class="row">
				<div class="col-12">
					<h1 class="hide-fade delay-6">Login</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="input-group">
						<input type="text" name="id" /> <span class="valid-icon"></span> <label
							for="email">ID</label> <span class="bottom-border"></span>
					</div>
					<div class="input-group">
						<input type="password" class="check-password" name="pwd" /> <span
							class="valid-icon"></span> <label for="password">Password</label>
						<span class="bottom-border"></span>
					</div>
				</div>
			</div>
			<div class="row login-footer">
				<div class="col-7">
					<input type="submit" value="Login" class="btn" />
				</div>
				<div class="col-5">
					<input type="button" value="Sign Up"
						class="btn btn-pink show-signup-btn" />
				</div>
			</div>
			<div class="row login-footer">
				<div class="col-12 hide-fade delay-7">
					<a class="forgot" href="#">Forgot Password?</a> <br /> <a
						class="forgot" href='/STH_Dynamic/'>Home</a>
				</div>
			</div>
		</form>
	</div>
<!-- 로그인 div 끝 -->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script src="js/index.js"></script>
</body>
</html>