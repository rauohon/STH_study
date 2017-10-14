<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script>
$(document).ready(function() {
	$("input[type='button']").click(function() {
		$("h2").toggle(1000);
		$(".business").toggle(2000);
		$("input[name='bbb']").toggle(3000);
	});
	
	$("p").on({
		mouseenter: function(){
			$(this).css("background-color", "gray");
		},
		click: function(){
			$(this).css("background-color", "black");
		},
		mouseleave: function(){
			$(this).css("background-color", "white");
		}
	});
});

		
</script>
</head>
<body>
<h2>제이쿼리 실습페이지</h2>
<div class='business'>asdfsadfsadf</div>
<p>vnskdfmkslnm,xzvopkkn, nskdfnkvlvmc!</p>
<input type='button' name='abc' value='선택' />
<input type='button' name='bbb' value='없어집니다.' />
</body>
</html>
<!-- Attribute Selector
		[name = value] : 지정 노드 값 중에서 value와 값이 같은 노드
		[name *= value] : 지정 노드 값 중에서 value 값을 포함하는 노드
		[name $= value] : 지정 노드 값 중에서 value 값으로 끝나는 노드
		[name != value] : 지정 노드 값 중에서 value와 값이 같지 않은 노드
		[name ^= value] : 지정 노드 값 중에서 value 값으로 시작하는 노드
		[name = value][name2 = value] : 다중 속성을 활용한 선택자 -->
		
		<!-- Practice : jQuery Selector & Action
		1. 첫 페이지 로딩 시 [역사자료]만 화면 출력
		2. 로딩 후 다섯 개의 제목을 클릭할 경우 해당 자료 영역만 화면에 출력
		3. 제목은 마우스 오버 시 색상 변화 주기(마우스리브시 원상 복구)
		*** td:nth-child(순번) 참조
		4. 특정 분야의 모든 테이블은 게시글을 구분할 수 있는 css지정
		5. 특정 분야의 모든 테이블의 특정 게시글에 마우스오버되었을 경우 
		   글씨를 두껍게 처리 마우스리브시 원상복구
	-->
		
<!--
		$(document).ready(function(){
    var h = 1;
    $('.ac-industries-main-acco-content-in').each(function(){ //each문을 통해 switch에 사용하기위한 attr을 넣어봅시다
      $(this).attr('data-hov', h);
      h= 1+h ;
    });
    $('.ac-industries-main-acco .ac-industries-main-acco-content-in').mouseenter(function(){ //마우스 진입
      var dataHov = $(this).attr('data-hov');
      dataHov = Number(dataHov); //string을 number로 변경! 이작업을 하지않으면, default 값으로 넘어갑니다.
      switch (dataHov) {
        case 1 :
          $(this).addClass('ac-industries-main-acco-content-in-hov');
          break;
          case 2 :
            $(this).addClass('ac-industries-main-acco-content-in-hov2');
          break;
          case 3 :
            $(this).addClass('ac-industries-main-acco-content-in-hov3');
          break;
          case 4 :
            $(this).addClass('ac-industries-main-acco-content-in-hov4');
          break;
      }
    });

    $('.ac-industries-main-acco .ac-industries-main-acco-content-in').mouseleave(function(){//마우스 떠남
      var dataHov = $(this).attr('data-hov');
      dataHov = Number(dataHov);//string을 number로 변경! 이작업을 하지않으면, default 값으로 넘어갑니다.
      switch (dataHov) {
        case 1 :
          $(this).removeClass('ac-industries-main-acco-content-in-hov');
          break;
          case 2 :
            $(this).removeClass('ac-industries-main-acco-content-in-hov2');
          break;
          case 3 :
            $(this).removeClass('ac-industries-main-acco-content-in-hov3');
          break;
          case 4 :
            $(this).removeClass('ac-industries-main-acco-content-in-hov4');
          break;
        }
      });
[출처] [jquery]switch 문을 이용해 배경이미지를 바꿔보자!|작성자 찡이찡
		
		-->
		
		
		
		
		
		
		
		
		
		
		
		
		