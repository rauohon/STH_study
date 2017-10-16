<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery :: Part 2</title>
<!-- jQuery Animate() 
	$(selector).animate({params}, speed, callback);
	params : properties 
-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
    	$("#animate1").text("ICIA Education Center");
    	// alert($("a").text()); 
    	// text의 파라메터가 비어있으면 해당 선택자의 innerHTML의 값을 가져온다
    	$("a").attr("href", "http://www.naver.com");
    	$("a").text("네이버");
    	// alert($("a").text());
    	// alert($("a").attr("href"));
    	$("a").append("- 다음");
    	$("a").prepend("구글 - ")
   	/* 
   	text() : body에 표시될 문자열
   	val() : 개체의 attribute(value)
   	attr() : 태그의 attribute
   	*/
    	// attr : attribute의 경우 뒤에 파라메터 한개로 필요 값을 특정해서 가져옴
        /* $("#animate1").animate({left: '250px'});  */
        /* $("#animate1").animate({
        		top: '250px',
        		opacity: '0.5',
            	height: '200px',
            	width: '200px'
        	}); */
    	/* $("#animate1").animate({
    		left: '250px',
    		opacity: '0.5',
        	height: '+=50px',
        	width: '+=50px'
    	}); */
    	/* var div = $("#animate1");
        div.animate({height: '250px', opacity: '0.4'}, "slow");
        div.animate({width: '250px', opacity: '0.8'}, "slow");
        div.animate({height: '150px', opacity: '0.4'}, "slow");
        div.animate({width: '150px', opacity: '0.8'}, "slow"); */
    	var div = $("#animate1");  
        div.animate({top: '200px',height:'250px', width:'250px'}, "slow");
        div.animate({fontSize: '30px'}, "slow");
    });
});
</script>
<style>
	#animate1	{background:#98bf21; color:#FFFFFF;
					  height:150px; width:150px;
					  margin:auto; text-align:center; line-height:150px;
					  position:absolute;}
</style>
</head>
<body>
	<button>Animation using jQuery</button>
	<div id="animate1"></div>
	<a></a>
</body>
</html>