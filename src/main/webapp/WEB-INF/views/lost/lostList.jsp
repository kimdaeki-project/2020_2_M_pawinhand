<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="main">
	<div class="dropdowns">
	 	 <button type="button" class="drops btn btn-warning" data-toggle="dropdown">
		    	<div class="dropContents">
			    	<h3 class="dropSearch">
			    		<c:choose>
				    		<c:when test="${lostDTO.lostProvince == ''}">
				    			모든 지역
				    		</c:when>
				    		<c:otherwise>
				    			${lostDTO.lostProvince}
				    		</c:otherwise>
			    		</c:choose>
			    		|
			    		<c:choose>
				    		<c:when test="${lostDTO.animalSpecies == ''}">
				    			모든 동물
				    		</c:when>
				    		<c:otherwise>
				    			${lostDTO.animalSpecies}
				    		</c:otherwise>
			    		</c:choose>
			    	</h3>
		    	</div>
		  </button>
		  <div class="dropdownmenu dropdown-menu">
		  	<div class="selectForm">
			    <form action="./lostList" method="get">
			    	<div class="lostdate">
			    		<h3 class="dates">기간 :</h3><input type="date" name="sDate"> ~ <input type="date" name="eDate"><br>
			    	</div>
				    <div class="lostProvince">
				    	<h3 class="lostProvinceTitle">지역 :</h3>
				    	<input type="radio" name="lostProvince" value="">전체
				    	<input type="radio" name="lostProvince" value="서울특별시">서울특별시
		  				<input type="radio" name="lostProvince" value="부산광역시">부산광역시
		  				<input type="radio" name="lostProvince" value="대구광역시">대구광역시
		  				<input type="radio" name="lostProvince" value="인천광역시">인천광역시
		  				<input type="radio" name="lostProvince" value="광주광역시">광주광역시
		  				<input type="radio" name="lostProvince" value="세종특별자치시">세종특별자치시
		  				<input type="radio" name="lostProvince" value="대전광역시">대전광역시
		  				<input type="radio" name="lostProvince" value="울산광역시">울산광역시
		  				<div class="radio2">
		  				<input type="radio" name="lostProvince" value="경기도">경기도
		  				<input type="radio" name="lostProvince" value="강원도">강원도
		  				<input type="radio" name="lostProvince" value="충청북도">충청북도
		  				<input type="radio" name="lostProvince" value="충청남도">충청남도
		  				<input type="radio" name="lostProvince" value="충청남도">충청남도
		  				<input type="radio" name="lostProvince" value="전라북도">전라북도
		  				<input type="radio" name="lostProvince" value="전라남도">전라남도
		  				<input type="radio" name="lostProvince" value="경상북도">경상북도
		  				<input type="radio" name="lostProvince" value="경상남도">경상남도
		  				<input type="radio" name="lostProvince" value="제주특별자치도">제주특별자치도
		  				</div>
		  			</div>
		  			<div class="animalSpecies">
				    	<h3 class="animalSpeciesTitle">품종 :</h3>
				    	<input type="radio" name="animalSpecies" value="">전체
		  				<input type="radio" name="animalSpecies" value="개">개
		  				<input type="radio" name="animalSpecies" value="고양이">고양이
		  				<input type="radio" name="animalSpecies" value="기타">기타
		  			</div>
		  			<button class="btn btn-warning">검색하기</button>		
			    </form>
		    </div>
	  	  </div>
	</div>
	<ul>
		<c:forEach items="${lists}" var="list" varStatus="i">
			<li class="lostList" title="${list.num}">
				<div class="lostImage">
					<img src="../resources/img/upload/lost/${list.fileName}" width="270" height="270" alt="">
					<div class="lostMain">
						<div class="detailSpecies">
							<h3>${list.detailSpecies}</h3>
							<h3 class="state" title="${list.state}">${list.state}</h3>
						</div>
						<div class="shortInfo">
							<h3>${list.gender}/${list.color}/${list.age}</h3>
						</div>
					</div>
					<div class="lostSub">
						<div>
							<img src="../resources/img/lost/time.jpg" width="20" height="20" alt="">
							<h3>${list.lostDate}</h3>
						</div>
						<div>
							<img src="../resources/img/lost/map.jpg" width="20" height="20" alt="">
							<h3>${list.lostProvince} ${list.lostCity} ${list.lostLocation}</h3>
						</div>
					</div>
				</div>
			</li>
		</c:forEach>
	</ul>
	<c:if test="${member != null}">
		<img class="writeIcon" src="../resources/img/lost/write.png" tabindex=0 width="100" height="100" alt="">
	</c:if>
</div>


</body>

<script type="text/javascript">
	$(".lostList").click(function(){
		var num = $(this).attr("title");
		location.href="./lostSelect?num="+num;
	})
	
	$(".writeIcon").click(function(){
		window.open("./lostWrite", 'Write Form', 'width=630px, height=700px, scrollbars=yes');
	});
	
	$(".writeIcon").mouseenter(function(){
		$(this).addClass("writeIconfocus");
	});
	
	$(".writeIcon").mouseleave(function(){
		$(this).removeClass("writeIconfocus");
	});
	
	$(".lostList").mouseleave(function(){
		$(this).removeClass("writeIconfocus");
	});
	function init(){
		$("input:radio[name='lostProvince']:radio[value='${lostDTO.lostProvince}']").prop('checked', true);
		$("input:radio[name='animalSpecies']:radio[value='${lostDTO.animalSpecies}']").prop('checked', true);
	}
	
</script>


</html>