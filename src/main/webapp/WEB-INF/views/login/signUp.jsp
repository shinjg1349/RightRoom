<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value='/resources/css/login/signUp.css' />"
  rel="stylesheet" type="text/css">

<body>

  <jsp:include page="../include/header.jsp" />
  
  <div class="signUp">
    <h2>회원가입</h2>
    <p>계정 유형을 선택하세요.</p>
  </div>
  <div class="container">
    <div class="box" id="personalBox">
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
        fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
      <path
          d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
    </svg>
      <a href="<c:url value='/userJoinPage?user_rank=1'/>" class="custom-link">개인회원</a>
    </div>
    <div class="box" id="companyBox">
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
        fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
     <path
          d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z" />
    </svg>
      <a href="<c:url value='/companyJoinPage' />?user_rank=2" class="custom-link">기업회원</a>
    </div>
  </div>
  <jsp:include page="../include/footer.jsp" />
  
    <script>
    // 박스를 클릭할 때 링크로 이동하는 함수
    function navigateToLink(link) {
      window.location.href = link;
    }

    // 개인회원 박스 클릭 이벤트 핸들러
    document.getElementById("personalBox").addEventListener("click", function() {
      navigateToLink("<c:url value='/userJoinPage' />");
    });

    // 기업회원 박스 클릭 이벤트 핸들러
    document.getElementById("companyBox").addEventListener("click", function() {
      navigateToLink("<c:url value='/companyJoinPage' />");
    });
  </script>
</body>