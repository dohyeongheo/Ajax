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

	<button onClick="sum()">���ϱ�</button>

	<!-- Ajax���� ���������� ����ϱ� ������ �������� ���� -->
	<script type="text/javascript" src="JS\jquery-3.6.0.min.js"> </script>
	<script type="text/javascript">

function sum() {
$.ajax({

	// ���� ������Ʈ ������
	// url mapping,
	// main.jsp���� ���� ��θ� ������ �� ���� 
	
	url : "ex01sum",
	type : "get",
	data : {
	"num1" : $('input[name=num1]').val(),	
	"num2" : $('input[name=num2]').val(),	
	},
	// dataType -> ������ ������
	
success : function(res) {
	// ������ ��û�� ����� ���

	// alert("����");

	console.log(res);
	},
fail : function(res) {
	alert("����");
	}
});
}
</script>
</body>
</html>