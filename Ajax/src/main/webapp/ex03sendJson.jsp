<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	title :
	<input type="text" name="title"><br>start :
	<input type="date" name="start"><br> end :
	<input type="date" name="end">

	<button onClick="input()">input</button>
	<button onClick="save()">�����ϱ�</button>

	<hr>

	<!-- Ajax���� ���������� ����ϱ� ������ �������� ���� -->
	<script type="text/javascript" src="JS\jquery-3.6.0.min.js">
		
	</script>
	<script type="text/javascript">
	let putData = [];
	function input(){
		putData.push({
		'title' : $('input[name=title]').val(),
		'start' : $('input[name=start]').val(),
		'end' : $('input[name=end]').val()
		});
		
		console.log(putData);
		
	}
	
		function save() {
			$.ajax({

				// ���� ������Ʈ ������
				// url mapping,
				// main.jsp���� ���� ��θ� ������ �� ���� 

				url : "ex03sendJson",
				type : "post",

				
				data : {
				'json' : JSON.stringify(putData)	
				 },
				 
				// dataType : "json",

				success : function(res) {
					// ������ ��û�� ����� ���

					// alert("����");

						// �ڹٽ�ũ��Ʈ���� html�ڵ� �±� ����� ��� 4����
						// .html() -> ����� ����
						// .after() -> �ڿ� �߰�
						// .before() -> �տ� �߰�
						// .append() -> ������ �±� ���ο� �߰�
					console.log(res);
					$('hr').after(res);
					},

				fail : function(res) {
					alert("����");
				}
					
			});
		}
	</script>
</body>
</html>