<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="/icomoon/style.css">

<link rel="stylesheet" href="/css/board.css">
<!-- Bootstrap CSS -->

<!-- Style -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.0.min.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box font-family: 'Roboto Condensed';
}

#Content_Board_num, #board_num, #post_num {
	display: none;
}

table {
	width: 80%;
}
</style>
</head>
<body>
	<div class="content">
		<div class="container">
			<table border="1">
				<caption>
					<h2>게시판 상세내역</h2>${board_num }</caption>
				<tr>
					<td width="50">번호</td>
					<td>${post.post_num}</td>
					<input type="text" id="Content_Board_num" value="${board_num}">
				</tr>
				<tr>
					<td>제목</td>
					<td>${post.post_name}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${post.user_id}</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>${post.post_date}</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>${post.post_view}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><pre>${post.post_cont}</pre></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="수정"
						onclick="location.href='postUpdateForm.do?board_num=${post.board_num}&post_num=${post.post_num}&pageNum=${pageNum}'">
						<input type="button" value="답변작성"
						onclick="location.href='postWriteForm.do?post_num=${post.post_num}&pageNum=${pageNum}'">
						<input type="button" value="삭제"
						onclick="location.href='postDeleteForm.do?board_num=${board_num}&post_num=${post_num}'">
						<input type="button" value="목록"
						onclick="location.href='boardList.do?pageNum=${pageNum}'"></td>
				</tr>
				<tr>
					<td><input type="text" id="board_num" value="${board_num}">
						<input type="text" id="post_num" value="${post_num}"></td>
				</tr>
			</table>
		</div>
	</div>
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>