<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!Doctype html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>	

<title>Project</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>	
<div class="container">
	<div class="row">
		<div class="col-12 goods-nav">
			<nav class="navbar navbar-expand-sm">
			  <!-- Links -->
			  <ul class="navbar-nav">
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">패션</a>
			    </li>
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">악세사리</a>
			    </li>
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">반려용품</a>
			    </li>
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">매거진</a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">	
		<div class="col-12 col-md-6 sl goods-detail1">
			<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/g1.jpg">
		</div>
		<div class="col-12 col-md-6 sl goods-detail2">
			<table class="goods-t">
				<tr><th colspan="2" class="goods-sname">[유기동물 후원] A.A.A.F. 강아지 고양이 키링 (주문제작)</th></tr>
				<tr class="goods-items"><th>정가</th><td>9,000원</td></tr>
				<tr class="goods-items"><th>판매가</th><td>9,000원</td></tr>
				<tr class="goods-items"><th>구매제한</th><td>옵션당 최소1개</td></tr>
				<tr class="goods-items"><th>배송비</th><td>3,000원</td></tr>
				<tr class="goods-items"><th>상품코드</th><td>1000000017</td></tr>
				<tr class="goods-items"><th>카테고리</th><td>악세사리</td></tr>
				<tr class="goods-items"><th>상품재고</th><td>100</td></tr>
				<tr class="goods-items">
					<th>옵션  <select>
						<option>디자인</option>
						<option>강아지</option>
						<option>고양이</option>
						</select></th>
					<th>수량 <div>
					<i class="fas fa-plus"></i>
					</div>  

					     
					     </th>
					
				</tr>
			</table>

		<div class="goods-detail3">	
			<button class="b1">장바구니</button>
			<button class="b2">구매하기</button>
		</div>	
		</div>
		
	</div>
</div>

</body>
</html>