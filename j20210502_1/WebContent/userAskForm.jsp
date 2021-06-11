<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<table border="1">
			<tr>
				<td>id<input type="text" name="user_id" value="${user_id }">
				board_num<input type="text" name="board_num" value="${board_num }">
				post_num<input type="text" name="post_num" value="${post_num }"></td>
			</tr>
			<tr>
				<td>게시번호</td><td>제목</td><td>작성일</td><td>답변유무</td>
			</tr>
			<c:if test="${totCnt > 0 }">
			<c:forEach var="post" items="${list }" varStatus="status">
				<tr>
					<td>${startNum }</td>
					<td class="left" width=200>
						<c:if test="${post.post_view > 20}">
							<img src='images/hot.gif' >
						</c:if>
						<c:if test="${post.post_lv > 0}">
						    <img src='images/level.gif' width="${post.post_lv*10}"> 
						    <%--       	board.re_level  ${board.re_level} --%>
					        <img src='images/re.gif'>
						</c:if>
						<a href='userAskContent.do?board_num=${board_num}&post_num=${post.post_num}&pageNum=${currentPage}&user_id=${user_id }'>
						${post.post_name }</a>
					</td>
					<td>${post.post_date }</td>
					<td>${post.post_chq }</td>
				</tr>
				<c:set var="startNum" value="${startNum -1 }" />
			</c:forEach>
			</c:if>
			<tr>
				<td><input type="button" name="write_ask" value="글쓰기" onclick="location.href='userAskWriteForm.do?user_id=${user_id }&board_num=${board_num }'"></td>		
			</tr>
		</table>
	</form>
</body>
</html>