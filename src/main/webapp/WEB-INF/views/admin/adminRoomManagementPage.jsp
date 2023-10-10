<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />
<link
	href="<c:url value='/resources/css/admin/adminRoomManagementPage.css' />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<body>

	<jsp:include page="../include/header.jsp" />
	<div id="u_h1">
		<h1>장소 관리</h1>
	</div>

	<div id="container1">
		<button class="check-button">승인</button>
		<button onclick="">대기</button>
		<button onclick="">반려</button>
	</div>

	<div class="container2">
		<section id="u_select">
			<div class="dropdown">
				<a class="dropdown-toggle" role="button" aria-expanded="false">
					정렬 기준 <i class="fas fa-caret-down"></i>
				</a>

				<div class="dropdown-menu">
					<a href="#">가나다순</a> <a href="#">최신순</a> <a href="#">오래된순</a>
				</div>
			</div>
		</section>

		<div class="search">
			<form>
				<input type="text" name="r_name" placeholder="장소 이름"> <input
					type="button" value="search" onclick="">
			</form>
		</div>
	</div>

	<section id="u_table">
		<div>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>업체명</th>
						<th>장소명</th>
						<th>주소</th>
						<th>가격</th>
						<th>승인</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>A호텔</td>
						<td>A룸</td>
						<td>서울시 관악구 남현동 1069-12 A동 102</td>
						<td>0000</td>
						<td><button class="approve-button" onclick="">승인</button></td>
						<td><button class="delete-button" onclick="">삭제</button></td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>

	<jsp:include page="../include/footer.jsp" />
</body>
</html>