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
	<button onClick="save()">저장하기</button>

	<hr>

	<!-- Ajax에서 제이쿼리를 사용하기 때문에 제이쿼리 삽입 -->
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

				// 같은 프로젝트 내에서
				// url mapping,
				// main.jsp같은 파일 경로를 지정할 수 있음 

				url : "ex03sendJson",
				type : "post",

				
				data : {
				'json' : JSON.stringify(putData)	
				 },
				 
				// dataType : "json",

				success : function(res) {
					// 서버에 요청된 결과가 담김

					// alert("성공");

						// 자바스크립트에서 html코드 태그 만드는 방법 4가지
						// .html() -> 덮어쓰는 형식
						// .after() -> 뒤에 추가
						// .before() -> 앞에 추가
						// .append() -> 선택한 태그 내부에 추가
					console.log(res);
					$('hr').after(res);
					},

				fail : function(res) {
					alert("실패");
				}
					
			});
		}
	</script>
</body>
</html>