<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!Doctype html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>	
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>Project</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>	
	<div class="container">
		<div class="row">
			<div class="col-12 cartlist">
				<h1>장바구니</h1>
				<div class="cart">
				<c:choose>
					<c:when test="${not cart}">
						<h2>장바구니에 담겨있는 상품이 없습니다.</h2>
					</c:when>
					<c:otherwise>
					
					</c:otherwise>
				</c:choose>
				</div>
				<a href="${pageContext.request.contextPath}/product/goodsList" class="goods-link">&lt;쇼핑 계속하기</a>
				
				<div class="c2">
					<div class="price_sum">
						<dl>
							<dt>총 0개의 상품금액</dt>
							<dl>원</dl>
						</dl>
						<i class="fas fa-plus"></i>
						<dl>
							<dt>배송비</dt>
							<dl>원</dl>
						</dl>
						<i class="fas fa-equals"></i>
						<dl>
							<dt>합계</dt>
							<dl>원</dl>
						</dl>
						</div>
						<h3 class="point">적립예상 포인트 :  원</h3>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>