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
	<div class="row mem_title">
		<div class="col-12 col-md-3">
			<ul class="myPage">
				<h1>마이 페이지</h1>
				<hr>
				
				<li>
					<h2>쇼핑정보</h2>
					<ul class="myPage-item">
						<li><a href="#">- 주문목록/배송조회</a></li>		
						<li><a href="#">- 취소/반품/교환 내역</a></li>		
						<li><a href="#">- 환불/입금 내역</a></li>		
						<li><a href="#">- 찜리스트</a></li>
						<li><a href="#">- 마일리지</a></li>					
					</ul>
				</li>
				<li>
					<h2>회원정보</h2>
					<ul class="myPage-item">
						<li><a href="#">- 회원정보</a></li>		
						<li id="member_del"><a href="./memberDeleteCheck">- 회원탈퇴</a></li>			
					</ul>
				</li>
				<li>
					<h2>나의 상품문의/후기</h2>
					<ul class="myPage-item">
						<li><a href="#">- 나의 상품문의</a></li>		
						<li><a href="#">- 나의 상품후기</a></li>	
						<li><a href="#">- 1:1 문의</a></li>		
					</ul>
				</li>
			</ul>
		
		
		</div>
		<div class="col-12 col-md-9 member-info">
			<h1>회원탈퇴</h1>
			<hr>
			<h2>기본정보</h2>
			    <div class="member-form">
			      <label for="id">Id:</label>
			      <input type="text" value="${member.id}" readonly="readonly" class="form-control" id="id" name="id">
			    </div>
			    <div class="member-form">
			      <label for="pw">Password:</label>
			      <input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw">
			    </div>
			    <div class="checkbox member-form">
			      <label><input type="checkbox" name="remember" value="check"> Remember me</label>
			      <button type="submit" class="btn btn-default" id="okbtn">확인</button>
			    </div>
		
		</div>
	</div>
</div>


<script type="text/javascript">

	

	$("#okbtn").click(function() {
		
		var pw = $("#pw").val();
		var member_pw = "${member.pw}";

		if(pw == member_pw){
			location.href="./memberDelete?id=${member.id}";
		}else{
			alert("비밀번호가 일치하지 않습니다.")
		}		
		
	});

</script>


</body>
</html>