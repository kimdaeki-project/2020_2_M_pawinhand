<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<div style="width: 1050px; margin-bottom: 100px">
		<form id="reviewform" action="../review/reviewInsert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="wlgns">
			<input type="hidden" name="product_num" value="${lists[0].product_num}">
			<div>
				<textarea name="contents" id="reviewText" style="width:1050px;height:100px">후기를 작성하세요!</textarea>
			</div> 
			<div>
				<input id="reviewfile" type="file" name="file"><input style="float: right;" id="reviewbnt" type="button" value="리뷰등록">
			</div>
		</form>
	</div>
	
  	<c:forEach items="${lists}" var="dto">
  		<div style="margin-bottom: 20px">
  			<div style="width: 1110px;">
	  			<span style="font-size: 10px">${dto.contents}</span>
	  			<div style="float: right;width: 200px;padding-left:20px">
		  			<h3 style="font-size: 5px; color: gray;">작성자</h3>
		  			<h3 style="font-size: 5px">${dto.id}</h3>
	  			</div>
	  		</div>
	  		<c:if test="${dto.fileName != null}">
	  		<div>
	  			<img src="../resources/img/upload/product/review/${dto.fileName}" width="270" height="270" alt="">
	  		</div>
	  		</c:if>
	  		<a style="font-size: 5px" href="#">글수정</a>
	  		<a style="font-size: 5px" href="#">글삭제</a>
  		</div>
  		<hr>
  	</c:forEach>

