<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>캠핑장 리스트</title>
<style type="text/css">
table {
	width: 100%;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td><a href="campWriteForm.do">글쓰기</a></td>
		</tr>
	</table>
	<h3>총 ${totCnt}개 캠핑장이 검색되었습니다.</h3>
	<table border="1px">
		<caption>캠핑장 리스트</caption>
		<tr>
			<th>캠핑장번호</th>
			<th>캠핑장이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>지역</th>
			<th>유료/무료</th>
			<th>예약링크</th>
			<th>캠핑장설명</th>
			<th>캠핑장이미지</th>
			<th>캠핑장전경1</th>
			<th>캠핑장전경2</th>
			<th>캠핑장전경3</th>
			<th>편의시설</th>
		</tr>
		<c:if test="${totCnt > 0 }">
			<c:forEach var="Camp_InfoDto" items="${list}">
				<tr>
					<td>${Camp_InfoDto.camp_Id}</td>
					<td><a
						href='campContent.do?camp_Id=${Camp_InfoDto.camp_Id}&pageNum=${currentPage}'>${Camp_InfoDto.camp_Name}</a></td>
					<td>${Camp_InfoDto.camp_Tel}</td>
					<td>${Camp_InfoDto.camp_Addr}</td>
					<td>${Camp_InfoDto.camp_Loc}</td>
					<td>${Camp_InfoDto.c_F}</td>
					<td>${Camp_InfoDto.res_Id}</td>
					<td>${Camp_InfoDto.camp_Desc}</td>
					<td>${Camp_InfoDto.camp_Images}</td>
					<td>${Camp_InfoDto.camp_View1}</td>
					<td>${Camp_InfoDto.camp_View2}</td>
					<td>${Camp_InfoDto.camp_View3}</td>
					<td>${Camp_InfoDto.camp_Item}</td>
				</tr>
				<c:set var="startNum" value="${startNum - 1 }" />
			</c:forEach>
		</c:if>
		<c:if test="${totCnt == 0 }">
			<tr>
				<td colspan=7>데이터가 없네</td>
			</tr>
		</c:if>
	</table>

	<div style="text-align: center;">
		<c:if test="${startPage > blockSize }">
			<a href='campList.do?pageNum=${startPage-blockSize}'>[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href='campList.do?pageNum=${i}'>[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < pageCnt }">
			<a href='campList.do?pageNum=${startPage+blockSize}'>[다음]</a>
		</c:if>
	</div>
</body>
</html>