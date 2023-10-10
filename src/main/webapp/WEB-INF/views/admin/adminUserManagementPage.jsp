<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />
<link href="<c:url value='/resources/css/admin/adminUserManagementPage.css' />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<body>
	<jsp:include page="../include/header.jsp" />
	<div id="u_h1">
		<h1>회원 관리</h1>
	</div>

	<div class="container">
		<section id="u_select">
			<div class="dropdown">
				<a class="dropdown-toggle" role="button" aria-expanded="false">
					회원 분류 <i class="fas fa-caret-down"></i>
				</a>

				<div class="dropdown-menu">
					<a href="#">기업 회원</a> <a href="#">개인 회원</a>
				</div>
			</div>
		</section>

		<div class="search">
			<form>
				<input type="text" name="b_name" placeholder="아이디/이름"> <input
					type="button" value="search" onclick="">
			</form>
		</div>
	</div>

	<section id="u_table">
		<div>
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>연락처</th>
						<th>회원 등급</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ghzm333</td>
						<td>설원</td>
						<td>010-8859-1027</td>
						<td>고객</td>

					</tr>
				</tbody>
			</table>
		</div>
	</section>

	<jsp:include page="../include/footer.jsp" />
</body>
</html>