<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Register</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
              <div class="col-lg-3"></div>
              
              <div class="col-lg-6">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
              </div>
              
              
              <!-- 자바스크립트(제이쿼리) 를 사용하기전에 input 태그의 id속성을 확인하세요. -->
              <form class="user" action="joinForm" method="post" id="regForm">
                <!-- 아이디 -->
                <div class="form-group row">
                  <div class="col-sm-8 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" placeholder="아이디" name="id" id="id" readonly="readonly">
                  </div>
                  <div class="col-sm-4">
                  	<input type="button" class="btn btn-primary btn-user btn-block" value="중복체크" onclick="IdCheck()">
                  </div>
                </div>
                
                <!-- 이름 -->
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" placeholder="이름" name="name" id="name">
                </div>
                
                <!-- 비밀번호 -->
                <div class="form-group row">
                  <div class="col-sm-12 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" placeholder="비밀번호" name="pw" id="pw">
                  </div>
                </div>
                
                <!-- 비밀번호 확인 -->
                <div class="form-group row">
                  <div class="col-sm-12 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" placeholder="비밀번호체크" id="pwCheck">
                  </div>
                </div>
				
				<input type="button" class="btn btn-primary btn-user btn-user btn-block" value="회원가입" onclick="joinCheck()">
               
              </form>
                           
              <hr>
              <div class="text-center">
                <a class="small" href="${pageContext.request.contextPath}/">메인으로</a><!-- 절대경로 -->
              </div>
              <div class="text-center">
                <a class="small" href="login">로그인</a>
              </div>
              <div class="col-lg-3"></div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  
  <%--
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
   --%>
   
   <script type="text/javascript">
   	// 회원 가입 체크(joinCheck())
   	function joinCheck() {
		// attr(속성, 변경할 값) : 함수는 해당 id태그의 내부 속성을 변경하는 함수
		// attr(속성) : 함수의 매개값이 하나라면 해당 속성 여부를 확인
		// val() : 해당 id태그의 값을 참조합니다.
		// focus() : 해당 id태그의 마우스 커서를 위치시킵니다.
		// submit() : 해당 id태그의 form을 submit 시킴
		if(!$("#id").attr("readonly")){
			alert("아이디 중복체크를 해야 합니다.");
		}else if($("#name").val().length < 1){
			alert("이름을 입력하세요");
		}else if($("#pw").val().length < 1){
			alert("비밀번호를 입력하세요.")
		}else if($("#pw").val() !== $("#pwCheck").val()){
			alert("비밀번호 확인란을 확인하세요.")
			$("#pwCheck").focus();
		}else if(confirm("회원가입을 하시겠습니까?")){
			$("#regForm").submit();
		}
	}
   	
   </script>
   
</body>

</html>
    