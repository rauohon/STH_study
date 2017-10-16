<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
			    $("#html_element").click(function(){
			    	// 1. Create Element with Html;
			    	var textbox1 = "<input type='text'  name='he'/>";
			    	$("#createObject").append(textbox1);
			    });
			    $("#jquery_object").click(function(){
			    	// 2. Create Element with jQuery;
			    	var textbox2 = $("<input />");
			    	textbox2.attr("type", "text");
			    	textbox2.attr("name", "jo");
			    	$("#createObject").append(textbox2);
			    });
			    $("#dom_object").click(function(){
			    	// 2. Create Element with jQuery;
			    	var textbox3 = document.createElement("input");
			    	textbox3.type = "text";
			    	textbox3.id = "do";
			    	$("body").append(textbox3);
			    });
			});
		</script>
		<script>
			function div_in_empty(){
				alert("empty");
				$("#createObject").empty();
			}
			function aremove(){
				alert("remove");
				$("#do").remove();
			}
		</script>
	</head>
	<body>
		<input type='button' value='HTML_Element' id='html_element' />
		<input type='button' value='jQuery_Object' id='jquery_object' />
		<input type='button' value='DOM_Object' id='dom_object' />
		<div id='createObject'></div>
		<input type='button' value='Div_In_Empty' onClick='div_in_empty()' />
		<input type='button' value='Remove' onClick='aremove()' />
	</body>
</html>