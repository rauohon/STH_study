/**
 *  Common java script source
 */

function init() {
	var accessForm = document.getElementById("accessForm");
	var loginForm = document.getElementById("loginForm");
	var accessOn = document.getElementById("accessOn");
	var userInfo = document.getElementById("userInfo");
	var state = '${mbid}';

	if (state == "") {
		accessForm.style.display = "block";
		loginForm.style.display = "block";
		userMainInfo.style.display = "none";
		accessOn.style.display = "none";
		userInfo.style.display = "none";
	} else {		
		accessForm.style.display = "none";
		loginForm.style.display = "none";
		userMainInfo.style.display = "block";
		accessOn.style.display = "block";
		userInfo.style.display = "block";
	}
}
function senData(){
	var form = createForm("accessForm", "Access","post");
	createObj("hidden","page","main","");
	
	relationObj("accessForm","mbid")
	relationObj("accessForm","mbpwd")
	relationObj("accessForm","page")
	
	form.submit();
	
}

function createObj(objType, objName, objValue, objPlaceholder){
	var input = document.createElement("input");
	input.type = objType;
	input.name = objName;
	input.value = objValue;
	if(objType != "hidden"){
		input.placeholder = objPlaceholder;
	}
	document.body.appendChild(input);
}

function relationObj(formName, objName){
	var form = document.getElementsByName(formName)[0];
	var obj = document.getElementsByName(objName)[0];
	var result = false;
	if(form != null){
		form.appendChild(obj);
		result = true;
	}
	return result;
}