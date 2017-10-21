<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/nav.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<script>
function startAjax(){
	$.ajax({
		type: "get",
		url: "jqueryAjax",
		data: { id : "taehwy",pw : "1234" },		// 전달 값
		dataType: "json",										// json, xml, html(text): 안쓰면 html
		timeout : "5000",										// 타임아웃
		success : function( data ) {						// 성공
			alert(data);
			console.log(data);
			$("#ajax_div").append(data.mbid + ',');
			$("#ajax_div").append(data.mbpwd);
		},
		error : function( error ) {							// 실패
			alert( "error" );
			console.log(error);
		}
	});
}

</script>
</head>
<body onLoad="init()">
	<%@ include file="nav.jsp"%>
	<div id="userMainInfo">${userMainInfo }</div>
	<div id="userInfo">
		<table>
			<tr>
				<td>${userInfo }</td>
			</tr>
		</table>
		<table border="1">
			<thead>
				<tr>
					<th>아이디</th>
					<th>발생일</th>
					<th>정보명</th>
					<th>상세설명</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="history" items="${history}">
					<tr>
						<td>${history.mbid}</td>
						<td>${history.date}</td>
						<td>${history.info}</td>
						<td>${history.comment}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="loginfo">
		<table>
			<tr>
				<td>${userInfo }</td>
			</tr>
		</table>
	</div>
	<form action="Mail" method="post">
		<input type="submit" value="메일 보내기">
	</form>
	<form action="Jason" method="get">
		<input type="submit" value="제이슨 추출하기">
	</form>
	<input type="button" onClick='startAjax()' value="ajax 시작하기">
	<script src="//www.google.com/jsapi"></script>
	<script>
var data = [
  ['원소', '밀도'],
  ['구리', 8.94],
  ['은', 10.49],
  ['금', 19.30],
  ['백금', 21.45],
];
var options = {
  title: '귀금속 밀도 (단위: g/cm³)',
  width: 400, height: 500
};
google.load('visualization', '1.0', {'packages':['corechart']});
google.setOnLoadCallback(function() {
  var chart = new google.visualization.PieChart(document.querySelector('#chart_div'));
  chart.draw(google.visualization.arrayToDataTable(data), options);
});
</script>
	<div id="chart_div"></div>
	<div id="ajax_div"></div>
</body>
</html>