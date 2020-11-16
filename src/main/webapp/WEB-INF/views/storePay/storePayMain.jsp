<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<c:import url="../template/address.jsp"></c:import>

<style type="text/css">

	#payContainer{
		width: 1000px;
		height: auto;
		margin: 50px auto 100px;
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
		height: auto;
		font-size: 20px;
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
	.infoTable{
		margin-top : 20px;
		width: 1000px;
		height: auto;
	}
	
	.infoTd{
		width: 200px;
	}
	.payDrive{
		margin-top: 50px;
		width: 1000px;
		height: auto;
		font-size: 20px;
	}
	.driveTable{
		margin-top : 20px;
		width: 1000px;
		height: auto;
	}
	
	.driveTd{
		width: 200px;
	}
	
	.payInfo{
		margin-top: 50px;
		width: 1000px;
		height: auto;
		font-size: 20px;
	}
	.payDiv{
		margin-top: 50px;
		width: 1000px;
		height: auto;
		font-size: 20px;
	}
	
	#accountDiv{
		display: none;
	}
	
	#finalPriceDiv{
		margin-top : 40px;
		margin-bottom : 10px;
		width: 1000px;
		height: 100px;
		border: 2px solid #DCDCDC;
	}
	#finalDiv2{
		width: 300px;
		height: 100px;
		background-color: lime;
		float: right;
		line-height: 100px;
	}
	.ffcc{
		color: orange;
	}
	#chDiv{
		width: 1000px;
		height : auto;
		text-align: center;
	}
	.payBtn{
		width: 250px;
		height: 50px;
		margin-left : 325px;
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
		
		<table class="infoTable, table table-bordered">
			<tr>
				<td class="infoTd">* 주문하시는 분</td>
				<td><input id="dname1" type="text" value="${member.name}"></td>
			</tr>
			<tr>
				<td class="infoTd">주소</td>
				<td>
					<input type="text" id="dzipCode1" name="zipCode" value="${member.zipCode}">
					<input id="dsite1" type="text" value="${member.address}">
				</td>
			</tr>
			<tr>
				<td class="infoTd">전화번호</td>
				<td><input id="dtel1" type="text"></td>
			</tr>
			<tr>
				<td class="infoTd">* 휴대폰 번호</td>
				<td><input id="dphone1" type="text" value="${member.phone}"></td>
			</tr>
			<tr>
				<td class="infoTd">* 이메일</td>
				<td><input id="demail1" type="text" value="${member.email}"></td>
			</tr>
		</table>
		
	</div>
	
	<div class="payDrive">
		배송정보<br>
		
		<table class="driveTable, table table-bordered">
			<tr>
				<td class="driveTd">배송지 확인</td>
				<td>
					<input type="radio" value="1" name="deliverySite" class="ss" checked="checked"> 직접입력
					<input type="radio" value="2"  name="deliverySite"  class="ss"> 주문자 정보와 동일
				</td>
			</tr>
			<tr>
				<td class="driveTd">* 받으실 분</td>
				<td class="driveTd2"><input id="dname" type="text" name="name"></td>
			</tr>
			<tr>
				<td class="driveTd">* 받으실 곳</td>
				<td class="driveTd2">
					<input type="text" id="sample6_postcode" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" placeholder="주소"><br>
				<input type="text" id="sample6_detailAddress" placeholder="상세주소"><br>
				<input type="text" id="sample6_extraAddress" placeholder="참고항목">
				</td>
			</tr>
			<tr>
				<td class="driveTd">전화번호</td>
				<td class="driveTd2"><input id="dtel" type="text"></td>
			</tr>
			<tr>
				<td class="driveTd">* 휴대폰 번호</td>
				<td class="driveTd2"><input id="dphone" type="text" name="phone"></td>
			</tr>
			<tr>
				<td class="driveTd">남기실 말씀</td>
				<td class="driveTd2"><input id="dcomment" type="text" name="addComment"></td>
			</tr>
			
		</table>
		</div>
		
		
		<div class ="payInfo">
		결제정보<br>
		
			<table class="driveTable, table table-bordered">
				<tr>
					<td>상품 합계 금액</td>
					<td></td>
				</tr>
				<tr>
					<td>배송비</td>
					<td></td>
				</tr>
				<tr>
					<td>할인 및 적립</td>
					<td></td>
				</tr>
				<tr>
					<td>마일리지 사용</td>
					<td></td>
				</tr>
				<tr>
					<td id="finalPrice">최종 결제 금액</td>
					<td></td>
				</tr>
			</table>
		</div>
	
		<div class="payDiv">
			결제수단 선택/결제<br>
			
			
			<table class="driveTable, table table-bordered">
				<tr>
					<td rowspan="2">결제</td>
					<td>
						<input type="radio" name="paySel" value="1" class="paySel">무통장 입금
						<input type="radio" name="paySel" value="2" class="paySel">신용카드
						<input type="radio" name="paySel" value="3" class="paySel">계좌이체
						<input type="radio" name="paySel" value="4" class="paySel">가상계좌
						<input type="radio" name="paySel" value="5" class="paySel">휴대폰결제 <br>
						<div id="realAccountDiv">
							
						</div>
					</td>
				</tr>
			</table>
			
		</div>
		
		<div id="finalPriceDiv">
			<div id="finalDiv2">
				<span>최종 결제 금액   </span>
				<span></span>
			</div>
		</div>	
		
		<div id="chDiv">
		<input type="checkbox" id="finalCheck">
			<span class="ffcc">(필수)</span> 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.<br>
	</div>
	<button class="payBtn">결제하기</button>
	
	
</div>

<div id="accountDiv">
		(무통장 입금의 경우, 입금확인 후부터 배송단계가 시작됩니다.)<br>
		입금자명     <input type="text" id="payName"><br>
		입금은행     <select name="bank">
					<option value="sh">신한은행 140012049753 (주)포인핸드</option>
					<option value="kb">국민은행 260894599649 (주)포인핸드</option>
				</select>
	</div>
<script type="text/javascript">

	var totalAmount = 0;
	var totalPrice = 0;
	var points = 1;
	var amountArray = [];
	var ds = null;
	
	

	$(".ss").each(function(index, item) {

		amountArray[index] = $(this).html() * 1;
		totalAmount += $(this).html() * 1;
	});

	$("#nn").html(totalAmount);

	$(".tt").each(function() {
		totalPrice += $(this).html() * 1;

	});

	$("#ttprice").html(totalPrice);
	var ep = null;
	var viewPoints = 0;

	$(".pp").each(
			function(index, item) {
				if (amountArray[index] == 1) {
					points = $(this).attr('title') * 1 * amountArray[index];
					$(this).html(points + "p");
				} else {
					ep = $(this).attr('title') * 1;
					points = ep * amountArray[index];
					$(this).html(
							ep + "p  * " + amountArray[index] + " = " + points+ "p");

				}
				viewPoints += points;
			});

	$("#viewPoints").html(viewPoints);

	$(document).on("click", ".ss",function() {
		ds = $(this).val();

		if (ds == 1) {
			$("#dname").val("");
			$("#sample6_address").val("");
			$("#dtel").val("");
			$("#dphone").val("");
			$("#dcomment").val("");
			$("#sample6_postcode").val("");
			$("#sample6_detailAddress").val("");
			$("#sample6_extraAddress").val("");
		} else {
			$("#dname").val(document.getElementById('dname1').value);
			$("#sample6_address").val(document.getElementById('dsite1').value);
			$("#dtel").val(document.getElementById('dtel1').value);
			$("#dphone").val(document.getElementById('dphone1').value);
			$("#sample6_postcode").val(document.getElementById('dzipCode1').value);
		}
	});
	
	var n = null;
	var nn = $("#accountDiv").html().trim();
	
	$(document).on("click", ".paySel", function() {
		n = $(this).val();
		
		if(n==1){
			
			$("#realAccountDiv").html(nn);
		}else{
			$("#realAccountDiv").html("");
		}
	});
	

</script>
</body>
</html>