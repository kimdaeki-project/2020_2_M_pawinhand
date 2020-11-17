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
	
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<div class="col-12">
		<div class="titles">
			<div class="title-top">
				<c:choose>
				<c:when test="${board eq 'community'}">
					<h1>[${dto.type}]   ${dto.title}</h1>
				</c:when>
				<c:otherwise>
					<h1>${dto.title}</h1>
				</c:otherwise>
				</c:choose>
			</div>
			<dl class="title-items">
				<dt>작성자</dt>
				<dd>${dto.writer}</dd>
				<dt>게시일</dt>
				<dd>${dto.regDate}</dd>
				<dt>조회</dt>
				<dd>${dto.hit}</dd>
			</dl>
		</div>
		<div class="files">
			<h3 class="fileTitle">첨부파일:</h3>
			<c:forEach items="${files}" var="file">
			<a class="fileName" href="./fileDown?fileName=${file.fileName}&oriName=${file.oriName}">${file.fileName}</a>
			</c:forEach>
		</div>
			<h1 class="contents">${dto.contents}</h1>
		<div>
		  <img alt="" src="../resources/upload/member/${fileName}">
		</div>
		<div class="buttons">
			<input type="button" value="목록" id="list" class="button btn btn-light">
			<c:if test="${board != 'notice'}">
			<a href="./${board}Reply?num=${dto.num}" class="button btn btn-light">답글</a>
			</c:if>
			<input type="button" title="${dto.num}" value="갱신" id="update" class="button btn btn-light">
			<input type="button" title="${dto.num}" value="삭제" id="del" class="button btn btn-light">
		</div>
		
		<c:if test="${board eq 'community'}">
			<div class="replyTitle">
				<h3 class="replyTitles">댓글 (${replyCount})</h3>
			<div id="result">
			
			</div>
			
			<form action="../boardReply/boardReplyInsert" method="post">
			  <input type="text" name="contents">
			  <input type="hidden" value="${dto.num}" name="cmn_num">
			  <input type="hidden" value="${dto.writer}" name="writer">
			  <button class="btn btn-warning">댓글</button>
			</form>
			</div>
		</c:if>
		
	</div>
</div>
<script type="text/javascript">

	//댓글
	var curPage = 1;
    getList();
	
    $("#result").on("click", ".c1", function(){
    	curPage = $(this).attr("title");
    	alert(curPage);
    	getList();
    });
    
    $("#result").on("click", ".reply", function(){
    	var num = $(this).attr("title");
    	$("#reply"+num).html("<form action='../boardReply/reply' method='get'><span>${dto.writer}</span><input type='hidden' value="+num+" name='num'><input type='hidden' value='${dto.writer}' name='writer'><input type='text' name='contents'><button>등록</button></form>");
    });
    
    $("#result").on("click", ".del", function(){
    	var num = $(this).attr("title");
    	var cmn_Num = "${dto.num}";
    	location.href="../boardReply/boardReplyDelete?num="+num+"&cmn_num="+cmn_Num;
    });
    
	function getList(){
		var num = "${dto.num}";
		$.get("../boardReply/boardReplyList?cmn_num="+num+"&curPage="+curPage,function(data) {
			$("#result").html(data);
		});
	}
	

	$("#del").click(function(){
		var num = $("#del").attr("title");
		location.href="./${board}Delete?num="+num;
	});
	
	$("#update").click(function(){
		var num = $("#del").attr("title");
		location.href="./${board}Update?num="+num;
	});
	
	$("#list").click(function(){
		location.href="./${board}List"
	});
	
	
</script>
</body>
</html>