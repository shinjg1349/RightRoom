<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link href="<c:url value='/resources/css/admin/adminMyPage.css' />"
	rel="stylesheet" type="text/css">
<body>
	<div class="wrapper">
		<h3>관리자 페이지</h3>

		<div class="container">
			<div class="box">
				<span class="material-symbols-outlined"> manage_accounts </span>
				<div>
					<p class="usermg">회원 관리</p>
					<p class="type">개인 회원 / 업체 회원</p>
				</div>
			</div>
			<div class="box">
				<span class="material-symbols-outlined"> domain_add </span>
				<div>
					<p class="placemg">장소 관리</p>
					<p class="type">신규 / 삭제 / 조회</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
