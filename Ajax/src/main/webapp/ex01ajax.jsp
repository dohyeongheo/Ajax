<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	num1 :
	<input type="text" name="num1">
	<br> num2 :
	<input type="text" name="num2">
	<br>

	<button onClick="sum()">더하기</button>

	<!-- Ajax에서 제이쿼리를 사용하기 때문에 제이쿼리 삽입 -->
	<script type="text/javascript" src="JS\jquery-3.6.0.min.js"> </script>
	<script type="text/javascript">

function sum() {
$.ajax({

	// 같은 프로젝트 내에서
	// url mapping,
	// main.jsp같은 파일 경로를 지정할 수 있음 
	
	url : "ex01sum",
	type : "get",
	data : {
	"num1" : $('input[name=num1]').val(),	
	"num2" : $('input[name=num2]').val(),	
	},
	// dataType -> 데이터 보낼때
	
success : function(res) {
	// 서버에 요청된 결과가 담김

	// alert("성공");

	console.log(res);
	},
fail : function(res) {
	alert("실패");
	}
});
}
</script>
</body>
</html>