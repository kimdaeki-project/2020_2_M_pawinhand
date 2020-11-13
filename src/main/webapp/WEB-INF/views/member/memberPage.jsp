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
<div class="container" id="mbPage-container">
	<div class="row mem_title">
		<div class="col-12 col-md-3">
<c:import url="./memberPageRow.jsp"></c:import>		
		
		</div>
		<div class="col-12 col-md-9 member-info">
			<div class="member-item" id="mbPage-d1">
				<div class="mbPage-info-1" style="background-color: red;">
				<h1>1</h1>
				</div>
				
				<div class="mbPage-info" style="background-color: orange;">
				<h1>2</h1>
				</div>
				
				<div class="mbPage-info" style="background-color: yellow;">
				<h1>3</h1>
				</div>
				
				<div class="mbPage-info" style="background-color: green;">
				<h1>4</h1>
				</div>
			</div>
		
		</div>
	</div>
</div>



</body>
</html>