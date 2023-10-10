<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@30,400,0,0" />
<!-- 돋보기 아이 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link href="<c:url value='/resources/css/admin/adminNotice.css' />"
	rel="stylesheet" type="text/css">

<title>고객센터</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../include/header.jsp" />
		<h3 class="maintitle">고객센터</h3>

		<div class="container">
			<nav class="nav">
				<a href="notice_page_url" class="active">공지사항</a> <a
					href="faq_page_url" class="active">FAQ</a>
			</nav>

			<!-- 		<div class="search">
			<input type="text" placeholder="search">
		</div> -->
			<div class="search-container">
				<!-- 검색창 입력란 -->
				<input type="text" class="search-input" placeholder="search">

				<!-- 돋보기 아이콘 -->
				<i class="fas fa-search search-icon"></i>
			</div>
			<div class="post">
				<div class="post-header">
					<p class="post-category">기타</p>
					<p class="post-title">예약 취소 관련 문의는 어떻게 해야 하나요?</p>
					<span class="post-arrow"> <span
						class="material-symbols-outlined"> expand_more </span>
					</span>
				</div>
				<div class="post-content">
					<p class="post-answer">
						예약 취소 관련은 업체 확인 후 진행이 가능하며 업체로 문의해 주시면 됩니다. <br> 업체 확인 후 취소
						가능 시 예약 리스트에서 취소 요청해 주시면 빠르게 처리 도울 수 있도록 하겠습니다.<br> 취소 요청 시
						취소 관련 수수료 내용은 꼭 확인 후 요청 부탁드립니다.
					</p>
					<div class="post-actions">
						<a href="#" class="post-edit">수정</a> <a href="#"
							class="post-delete">삭제</a>
					</div>
				</div>
			</div>
			<div class="post">
				<div class="post-header">
					<p class="post-category">대충 말머리</p>
					<p class="post-title">대충 제목 2</p>
					<span class="post-arrow"><span
						class="material-symbols-outlined"> expand_more </span></span>
				</div>
				<div class="post-content">
					<p>답변 테스트</p>
					<div class="post-actions">
						<a href="#" class="post-edit">수정</a> <a href="#"
							class="post-delete">삭제</a>
					</div>
				</div>
			</div>

			<div class="post">
				<div class="post-header">
					<p class="post-category">대충 말머리</p>
					<p class="post-title">대충 제목 3</p>
					<span class="post-arrow"><span
						class="material-symbols-outlined"> expand_more </span></span>
				</div>
				<div class="post-content">
					<p>답변 테스트</p>
					<div class="post-actions">
						<a href="#" class="post-edit">수정</a> <a href="#"
							class="post-delete">삭제</a>
					</div>
				</div>
			</div>

			<div class="post">
				<div class="post-header">
					<p class="post-category">대충 말머리</p>
					<p class="post-title">대충 제목 4</p>
					<span class="post-arrow"><span
						class="material-symbols-outlined"> expand_more </span></span>
				</div>
				<div class="post-content">
					<p>답변 테스트</p>
					<div class="post-actions">
						<a href="#" class="post-edit">수정</a> <a href="#"
							class="post-delete">삭제</a>
					</div>
				</div>
			</div>

			<div class="pagination">
				<a href="#" class="prev">이전</a> <a href="#" class="page active">1</a>
				<a href="#" class="page">2</a> <a href="#" class="page">3</a> <a
					href="#" class="page">4</a> <a href="#" class="page">5</a> <a
					href="#" class="next">다음</a>
			</div>
			<!-- <button class="post-add" onclick="redirectToPostPage()">등록</button> -->
		</div>

	</div>

	<script>
	
	const postArrows = document.querySelectorAll('.post-arrow');
	postArrows.forEach(arrow => {
    arrow.addEventListener('click', () => {
        const post = arrow.closest('.post');
        post.classList.toggle('active');
   		});
	});
	
	function redirectToPostPage() {
        // post.jsp 페이지로 이동
        window.location.href = "post.jsp";
    }
	
    document.addEventListener("DOMContentLoaded", function () {
        const prevButton = document.querySelector(".prev");
        const nextButton = document.querySelector(".next");
        const pages = document.querySelectorAll(".page");

        let currentPage = 1;

        // 초기 페이지 설정
        updatePagination();

        // 이전 페이지로 이동
        prevButton.addEventListener("click", function (e) {
            e.preventDefault();
            if (currentPage > 1) {
                currentPage--;
                updatePagination();
            }
        });

        // 다음 페이지로 이동
        nextButton.addEventListener("click", function (e) {
            e.preventDefault();
            if (currentPage < pages.length) {
                currentPage++;
                updatePagination();
            }
        });

        // 페이지 번호 클릭 시 해당 페이지로 이동
        pages.forEach(function (page, index) {
            page.addEventListener("click", function (e) {
                e.preventDefault();
                currentPage = index + 1;
                updatePagination();
            });
        });

        // 페이지네이션 업데이트 함수
        function updatePagination() {
            pages.forEach(function (page, index) {
                if (index === currentPage - 1) {
                    page.classList.add("active");
                } else {
                    page.classList.remove("active");
                }
            });

            if (currentPage === 1) {
                prevButton.style.display = "none";
            } else {
                prevButton.style.display = "inline-block";
            }

            if (currentPage === pages.length) {
                nextButton.style.display = "none";
            } else {
                nextButton.style.display = "inline-block";
            }
        }
    });

	</script>

</body>
</html>
