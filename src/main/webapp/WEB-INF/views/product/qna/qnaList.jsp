<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="width: 1050px; margin-bottom: 100px">
	<input type="button" class="btn btn-dark" value="Q&A 작성하기">
	<table style="margin-top: 50px" class="tableborder table table-hover">
		<tr class="qnatr">
	  		<td style="color: black">번호</td>
	  		<td style="color: black">내용</td>
	  		<td style="color: black">작성자</td>
	  		<td style="color: black">등록일자</td>
	  	</tr>
  	<c:forEach items="${lists}" var="dto">
  		<tr class="qnatr">
  			<td>${dto.qna_num}</td>
  			<td style="cursor: pointer" class="qnatitle" title="${dto.qna_num}">${dto.title}</td>
  			<td>${dto.id}</td>
  			<td>${dto.regDate}</td>
  		</tr>
  		<tr id="qnacontent${dto.qna_num}" title="${dto.contents}">
  			
  		</tr>
  	</c:forEach>
  </table>
  <input type="hidden" id="tableName" value="qna">
  <div style="text-align: center" class="pager">
  	<c:if test="${pager.startNum gt 1}">
  		 <span class="c1" title="${pager.startNum-1}">[이전]</span>
    </c:if>
  	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
  		<span class="c1" title="${i}">${i}</span>
  	</c:forEach>
  	
  	<c:if test="${pager.nextCheck}">
  		<span class="c1" title="${pager.lastNum+1}">[다음]</span>
  	</c:if>
  </div>
  
</div>
