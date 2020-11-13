<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<form id="frm" action="./shelterDelete" method="post" enctype="multipart/form-data">
	<div class="row mem_title">
		<div class="col-12 col-md-3">
<c:import url="./memberPageRow.jsp"></c:import>				
		
		</div>
		<div class="col-12 col-md-9 member-info">
			<h1>회원정보 변경</h1>
			<hr>
			<h2>기본정보</h2>
			<div class="member-item">
				<table>
					<tr><th>아이디</th><td>${member.id}</td></tr>
					<tr><th>비밀번호</th><td><input type="password" name="pw" id="pw"/></td></tr>
					<tr><th>비밀번호 확인</th><td><input type="password" name="pw" id="pw"/></td></tr>
					<tr><th>이름</th><td><input type="text" name="name" id="name" value="${member.name}"/></td></tr>
					<tr><th>이메일</th><td><input type="text" name="email" id="email" value="${member.email}"/></td></tr>
					<tr><th>휴대폰번호</th><td><input type="text" name="phone" id="phone" value="${member.phone}"/></td></tr>
					<tr>
						<th>주소</th>
						<td>
						<a href="${pageContext.request.contextPath}/member/address">도로명주소</a>
						<input type="text" name="address" id="address" value="***"/></td>
					</tr>
				</table>
			</div>
			
			    <div class="member-form">
			      <input type="button" class="btn btn-warning" id="okbtn" value="확인" style="font-weight: 700;color: white;">
			      <input type="button" class="btn btn-default" id="nobtn" value="취소" style="border: 1px solid #d9d9d9;margin-left: 3px;">
			    </div>
		
		</div>
	</div>
	</form>
</div>


<!-- **********Script*********************************************************************************** -->


<script type="text/javascript">


	$("#okbtn").click(function() {
		if (confirm("수정하시겠습니까?") == true){    //확인

		}else{   //취소
				return false;
		}
	});

	$("#nobtn").click(function() {
		if (confirm("이 페이지에서 나가시겠습니까?") == true){    //확인
 		location.href="./memberPage";

		}else{   //취소
 		return false;
		}
	});

</script>



</body>
</html>