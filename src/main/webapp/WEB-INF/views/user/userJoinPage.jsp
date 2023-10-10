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
<script 
src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>

	<jsp:include page="../include/header.jsp" />

	<section>
		<form id="join_form" method="post">
		<input type="hidden" name="user_rank" id="user_rank" value="1">
		<input type="hidden" name="user_phone" id="user_phone" value="">
		<input type="hidden" name="user_email" id="user_email" value="">
		<div id="section_wrap">


				<h3><b>개인회원 회원가입</b></h3>
				<br>
				<p><span id="star"> * </span> 아래 필수입력정보 작성하여 주시기 바랍니다.</p>
				<br>
				
			<div class="create_account_form">
			
			<!-- 정보가 서버로 전송될 때 넘어가는 주소 값 -->
			

					<dl>
						<dt>ID<span id="star"> *</span></dt>
						<dd>
						<input type="text" name="user_id"
							placeholder="아이디 입력" required>
							
						<span class="id_input_1">사용 가능한 아이디입니다.</span>
						<span class="id_input_2">아이디가 이미 존재합니다.</span>
						
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
						<dt>이름<span id="star"> *</span></dt>
						<dd>
						<input type="text" name="user_name" placeholder="이름 입력"
							required>
						</dd>
					</dl>
					
					<dl>
						<dt>연락처<span id="star"> *</span></dt>
						<dd>
    					<select id="FirstPhone1" name="user_phone1" onchange="showInput(this)">
        					<option value="010">010</option>
        					<option value="writeDirectly">직접입력</option>
    					</select>
    					<div id="directInput" style="display: none;">
							<input type="text" id="FirstPhone1direct" name="user_phone1" placeholder="직접 입력">
						</div>
    					<input type="text" maxlength="4" id="MidPhone1" name="user_phone2"  placeholder="" value="">
    					<input type="text" maxlength="4" id="LastPhone1" name="user_phone3"  placeholder="" value="">
						</dd>
					</dl>
					
					<dl>
						<dt>이메일<span id="star"> *</span></dt>
						<dd>
						<input type="text" name="user_email1" id="user_email1" placeholder="이메일 입력" required>
						<span>@</span>
	
						<select class="email_address" name="user_email2" id="user_email2"
							onchange="emailShowInput(this)">
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.com">daum.com</option>
							<option value="writeDirectly">직접입력</option>
						</select>
						<div id="emailDirectInput" style="display: none;">
							<input type="text" name="custom_email" id="custom_email" placeholder="직접 입력">
						</div>
						</dd>
					</dl>
					
<!-- 					<div class="container1">
						<div class="container2">
							<P>회사명</P>
						</div>
						<input type="text" name="user_address" placeholder="회사명을 입력해주세요.">
					</div> -->
				
			</div>
		<button type="button" class="btn" onclick="goBack()">가입취소</button>
<!-- 		<input type="submit" class="join_button" data-bs-toggle="modal"
			data-bs-target="#staticBackdrop">회원가입 -->
			<button type="button" id="btnFormPost" class="btn btn-primary">가입하기</button>
		</div>
		</form>
	</section>
	<jsp:include page="../include/footer.jsp" />

	<script>
	$(document).ready(function () {
	    $("#btnFormPost").click(function () {
	    	let firstPhone1 = $("#FirstPhone1").val();
	    	if (firstPhone1 == 'writeDirectly'){
	    		firstPhone1 = $("#FirstPhone1direct").val();
	    	}
	    	let user_phone = firstPhone1 + $("#MidPhone1").val() + $("#LastPhone1").val();  
	    	$("#user_phone").val(user_phone);
	    	
	    	let user_email1 = $("#user_email1").val();
	    	let user_email2 = $("#user_email2").val();
	    	if (user_email2 == 'writeDirectly'){
	    		user_email2 = $("#custom_email").val();
	    	}
	    	let user_email = user_email1 + "@" + user_email2;  
	    	$("#user_email").val(user_email);
				    	
	        $.post('<c:url value='/userJoinPageProc' />', $('#join_form').serialize(), function (result) {
	            // Process the response from the server
	            if (result.resultCode == "0000") {
	                alert('회원가입이 완료되었습니다.\n로그인 후 이용해 주세요.');
	                location.href = '/Member/Login';
	            } else {
	                alert(result.resultMessage);
	            }
	        }, 'json');
	    }); // <-- Added closing parenthesis and semi-colon
	});


	
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
		
 		//회원가입 버튼
		$(document).ready(function(){
			$(".join_button").click(function(){
				$("#join.form").attr("action", "/userJoinPage");
				$("#join.form").submit();
			});
		}); 
 		
	</script>

	<jsp:include page="../modal/modal_JoinSuccess.jsp" />

</body>
</html>