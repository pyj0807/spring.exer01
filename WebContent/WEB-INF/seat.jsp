<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC</title>
<style type="text/css">
select, input, option {
	font-size: 13px;
	padding: 5pt;
	font-family: 맑은 고딕;
}
</style>
</head>
<body>
	<div align="center">
		<h1 style="text-decoration: underline;">Spring MVC Theater</h1>
		<h3>${param.title }/${fn:substringAfter(param.time, 'h') } /
			${param.count }명</h3>
		<h2>좌석배치도</h2>
		<div style="width: 300px; height: 50px; background-color: silver;">
			<b>S C R E E N </b>
		</div>
		<form action="<c:url value="/ticket/order.do"/>">
			<c:forEach var="row" begin="1" end="5">
				<p>
					<c:forEach var="col" begin="1" end="8">
						<input name="seat" type="checkbox" value="${row}-${col }"
							onchange="temp(this);">${row}-${col }

					</c:forEach>
				</p>
			</c:forEach>
			<script>
				var array = new Array();

				var temp = function(target) {
					maxCheck = 2;
					if (target.cheked) {
						array.push(target.value);
					} else {
						array.splice(array.indexOf(target.value), 1);
					}
					for (var i = 0; i < array.length; i++) {
						console.log(array[i]);
						console.log(parseInt(checks[i]) == parseInt(pastCheck[i]));
						console.log(parseInt(checks[i + 1]) == parseInt(pastCheck[i + 1]));

					}
				}

				if (array.length == maxCheck) {
					for (var i = 0; i < check.length; i++) {
						if (!check[i].checked) {
							check[i].disabled = true;
						}
					}
				} else {
					for (var i = 0; i < check.length; i++) {
						if (!check[i].checked) {
							check[i].disabled = false;
						}
					}
				}
			</script>
			<button type="submit">예약신청</button>
		</form>
	</div>
</body>
</html>
