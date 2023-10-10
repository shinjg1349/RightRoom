<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>이용 내역 조회</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/user/userReserveList.css">
</head>
<body>
	<div class="wrapper">
		<h1>이용 내역 조회</h1>
		<br>
		<div class="menu-container">
			<a href="notice_page_url" class="menu-item">관심장소</a>
			<a href="faq_page_url" class="menu-item">예약리스트</a>
		</div>
		<br>
		<div>
			<div class="hotel-info">
				<div class="hotel-image">
					<img src="resources/img/2023-09-25 17.55.42.jpg">
				</div>
				<div class="hotel-details">
					<h2>호텔이름</h2>
					<p>룸이름</p>
					<p>주소</p>
				</div>
			</div>
			<div class="button-group">
				<button class="btn-reservation">예약서 확인</button>
				<button class="btn-cancel">예약 취소</button>
			</div>
			<div class="button-group">
				<!-- 				<button class="btn-reservation">예약서 확인</button> -->
				<!-- 				<button class="btn-review">리뷰 작성</button> -->
			</div>
		</div>
	</div>
</body>

</head>

</html>