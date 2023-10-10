<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/resources/css/user/userReserveForm.css' />" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<body>
<div class="container">
	<div class="box">
		<h2>예약이 완료되었습니다.</h2>
		<p class="sub-text">예약 내용은 입력하신 이메일로 발송됩니다.</p>
		<br>
		<div>
		<span class="material-symbols-sharp">counter_1</span>
		<h3>고객 정보</h3>
		</div>
		<hr>
		<p>이름</p>
        <p>연락처</p>
        <p>이메일</p>
        <p>회사명</p>
        <p>인원</p>
        <p>총 예약 금액</p>
		
		<div>
		<span class="material-symbols-sharp">counter_2</span>
		<h3>행사 정보</h3>
		</div>
		<hr>
		<p>행사명</p>
        <p>행사 목적</p>
        <p>테이블 배치</p>
		
		<div>
		<span class="material-symbols-sharp">counter_3</span>
		<h3>기타 요청사항</h3>
		</div>
		<hr>
		<p>생수 10병</p>
		
	</div>
</div>
<div class="button-container">
<button type="submit">확인</button>
</div>
</body>
