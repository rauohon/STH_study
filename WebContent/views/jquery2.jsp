<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Practice : jQuery Selector & Action
		1. 첫 페이지 로딩 시 [역사자료]만 화면 출력
		2. 로딩 후 다섯 개의 제목을 클릭할 경우 해당 자료 영역만 화면에 출력
		3. 제목은 마우스 오버 시 색상 변화 주기(마우스리브시 원상 복구)
		*** td:nth-child(순번) 참조
		4. 특정 분야의 모든 테이블은 게시글을 구분할 수 있는 css지정
		5. 특정 분야의 모든 테이블의 특정 게시글에 마우스오버되었을 경우 
		   글씨를 두껍게 처리 마우스리브시 원상복구
	-->
<style>
.hover {
	font-weight: bold;
	background-color: tomato;
}
#board1 {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#borad1 {
    padding: 50px;
    display: none;
}
</style>
<script>
	$(document).ready(
			function() {
				$("div[id*='board'] tr:odd").css("backgroundColor", "gray");
				$("div[id*='board']").hide();
				$("#board3").show();
				$("div[id*='board'] table tr").hover(function() {
					$(this).toggleClass("hover");
				});
				$(".tab tr td").on(
						{
							mouseenter : function() {
								$(this).css("background-color", "gray");
							},
							click : function() {
								var choose = $(this);
								$("div[id*='board']").hide().eq(
										choose.index(".tab tr td")).show();
							},
							mouseleave : function() {
								$(this).css("background-color", "white");
							}
						});
				
				$("input.fade").click(function() {
					$("h2").fadeToggle();
					$(".business").fadeToggle(5000);
					$("#contents").fadeToggle("slow");
					$("input[name='user']").fadeToggle("fast");
					$("this").fadeToggle(10000, popup());
				});

				$("input.fadeTo[value='FADE-OUT']").click(function() {
					$("h2").fadeTo(3000, 0.3);
				});

				$("input.fadeTo[value='FADE-IN']").click(function() {
					$("h2").fadeTo(3000, 1);

				});
				
				$("#title").click(function() {
					$("#board1").slideToggle("slow");
				});
			});
	 function popup() {
			alert("외부 함수 호출");
		}
</script>
</head>
<body>
	<h2>ICIA 교육원</h2>

	<p class="business">제4차 산업혁명 선도인력 양성 사업</p>

	<div id="contents">IoT 센서 데이터를 활용한 수치 정보 시각화 과정</div>
	<input type="text" name="user" placeholder="유저명" />
	<br />
	<button>개체 숨기기</button>
	<input type="button" class="toggle" value="개체 Hide/Show" />
	<input type="button" class="fade" value="FADE-TOGGLE" />
	<input type="button" class="fadeTo" value="FADE-OUT" />
	<input type="button" class="fadeTo" value="FADE-IN" />
	<div>
		<table class="tab">
			<tr>
				<td id="1">여행</td>
				<td id="2">공학</td>
				<td id="3">역사</td>
				<td id="4">생활</td>
				<td id="5">쇼핑</td>
			</tr>
		</table>
	</div>
	<div id="board1">
		<table>
			<tr>
				<th colspan="5">여행자료</th>
			</tr>
			<tr>
				<td>1</td>
				<td>프랑스 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-09</td>
				<td>5</td>
			</tr>
			<tr>
				<td>2</td>
				<td>영국 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-10</td>
				<td>50</td>
			</tr>
		</table>
	</div>
	<div id="board2">
		<table>
			<tr>
				<th colspan="5">공학 자료</th>
			</tr>
			<tr>
				<td>1</td>
				<td>프랑스 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-09</td>
				<td>5</td>
			</tr>
			<tr>
				<td>2</td>
				<td>영국 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-10</td>
				<td>50</td>
			</tr>
		</table>
	</div>
	<div id="board3">
		<table>
			<tr>
				<th colspan="5">역사 자료</th>
			</tr>
			<tr>
				<td>1</td>
				<td>프랑스 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-09</td>
				<td>5</td>
			</tr>
			<tr>
				<td>2</td>
				<td>영국 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-10</td>
				<td>50</td>
			</tr>
		</table>
	</div>
	<div id="board4">
		<table>
			<tr>
				<th colspan="5">생활 자료</th>
			</tr>
			<tr>
				<td>1</td>
				<td>프랑스 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-09</td>
				<td>5</td>
			</tr>
			<tr>
				<td>2</td>
				<td>영국 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-10</td>
				<td>50</td>
			</tr>
		</table>
	</div>
	<div id="board5">
		<table>
			<tr>
				<th colspan="5">쇼핑 자료</th>
			</tr>
			<tr>
				<td>1</td>
				<td>프랑스 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-09</td>
				<td>5</td>
			</tr>
			<tr>
				<td>2</td>
				<td>영국 여행기</td>
				<td>hoonzzang</td>
				<td>2017-09-10</td>
				<td>50</td>
			</tr>
		</table>
	</div>
</body>
</html>