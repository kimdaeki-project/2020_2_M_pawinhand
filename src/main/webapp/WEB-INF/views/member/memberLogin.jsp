<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<script src="../resources/js/kakao.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
		Kakao.init('');
		Kakao.isInitialized();
	</script>

</head>

<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container" id="login-container">
	<div class="row" id="login_title">
		<h2>로그인</h2>
		<div class="col-12 member-Login">
		<h5>회원 로그인</h5>
			<form action="./memberLogin" method="post">
			<div id="login-d1">
				<div id="login-d2">
			    <div class="member-form login-input">
			      <label for="id" class="login-label">ID </label>
			      <input type="text" class="form-control login-input1" placeholder="Enter ID" id="id" name="id">
			    </div>
			    <div class="member-form login-input">
			      <label for="pw" class="login-label">Password </label>
			      <input type="password" class="form-control login-input1" placeholder="Enter password" id="pw" name="pw">
			    </div>
			    <div class="checkbox member-form" id="login-remember">
			      <label><input type="checkbox" name="remember" value="check" > Remember me</label>
				</div>
			 </div>
				 <div>
			      <button type="submit" class="btn btn-warning" id="login-okbtn">
			      	로그인</button>
			    </div>
			 </div>
			 <a id="kakao-login-btn"></a>
<script type="text/javascript">
  Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn',
    success: function(authObj) {
      Kakao.API.request({
        url: '/v2/user/me',
        success: function(res) {
          const json = JSON.stringify(res);
          const obj = JSON.parse(json);
          $.post("./kakaoLogin",{id:obj.id},function(data){
        	 
          })
          location.href="../"
        },
        fail: function(error) {
          alert(
            'login success, but failed to request user information: ' +
              JSON.stringify(error)
          )
        },
      })
    },
    fail: function(err) {
      alert('failed to login: ' + JSON.stringify(err))
    },
  })
</script>

		  </form>
	  </div>
  </div>
</div>


</body>
</html>