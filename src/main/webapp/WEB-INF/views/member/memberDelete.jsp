<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>

<style type="text/css">
	.btn{
		color: white;
		font-weight: 700;
		margin-top: 50px;
	}
</style>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<form id="frm" action="./shelterDelete" method="post" enctype="multipart/form-data">
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
			<div class="member-item">
				<table>
					<tr><th>아이디</th><td>${member.id}</td></tr>
					<tr><th>이름</th><td>${member.name}</td></tr>
					<tr><th>이메일</th><td>${member.email}</td></tr>
					<tr><th>휴대폰번호</th><td>${member.phone}</td></tr>
					<tr>
						<th>주소</th>
						<td>${member.address}</td>
					</tr>
				</table>

			</div>
				<div class="form-group">
    				<button type="submit" class="btn btn-warning" id="delbtn">확인</button>
    				<input type="button" class="btn btn-warning" id="cancel" value="취소">
    			</div>
		</div>

	</div>

	
	 </form>
</div>



<!-- **********Script*********************************************************************************** -->


<script type="text/javascript">

	$("#delbtn").click(function() {
			if (confirm("정말 탈퇴하시겠습니까?") == true){    //확인
				alert("그동안 포인핸드를 이용해주셔서 감사합니다.")

			}else{   //취소
 				return false;
			}
	});

	$("#cancel").click(function() {
 		if (confirm("이 페이지에서 나가시겠습니까?") == true){    //확인
     		location.href="./memberPage";

 		}else{   //취소
     		return false;
 		}
	});


</script>




</body>
</html>