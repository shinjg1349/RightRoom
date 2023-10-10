<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
 href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link href="<c:url value='/resources/css/user/userMyPage.css' />"
 rel="stylesheet" type="text/css">
<body>
<div class="wrapper">
 <h3>마이 페이지</h3>

 <div class="container">
  <div class="box">
   <span class="material-symbols-outlined">badge</span>
   <div>
    <p>개인 정보</p>
    <p class="sub-text">조회 / 수정 / 탈퇴</p>
    <a href="<c:url value='/userMyInfo' />" ></a>
   </div>
  </div>
  <div class="box">
   <span class="material-symbols-outlined">fact_check</span>
   <div>
    <p>이용내역 조회</p>
    <p class="sub-text">관심 장소 / 예약 리스트</p>
    <a href="<c:url value='/userHistoryInfo' />" ></a>
   </div>
  </div>
 </div> 
</div> 
</body>
</html>
