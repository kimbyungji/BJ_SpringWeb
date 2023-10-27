<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<input type="text" id="apple" value="홍길자"><br>
		<input type="text" id="melon" value="홍길숙"><br>
		<input type="text" id="grape" value="홍길동"><br>
		
		<button onclick="check()">확인</button>
		
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
		<script type="text/javascript">
			// $(document).ready() 메서드는 document가 불려질 때 실행할 내용
			$(document).ready(function(){
				var msg = $("#grape").val();
				
				if(msg != ''){
					alert(msg);
				}
			});
			
			function check() {
				/* var a = $("#melon").val();
				alert(a); */
				$.ajax({
					type : "post",
					url : "checkId",
					data : {
						"id" : "testid"
					},
					success : function(result) {
						alert("비동기성공!\n result결과 : "+result);
					}
				})
			}
			
		</script>
	</body>
</html>