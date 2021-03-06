<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
</head>
<body>
	<form action="postUpdatePro.do" method="post">
		 <input type="hidden" name="board_num" value="${post.board_num }">
		 <input type="hidden" name="post_num" value="${post.post_num }">
		 <input type="hidden" name="pageNum" value="${pageNum }">
		 <input type="hidden" name="user_id" value="${post.user_id}">
		<table border="1">
			<caption>
				<h2>게시판 수정</h2>
			</caption>
			<tr>
				<td>번호</td>
				<td>${post.post_num}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="post_name" required="required"
					value="${post.post_name}"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${post.user_id}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="40" name="post_cont" required="required">${post.post_cont}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정완료"></td>
			</tr>
		</table>
	</form>
</body>
</html>