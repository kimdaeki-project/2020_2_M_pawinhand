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



.admin-tbl h1 {
	font-size: 1.3em;
	font-weight: 700;
	margin-bottom: 10px;
	}
	
#ad-qna-sel{
	margin-top: 50px;
	font-size: 0.9em;
	font-weight: 400;
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
		<h1>QnA</h1>
		<hr>
		
		<div id="ad-qna-sel">
			<p>제목 : ${dto.title}</p>
			<p>작성자 : ${dto.id}</p>
			<hr>
			<p></p>
		</div>
		
		
	</div>
		
	</div>
</div>


<script type="text/javascript">


</script>


</body>
</html>