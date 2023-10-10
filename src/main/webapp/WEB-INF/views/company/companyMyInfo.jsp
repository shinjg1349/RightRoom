<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../include/title.jsp" />

<link href="<c:url value='/resources/css/company/companyMyInfo.css' />" rel="stylesheet" type="text/css">

<body>

	<jsp:include page="../include/header.jsp" />

    <div class="container">
        <p>마이페이지 > 업체정보</p>
        <h2>업체 정보</h2>
        <br>

        <div class="info-item">
        	<p>업체명</p>
            <p class="sub-text">사용자</p>
            <a href="#" class="edit-link">수정</a>
        </div>
        <hr>

        <div class="info-item">
            <p>비밀번호</p>
            <a href="#" class="edit-link">업데이트</a>
        </div>
		<hr>
		
        <div class="info-item">
            <p>연락처</p>
            <p class="sub-text">010-****-0000</p>
            <a href="#" class="edit-link">수정</a>
        </div>
        <hr>

        <div class="info-item">
            <p>주소</p>
            <p class="sub-text">서울시 강남구 ...</p>
            <a href="#" class="edit-link">수정</a>
        </div>
        <hr>

        <div class="info-item">
            <p>이메일</p>
            <p class="sub-text">....@naver.com</p>
            <a href="#" class="edit-link">수정</a>
        </div>
        <hr>
        <br>
        <div class="info-item">
        <a href="#" class="delete-account">탈퇴하기</a>
        </div>

    </div>
    
    <jsp:include page="../include/footer.jsp" />
    
</body>
</html>