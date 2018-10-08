<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String[] ar = "루피,조로,나미,상디,우솝,쵸파,프랑키,브룩,로빈".split(",");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트-배열</title>
</head>
<body>
	<h1>캐릭터 선택</h1>
	<small>당신의 최애캐를 선택해주세요. (다중선택가능/최대3개까지)</small>
	<p>
		<%for(int i=0; i<ar.length; i++){ %>
		<input type="checkbox" value="<%=ar[i]%>" onchange="save(this)" /><%=ar[i] %>
		<%} %>
	</p>
	<hr />
	<p>
		당신의 현재선택 : <span></span>
	</p>
	<script>
	var names = new Array();
	var save = function(target){
		
		console.log(target.value);
		console.log(target.checked);
		/*
		if(target.value=="루피"){
			target.checked = false;
		}*/
		if(target.checked){
			if(names.length>3){
				window.alert("최대 선택 캐릭터는 3명입니다.");
				target.checked=false;
			}else{
				names.push(target.value);
			}
		}else{
			var idx = names.indexOf(target.value);
			names.splice(idx,1);
		}
		document.getElementsByTagName("span")[0].innerHTML = names.toString();
	}

/* 
		var names = new Array();
		
		var save = function(target) {
	
		if(name.length>3){
			if(ar.checked==false){
				var v = names.checked;
				var v1 = names.value;
			}else{
				window.alert("3명까지 가능합니다");	
			}
		document.getElementsByTagName("span")[0].innerHTML = ;	
		}
			/* 	if (target.value == "루피") {
					target.checked = false;

				} 
		}
		 */
		 /* 		
			if(names.length>3){
				if(names.includes(target.value)){
					var idx = names.indexOf(target.value);
					names.splice(idx,1);
					target.checked=false;
				}else{
					window.alert("최대 선택 캐릭터는 3명입니다.");
					target.checked=false;
				}
			}else{
				if(names.includes(target.value)){
					var idx = names.indexOf(target.value);
					names.splice(idx,1);
					target.checked=false;
				}else{
					names.push(target.value);
				target.checked=true;
				}
			}
			console.log(names);
		};
	 */
	</script>
</body>
</html>