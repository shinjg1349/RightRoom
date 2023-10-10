<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value='/resources/css/admin/adminCreatePost.css' />"
	rel="stylesheet" type="text/css">

<title>공지사항 작성 페이지</title>
</head>
<body>
	<div class="maintitle">
		<h3>게시글 작성</h3>
	</div>
	<div class="container">
		<h2>게시글을 작성해 주세요.</h2>
		<p class="commentary">작성 시 공지사항과 FAQ 중 하나를 선택하세요.</p>
		<div class="filter">
			<label for="notice">공지사항</label> <input type="checkbox" id="notice"
				name="filter" value="notice" checked> <label for="faq">FAQ</label>
			<input type="checkbox" id="faq" name="filter" value="faq">
		</div>

		<div class="input-box">
			<input type="text" id="title" placeholder="제목을 입력해 주세요.">
		</div>

		<div class="input-box">
			<textarea id="content" rows="10" placeholder="내용을 입력해 주세요."></textarea>
		</div>

		<div class="input-box">
			<div class="file-input-container">
				<input type="file" id="image" accept="image/*"> <label
					for="image" id="file-button">파일 선택</label>
			</div>
		</div>
	</div>
	<div class="buttons">
		<button id="delete">삭제</button>
		<button id="register">등록</button>
	</div>
	<script>
		// JavaScript를 사용하여 둘 중 하나만 체크 가능하도록 함
		const noticeCheckbox = document.getElementById("notice");
		const faqCheckbox = document.getElementById("faq");

		noticeCheckbox.addEventListener("change", function() {
			if (this.checked) {
				faqCheckbox.checked = false;
			}
		});

		faqCheckbox.addEventListener("change", function() {
			if (this.checked) {
				noticeCheckbox.checked = false;
			}
		});
	</script>
</body>

</html>