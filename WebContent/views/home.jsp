<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/nav.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<script>
function init() {
	var accessForm = document.getElementById("accessForm");
	var loginForm = document.getElementById("loginForm");
	var userInfo = document.getElementById("userInfo");
	var userGeneralInfo = document.getElementById("userGeneralInfo");
	var state = '${mbid}';

	if (state == "") {
		accessForm.style.display = "block";
		loginForm.style.display = "block";
		userInfo.style.display = "none";
		userGeneralInfo.style.display = "none";
	} else {		
		accessForm.style.display = "none";
		loginForm.style.display = "none";
		userInfo.style.display = "block";
		userGeneralInfo.style.display = "block";
	}
}
</script>
</head>
<body onLoad="init()">
	<%@ include file="nav.jsp"%>
	${serverTime } ${result }
</body>
</html>