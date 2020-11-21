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
	
	#wrbtn{
		border: 2px solid #FDC033;
		color: #FDC033;
		font-size: 0.88em;
		font-weight: 500;
		float: right;
		margin-bottom: 15px;
		border-radius: 0.15em;
		padding: 5px 8px;
	}
	.listbox{
		width: 100%;
		height: 230px;
		line-height: inherit;
		border: 2px solid #8c8c8c;
		border-radius: 0.15em;
		padding: 8px;
		margin: 20px 0;
		box-sizing: border-box;
		display: flex;
		cursor: pointer;
	}
	.list-contents{
		font-size: 1.1em;
		font-weight:400;
		margin-left: 30px;
		margin-bottom: 17px;
	}
	
	.list-contents img{
		margin-right: 5px;
	}
	
	.new{
		float: right;
	}
	#text_new{
		display: none;
	}
	
	#shelterList-div1{
		margin-bottom : 100px;
		float: inherit;
	}
	#shelter-container{
		margin-top: 100px;
	}
	
	#shelter-container a {
		text-decoration: none;
		letter-spacing: -0.03em;
		color: #404040;
	}

	#shelterList-container a:hover{
		color: #FDC033;
	}

</style>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>	

	
	<div class="container" id="shelter-container">
	
	 <div class="row">
	 	<div class="col-12 col-md-3 myPage">
				<h1>보호소</h1>
				<hr>
		</div>
		<div class="col-12 col-md-9">
    <a href="./shelterWrite"><input type="button" class="btn btn-default" id="wrbtn" value="글쓰기"></a>
    <div id="shelterList-div1">
  	<c:forEach items="${list}" var="dto" varStatus="vs">  
		<div class="listbox" OnClick="location.href ='./shelterSelect?num=${dto.num}'">

			<div>
				<c:choose>
					<c:when test="${not empty dto.shelterFileDTO.fileName}">
						<img src="../resources/upload/shelter/${dto.shelterFileDTO.fileName}" width="330px" height="210px">
					</c:when>
					<c:otherwise>사진없음</c:otherwise>
				</c:choose>
			</div>

			<div style="border-bottom-style: 5px solid black; width: 85%">
				<p class="list-contents">
					<c:choose>
						<c:when test="${dto.animal eq '개'}">
							<img alt="" src="../resources/img/common/animal_dog.png" width="22px" height="22px">
						</c:when>
						
						<c:when test="${dto.animal eq '고양이'}">
							<img alt="" src="../resources/img/common/animal_cat.png" width="22px" height="22px">
						</c:when>
						
						<c:otherwise>
							<img alt="" src="../resources/img/common/animal_etc.png" width="22px" height="22px">
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${dto.sex eq '암컷'}">
							<img alt="" src="../resources/img/common/animal_female.png" width="22px" height="22px">
						</c:when>

						<c:when test="${dto.sex eq '수컷'}">
							<img alt="" src="../resources/img/common/animal_male.png" width="22px" height="22px">
						</c:when>		

						<c:otherwise>
							<img alt="" src="../resources/img/common/animal_x.png" width="22px" height="22px">
						</c:otherwise>				
					</c:choose>
				</p>
  				<p class="list-contents">·품   종 : [${dto.animal}] ${dto.animal_kind}</p>
  				<p class="list-contents">·등록일 : ${dto.period_1}</p>
  				<p class="list-contents">·지   역 : ${dto.center}</p>
  				<p class="list-contents">·구조장소 : ${dto.place_of_find}</p>
			</div>
			
			<div class="new" style="width: 20%; height: 20%">
			
			</div>
		</div>
		
		</c:forEach>
  
  
  	<c:if test="${pager.beforeCheck}">
  	<a href="./shelterList?curPage=${pager.startNum-1}">[이전]</a>
  	</c:if>
  
  	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
  		<a href="./shelterList?curPage=${i}">${i}</a>
  	</c:forEach>
  	
  	<c:if test="${pager.nextCheck}">
  	<a href="./shelterList?curPage=${pager.lastNum+1}">[다음]</a>
  	</c:if>
  	
  	</div>
  	
  	<div id="text_new">
  		<h5 style="color: red; text-align: right; font-size: 1.5em; font-weight: bold;">new</h5>
  	</div>
  	
  	
  </div>
  </div>
  </div>

  

 <!-- **********Script*********************************************************************************** -->
 
 <script type="text/javascript">
 
 	$(document).ready(function() { 

	  //     alert("${dto.period_1}");
	    
	   var today = new Date().toISOString().substring(0, 10);
	    
	   // alert(today);
	    
	       if(period_1 == today){
	         var text_new = $("#text_new").html().trim();
	         $(".new").append(text_new);
	       }else{
	          return false;
	       }
	    
	 });
 

 
 </script>
  
  
  
</body>
</html>