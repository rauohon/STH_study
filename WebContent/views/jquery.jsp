<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script>
$(function(){alert("후훗"); });
$(document).ready(function() {	
	$("input").click(function() {
		$(function(){alert("후훗"); });
		$("h2").hide();
		$(".business").toggle();
	});
});

	/* Attribute Selector
		[name = value] : 지정 노드 값 중에서 value와 값이 같은 노드
		[name *= value] : 지정 노드 값 중에서 value 값을 포함하는 노드
		[name $= value] : 지정 노드 값 중에서 value 값으로 끝나는 노드
		[name != value] : 지정 노드 값 중에서 value와 값이 같지 않은 노드
		[name ^= value] : 지정 노드 값 중에서 value 값으로 시작하는 노드
		[name = value][name2 = value] : 다중 속성을 활용한 선택자 */		
</script>
</head>
<body>
<h2>제이쿼리 실습페이지</h2>
<div class='business'>asdfsadfsadf</div>
<input type='button' name='abc' value='선택' />
<input type='button' name='bbb' value='선택' />
</body>
</html>