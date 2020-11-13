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
	.btn{
		color:white;
		font-weight: 700;
		margin-bottom: 100px;
	}
	#title{
		margin-top: 80px;
		text-align: center;
	}
	#animal{
		font-size: 24pt;
		font-weight: 550;
		background-color: #ffffdb;
	}
</style>


</head>
<body>
<c:import url="../template/header.jsp"></c:import>

  <div class="container">
  	<div id="title">
  
		<c:if test="${filelist[0].fileName ne null}">
	
		<!-- 사진 슬라이드  -->
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li  data-target="#demo" data-slide-to="0" class="active"></li>
				<c:if test="${filelist[1].fileName ne null}">
					<c:forEach begin="1" end="${filelist.size()-1}" step="1" varStatus="i">
						<li  data-target="#demo" data-slide-to="${i.count}"></li>
					</c:forEach>
				</c:if>	
			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../resources/upload/shelter/${filelist[0].fileName}" width="800px" height="500px">
				</div>
				<c:forEach items="${filelist}" var="file">
					<c:if test="${file.fileName ne filelist[0].fileName}">
						<div class="carousel-item">
							<img src="../resources/upload/shelter/${file.fileName}" width="800px" height="500px">
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</c:if>
	
	
  	<hr>
  	<span id="animal">[${dto.animal}] ${dto.animal_kind}</span>
  	
  	<h4>${dto.sex}(${dto.neuter})/${dto.color}/${dto.birth}(년생)/${dto.kg}(Kg)</h4>
  </div>
  	<hr>
  	
  	<div id="contents">
	  	<h3>·공고번호 : ${dto.num}</h3>
 		<h3>·공고기간 : ${dto.period_1} ~ ${dto.period_2}</h3>
  		<h3>·발견장소 : ${dto.place_of_find}</h3>
  		<h3>·특이사항 : ${dto.special}</h3>
  		<h3>·보호센터 : ${dto.center} (Tel: ${dto.center_tel})</h3>
  	</div>	
  		
  	<hr>
  
  
  <input type="button" class="btn btn-warning" value="목록" id="list">
  <input type="button" class="btn btn-warning" value="삭제" id="del">
  <input type="button" class="btn btn-warning" value="수정" id="update">
  
  
  <script type="text/javascript">
  
  	$("#list").click(function() {
		location.href="./shelterList";
	});
  
	$("#update").click(function() {
		location.href="./shelterUpdate?num=${dto.num}";
	});
	
	$("#del").click(function() {
		location.href="./shelterDelete?num=${dto.num}";
	});
	
	

</script>

</div>

</body>
</html>