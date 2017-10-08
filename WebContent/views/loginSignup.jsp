<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/nav.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/anaeyg.css">
<link rel="stylesheet" href="css/loginsign.css">

<script>
</script>
</head>
<body>
<%-- <%@ include file="signup.jsp"%> --%>
<!-- 회원가입 div 시작 -->
	<div class="absolute-wrap-signup">
		<div class="signup-wrap">
			<div class="row">
				<div class="col-12">
					<h1 class="hide-fade">Sign Up</h1>
				</div>
			</div>
			<form action="Join" method="post">
			<h3 style="color:Tomato;">${message }</h3>
				<div class="row">
					<div class="col-12">
						<div class="input-group hide-down">
						<input type="text" class="check-email" name="mbid" /> <span
								class="valid-icon"></span> <label for="email">Email(id)</label>
							<span class="bottom-border"></span>							
						</div>
						<div class="input-group">
							<input type="text" name="mbname" /> <span class="valid-icon"></span>
							<label for="name">Name</label> <span class="bottom-border"></span>
						</div>
						<div class="input-group">
							<input type="text" class="check-email" name="mbnick" /> <span
								class="valid-icon"></span> <label for="email">NickName</label>
							<span class="bottom-border"></span>
						</div>
						<div class="input-group">
							<input type="password" class="check-password" name="mbpwd" /> <span
								class="valid-icon"></span> <label for="password">Password</label>
							<span class="bottom-border"></span>
						</div>
						<div class="input-group hide-up">
							<input type="password" class="check-equal" /> <span
								class="valid-icon"></span> <label for="password">Verify
								Password</label> <span class="bottom-border"></span>
						</div>
					</div>
				</div>
				<div class="row login-footer">
					<div class="col-7">
						<input type="submit" value="Sign Up" class="btn" />
					</div>
					<div class="col-5">
						<input type="button" value="Login"
							class="btn btn-pink hide-signup-btn" />
					</div>
				</div>
				<br /> <a class="forgot" href='/'>Home</a>
			</form>
		</div>
	</div>
<!-- 회원가입 div 끝 -->
<%-- <%@ include file="login.jsp"%> --%>
<!-- 로그인 div 시작 -->
	<div class="login-wrap">
		<form action="Access" id="test-form" method="post">
			<div class="row">
				<div class="col-12">
					<h1 class="hide-fade delay-6">Login</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="input-group">
						<input type="text" name="mbid" /> <span class="valid-icon"></span> <label
							for="email">ID</label> <span class="bottom-border"></span>
					</div>
					<div class="input-group">
						<input type="password" class="check-password" name="mbpwd" /> <span
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
						class="forgot" href='/'>Home</a>
				</div>
			</div>
		</form>
	</div>
<!-- 로그인 div 끝 -->
	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script src="js/index.js"></script>
</body>
</html>