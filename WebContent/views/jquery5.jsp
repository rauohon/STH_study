<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.blue{
	background-color: lightblue;
	width: 200px;
	height: 50px;
}
.red{
	background-color: tomato;
}
.fontcolor{
	color:white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#btn").click(function(){
    	var width=($("input[class=blue]").css("width"));
    	var height=($("input[class=blue]").css("height"));
    	
    	$("input[type=password]").css({"width" : width, "height" : height});
    });
    $("#adjustClass").click(function(){    	
    	$("input[type=password]").removeClass("red");
    	$("input[type=password]").addClass("blue");
    });
    $("#addClass").click(function(){
    	$("input[type=password]").addClass("fontcolor");
    });
    $("#doubleClass").click(function(){    	
    	$("input[type=password]").removeClass("red");
    	$("input[type=password]").addClass("blue fontcolor");
    });
});
</script>
</head>
<body>
<input type='text' class='blue' placeholder="id" />
<input type='password' class='red' placeholder="pwd" />
<input type='button' id='btn' value='GetCssProperty' />
<input type='button' id='adjustClass' value='AdjustClass' />
<input type='button' id='addClass' value='AddClass' />
<input type='button' id='doubleClass' value='DoubleClass' />
</body>
</html>