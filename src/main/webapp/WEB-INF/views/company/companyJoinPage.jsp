<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../include/title.jsp" />

<link href="<c:url value='/resources/css/user/userJoinPage.css' />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>

	<jsp:include page="../include/header.jsp" />

	<section>

		<div id="section_wrap">


				<h3><b>업체회원 회원가입</b></h3>
				<br>
				<p><span id="star"> * </span> 아래 필수입력정보 작성하여 주시기 바랍니다.</p>
				<br>
			<div class="create_account_form">

					<dl>
						<dt>ID<span id="star"> *</span></dt>
						<dd>
						<input type="text" name="user_id"
							placeholder="아이디 입력" required>
							
						<!-- add onClick function -->
						<button type="button" class="IDConfirm" onclick="chkDuplicateUserId()">ID중복확인</button>
						</dd>
					</dl>
					
					<dl>
						<dt>PASSWORD<span id="star"> *</span></dt>
						<dd>
							<input type="password" name="user_pw"
								placeholder="비밀번호 입력" maxlength="12" required>
							<p>영문, 숫자, 특수문자 조합으로 8~15자 이내로 입력</p>
						</dd>
					</dl>
					
					<dl>
						<dt>CONFIRM PASSWORD<span id="star"> *</span></dt>
						<dd>
							<input type="password" name="user_pw_again"
								placeholder="비밀번호 재입력" maxlength="12" required>
						</dd>
					</dl>
					
<!-- 					<ul>
						<li>비밀번호 내 ID가 포함되거나, 연속되는 문자 또는 숫자는 3자리 이상 사용할 수 없습니다.</li>
						<li>특수문자(!@#$%^&+=)중 하나를 선택하시면 됩니다.</li>
					</ul> -->
					
					<hr id="hr">
					
					<dl>
						<dt>업체명<span id="star"> *</span></dt>
						<dd>
						<input type="text" name="user_name" placeholder="이름 입력"
							required>
						</dd>
					</dl>
					
					<dl>
						<dt>연락처<span id="star"> *</span></dt>
						<dd>
    					<select id="FirstPhone1" name="FirstPhone1" onchange="showInput(this)">
        					<option value="010">010</option>
        					<option value="writeDirectly">직접입력</option>
    					</select>
    					<div id="directInput" style="display: none;">
							<input type="text" name="custom_phone" placeholder="직접 입력">
						</div>
    					<input type="text" maxlength="4" id="MidPhone1" name="MidPhone1"  placeholder="" value="">
    					<input type="text" maxlength="4" id="LastPhone1" name="LastPhone1"  placeholder="" value="">
						</dd>
					</dl>
					
					<dl>
						<dt>이메일<span id="star"> *</span></dt>
						<dd>
						<input type="email" name="email_ID" placeholder="이메일 입력" required>
						<span>@</span>
	
						<select class="EmailAddress" name="EmailAddress"
							onchange="emailShowInput(this)">
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.com">daum.com</option>
							<option value="writeDirectly">직접입력</option>
						</select>
						<div id="emailDirectInput" style="display: none;">
							<input type="text" name="custom_email" placeholder="직접 입력">
						</div>
						</dd>
					</dl>

			</div>
		<button class="cancel-button" onclick="goBack()">취소</button>
		<button type="button" class="join-button" data-bs-toggle="modal"
			data-bs-target="#staticBackdrop">회원가입</button>
		</div>
	</section>
	<jsp:include page="../include/footer.jsp" />

	<script>
		// 직접입력 선택 시 입력 필드 표시/숨김 함수
		function showInput(select) {
			const directInput = document
					.getElementById("directInput");
			if (select.value === "writeDirectly") {
				directInput.style.display = "inline-block";
			} else {
				directInput.style.display = "none";
			}
		}
		function emailShowInput(select) {
		    const directInput = document.getElementById("emailDirectInput");
		    if (select.value === "writeDirectly") {
		        directInput.style.display = "inline-block";
		    } else {
		        directInput.style.display = "none";
		    }
		}
		// 취소 버튼 누르면 브라우저의 이전 페이지로 이동
		function goBack() {
			window.history.back();
		}
	</script>

	<jsp:include page="../modal/modal_JoinSuccess.jsp" />

</body>
</html>