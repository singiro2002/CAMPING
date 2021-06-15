<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style2.css" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>VIEW</title>
</head>

</head>
<body>
	<div id="wrapper">
		<div class="box1">
			<div class="jumbotron">
				<!-- <div class="jumbotron" style="background-color: transparent !important;"> -->
				<h1>&nbsp;&nbsp;${camp_InfoDto.camp_Name}</h1>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;즐거운 캠핑 생활</p>
				<hr>
			</div>
		</div>
		<div class="box2">
			<img alt="error" src="images/${camp_InfoDto.camp_Images}.jpg">
		</div>
		<div class="box3">
			<table>
				<tr>
					<th id="thTop">주소</th>
					<td id="tdTop">${camp_InfoDto.camp_Addr}</td>
				</tr>
				<tr>
					<th>문의처</th>
					<td>${camp_InfoDto.camp_Tel}</td>
				</tr>
				<tr>
					<th>지역</th>
					<td>${camp_InfoDto.camp_Loc}</td>
				</tr>
				<tr>
					<th id="thBottom">운영일</th>
					<td id="tdBottom">평일 + 주말</td>
				</tr>
			</table>
		</div>
		<div class="box4">
			<div id="resButtonBox">
				<a id="resButton"
					onclick="alert('예약 전 캠핑장 현황 확인 부탁드립니다. Campro는 예약 링크만 제공하며 서비스는 제공하지 않습니다.')"
					href="${camp_InfoDto.res_Id}" target="_blank">예약하기</a>
			</div>
		</div>
		<div class="box5">
			<div></div>
		</div>
		<div class="box6">
			<hr>
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;캠핑장 전경</h3>
			<img class="images1" alt="error"
				src="images/${camp_InfoDto.camp_View1}.jpg"> <img
				class="images1" alt="error"
				src="images/${camp_InfoDto.camp_View2}.jpg"> <img
				class="images1" alt="error"
				src="images/${camp_InfoDto.camp_View3}.jpg">
		</div>
		<div class="box7">
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;캠핑장 편의시설</h3>
			<img class="images2" alt="error"
				src="images/${camp_InfoDto.camp_Item}.jpg"></img>
		</div>

		<div class="box8">
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;캠핑장 상세 소개</h3>
			<br>
			<p class="desc">${camp_InfoDto.camp_Desc}</p>
		</div>
	</div>
</body>
</html>