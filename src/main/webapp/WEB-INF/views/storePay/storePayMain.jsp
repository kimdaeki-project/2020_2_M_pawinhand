<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<style type="text/css">
	#payContainer{
		width: 1000px;
		height: 2000px;
		margin: 50px auto;
	}
	.payHeader{
		width: 1000px;
		height: 70px;
		border-bottom: 1px solid #DCDCDC;
		font-size: 30px;
	}
	.payDetailDiv{
		margin-top : 50px;
		width: 1000px;
		height: 220px;
		font-size: 20px;
		background-color: yellow;
	}
	
	#payDetailTable{
		margin-top : 20px;
		width: 1000px;
		height: auto;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div id="payContainer">
	<div class="payHeader">
		주문서 작성/결제
	</div>
	
	<div class="payDetailDiv">
		주문상세내역<br>
		
		<table id="payDetailTable" class="table table-bordered" >
			<tr>
				<td>상품/옵션 정보</td>
				<td>수량</td>
				<td>상품금액</td>
				<td>할인/적립</td>
				<td>합계금액</td>
				<td>배송비</td>
			</tr>
			<tr>
				<td>1</td>
				<td>1</td>
				<td>1</td>
				<td>1</td>
				<td>1</td>
				<td>1</td>
			</tr>
		</table>
		
		<a href="#"> < 장바구니 가기</a>
	</div>
	
</div>

</body>
</html>