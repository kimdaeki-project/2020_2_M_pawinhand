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

.admin-tbl table {
	text-align: center;
}

.admin-tbl h1 {
	font-size: 1.3em;
	font-weight: 700;
	margin-bottom: 10px;
	}


.admin-tbl td {
	color: #404040;
	font-weight: 400;
	font-size: 0.8em;
	}
	
#cname td {
	font-weight: 530;
}

.admin-tbl a {
	text-decoration: none;
	letter-spacing: -0.03em;
	color: #404040;
}

.admin-tbl a:hover{
	color: #FDC033;
}

.admin-ml-tr td {
	height: 60px;
	text-align: center;
	vertical-align: middle;
}
	
</style>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container" id="mbPage-container">
	<div class="row mem_title">
		<div class="col-12 col-md-3">
<c:import url="./adminPageRow.jsp"></c:import>
		</div>
		
	<div class="col-12 col-md-9 admin-tbl">
		<h1>회원 관리</h1>
		<hr>
		
		<table class="table table-bordered">
			<tr id="cname">
				<td>ID</td>
				<td>이름</td>
				<td>Email</td>
				<td>연락처</td>
				<td>주소</td>
				<td>적립금</td>
			</tr>
		<c:choose>
		  <c:when test="${pager.curPage eq 1}">
			<tr class="admin-ml-tr" style="background-color: #fff7eb">
				<td><a href="./admin_memberSelect?id=${member.id}">${member.id}</a></td>
				<td>${member.name}</td>
				<td>${member.email}</td>
				<td>${member.phone}</td>
				<td>${member.address}</td>
				<td>${member.points}</td>
			</tr>
		  </c:when>
		</c:choose>
			
			<c:forEach items="${list}" var="dto" varStatus="vs">
			<tr class="admin-ml-tr">
				<td><a href="./admin_memberSelect?id=${dto.id}">${dto.id}</a></td>
				<td>${dto.name}</td>
				<td>${dto.email}</td>
				<td>${dto.phone}</td>
				<td>[${dto.zipCode}]${dto.address} <br>${dto.detailAddress} ${dto.extraAddress}</td>
				<td>${dto.points}
			</tr>
			</c:forEach>
		</table>
		
		  	<c:if test="${pager.beforeCheck}">
  				<a href="./admin_memberList?curPage=${pager.startNum-1}">[이전]</a>
  			</c:if>
  
  			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
  				<a href="./admin_memberList?curPage=${i}">${i}</a>
  			</c:forEach>
  	
  			<c:if test="${pager.nextCheck}">
  				<a href="./admin_memberList?curPage=${pager.lastNum+1}">[다음]</a>
  			</c:if>
		
		
		
	</div>
		
	</div>
</div>


<script type="text/javascript">


</script>


</body>
</html>