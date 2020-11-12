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
	}
	
	#payDetailTable{
		margin-top : 20px;
		width: 1000px;
		height: auto;
	}
	.payTotalDiv{
	
		margin-top : 70px;
		width: 1000px;
		height: 130px;
		border: 2px solid #DCDCDC;
		
	}
	.priceDiv{
		width : 140px;
		height: 100px;
		background-color: olive;
		float: right;
	}
	.driveDiv{
		width : 140px;
		height: 100px;
		background-color: fuchsia;
		float: right;
	}
	.totalDiv{
		width : 140px;
		height: 100px;
		background-color: orange;
		float: right;
	}
	.paydd{
		width : 20px;
		height: 100px;
		float: right;
	}
	.pointsdiv{
		width: 1000px;
		height: 30px;
		background-color: red;
		float: left;
		text-align: right;
	}
	.payOrderDiv{
		margin-top : 50px;
		width: 1000px;
		height: 500px;
		font-size: 20px;
		background-color: aqua;
	}
	.d1{
		text-align: right;
	}
	.cc{
		width: 20px;
		height: 20px;
		border-radius: 50%;
		background-color: #D3D3D3;
		text-align: center;
		line-height: 20px;
		color: #F8F8FF;
		font-weight: bold;
		margin-top: 30px;
	}
	.pp{
		font-size: 11px;
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
			
			<c:forEach items="${list}" var="cart">
				<tr>
					<td>${cart.productDTO.name}, ${cart.productDTO.color}, ${cart.productDTO.weight}</td>
					<td class="ss">${cart.amount}</td>
					<td>${cart.productDTO.price}</td>
					<td class="pp" title="${cart.points}"></td>
					<td class="tt">${cart.totalPrice}</td>
					<td>3000원</td>
				</tr>
			</c:forEach>
			
		</table>
		
		<a href="#"> < 장바구니 가기</a>
	</div>
	
	
		<div class="payTotalDiv">
			<div class="priceDiv">
				<span>합계 </span>
				<div id = "ttprice"></div> 원
			</div>
				<div class="paydd">
					<div class="cc">=</div>
				</div>
			<div class="driveDiv">
				<span>배송비 </span>
				<div class="d1">
					3000원
				</div>
			</div>
				<div class="paydd">
					<div class="cc">+</div>
				</div>
			<div class="totalDiv">
				<span>총 </span>
				<span id="nn"></span>
				<span>개의 상품금액</span>
				<div class="d1">
					3000원
				</div>
			</div>
			
			<div class="pointsdiv">
				적립예정 마일리지 : 
				<span id="viewPoints"></span> 원
			</div>
		</div>
	
	
	<div class="payOrderDiv">
		주문자 정보<br>
		
		
	</div>
</div>

<script type="text/javascript">
	var totalAmount = 0;
	var totalPrice = 0;
	var points = 1;
	var amountArray = [];
	$(".ss").each(function(index, item) {

		amountArray[index] = $(this).html()*1;
		totalAmount += $(this).html()*1; 
		console.log(amountArray[index]);
	});
	
	$("#nn").html(totalAmount);
	
	$(".tt").each(function() {
		totalPrice += $(this).html()*1;
		
	});
	
	$("#ttprice").html(totalPrice);
	var ep = null;
	var viewPoints = 0;
	
	$(".pp").each(function(index, item) {
		if(amountArray[index]==1){
			points = $(this).attr('title') * 1 *amountArray[index];
			$(this).html(points+"원");	
		}else{
			ep = $(this).attr('title')*1;
			points = ep *amountArray[index];
			$(this).html(ep+"원  * "+amountArray[index]+"개 ="+points+"원");
			
		}
		viewPoints += points;
	});
	
	$("#viewPoints").html(viewPoints);
	
</script>
</body>
</html>