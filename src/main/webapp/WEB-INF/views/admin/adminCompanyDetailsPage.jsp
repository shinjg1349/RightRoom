<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />
<link
	href="<c:url value='/resources/css/admin/adminUserDetailsPage.css' />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<body>

	<jsp:include page="../include/header.jsp" />
	<div id="container">
		<div id="u_h1">
			<h1>회원 아이디 user12345</h1>
			<button class="delete-button" onclick="">회원 삭제</button>
		</div>
		<p>이름 -</p>
		<p>연락처 -</p>
		<p>이메일 -</p>
	</div>
	<hr>
	<div id="u_h2">
		<h2>내 장소 내역</h2>
	</div>
	<section id="u_table">
		<div>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>장소명</th>
						<th>등록 일자</th>
						<th>주소</th>
						<th>장소 삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>A호텔 A룸</td>
						<td>2000-00-00</td>
						<td>서울시 관악구 남현동 1069-12 A동 102</td>
						<td><button class="delete-button2" onclick="">삭제</button></td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>

	<jsp:include page="../include/footer.jsp" />
</body>
</html>