<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class='greedy-nav'>
	<ul class='visible-links'>
		<li class='nav-home'><a href='/'>Home</a></li>		
		<li><div id="accessForm"><a href='logSign'>회원가입</a></div></li>	
		<li><div id="userInfo"><a href='MemberInfo'>회원정보</a></div></li>
		<li><a href='Play'>play</a>
<!-- 			<ul> -->
<!-- 				<li><a href="#">길드</a></li> -->
<!-- 				<li><a href="#">채팅</a></li> -->
<!-- 			</ul> -->
		</li>
		<li><a href='#'>wiki</a></li>
		<li><a href='#'>행동 정산</a></li>
	</ul>
	<div id='loginForm'style='display:inline; float:right;margin-top:10px;'>
		<form action='Access' method='post'>
		<input type = 'text' placeholder='ID' name='mbid'/>
		<input type = 'password' placeholder='Password' name='mbpwd'/>
		<br/>
		<input type ='submit' value='로그인'/>
		</form>
	</div>
	<div id='userGeneralInfo'style='display:inline; float:right;margin-top:10px;'>
		<input type='hidden' value=${mbid } readOnly/>
	</div>
</nav>
