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
#payInfoContainer {
	width: 1000px;
	height: auto;
	margin: 50px auto 100px;
}

.payHeader {
	width: 1000px;
	height: 70px;
	border-bottom: 1px solid #DCDCDC;
	font-size: 30px;
}

#payInfoDiv {
	width: 1000px;
	height: 210px;
}

#imgDiv {
	width: 1000px;
	height: 150px;
	text-align: center;
	margin-top: 20px;
}

#imgDiv>img {
	width: 150px;
	height: 130px;
}

#payInfoDiv>#d1 {
	width: 1000px;
	height: 50px;
	text-align: center;
	font-size: 25px;
	font-weight: bold;
}

#payInfoTable {
	width: 1000px;
	height: 1000px;
	margin-top: 20px;
	font-size: 18px;
	font-weight: bold;
}

.td1 {
	width: 150px;
	background-color: #DCDCDC;
	color: black;
}

#payInfoBtn {
	width: 250px;
	height: 50px;
	margin-left : 330px;
	margin-top : 20px;
	background-color: orange;
	text-align: center;
	color: white;
	border: 1px solid orange;
	
}
</style>
</head>

<body>

<c:import url="../template/header.jsp"></c:import>
${msg}
<div id="payInfoContainer">
	<div class="payHeader">
		주문완료
	</div>
	
	<div id="payInfoDiv">
		<div id="imgDiv">
			<img src="${pageContext.request.contextPath}/resources/img/common/payInfo.PNG">
		</div>
		<div id="d1">
		주문이 정상적으로 접수되었습니다.
		</div>
	</div>
	
	<div id="payInfoTable">
	주문 요약 정보<br>
	
		<table class="table table-bordered">
			
			<tr>
				<td class="td1">결제수단</td>
				<td>
					${pay.payMethod}<br>
					결제금액 : ${pay.totalPrice}<br>
					결제상태 :
				</td>
			</tr>
			<tr>
				<td class="td1">주문번호</td>
				<td>${list.order_num}</td>
			</tr>
			<tr>
				<td class="td1">주문일자</td>
				<td>${list.regDate}</td>
			</tr>
			<tr>
				<td class="td1">주문상품</td>
				<td>
					<c:forEach items="${ar}" var="detail">
						상품명 : <span>${detail.name}</span><br>
						(색상 : <span>${detail.productDTO.color}</span>,
						사이즈 : <span>${detail.productDTO.weight}</span>,
						수량 : <span>${detail.amount}</span>개)<br>
						<input type="hidden" value="${detail.ptotal}" class="ptotal">
					</c:forEach>
					
				</td>
			</tr>
			<tr>
				<td class="td1">주문자명</td>
				<td>${list.toName}</td>
			</tr>
			<tr>
				<td class="td1">배송정보</td>
				<td>${list.toAddress}<br>
					${list.addComment}
				</td>
			</tr>
			<tr>
				<td class="td1">상품금액</td>
				<td id="tdPtotal"></td>
			</tr>
			<tr>
				<td class="td1">배송비</td>
				<td id="dFee"></td>
			</tr>
			<tr>
				<td class="td1">할인 및 적립</td>
				<td></td>
			</tr>
			<tr>
				<td class="td1">총 결제금액</td>
				<td>${list.total}원</td>
			</tr>
		</table>
		
		<button id="payInfoBtn">확인</button>
	</div>
</div>

<script type="text/javascript">
	
	//상품합계금액 계산
	var sum=0;
	$(".ptotal").each(function() {
		sum += $(this).val()*1;
	});
	$("#tdPtotal").html(sum+"원");
	
	//배송비 설정
	$("#dFee").html(function() {
		if(sum> 50000){
			$("#dFee").html("0원");
		}else{
			$("#dFee").html("3000원");
		}	
	});
	
</script>
</body>
</html>