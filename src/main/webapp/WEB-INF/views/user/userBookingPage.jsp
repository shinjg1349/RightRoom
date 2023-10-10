<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<jsp:include page="../include/title.jsp" />
<link href="<c:url value='/resources/css/user/userBookingPage.css' />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>

<body>
	<jsp:include page="../include/header.jsp" />

	<div class="centered-container">
		<div class="circle-icon">
			<div class="inner-icon">
				<span class="material-symbols-outlined"> contract_edit </span>
			</div>
		</div>
		<div class="text">예약 정보 입력</div>
	</div>
	<div class="container">
		<div class="left-box">
			<div class="maintitle">
				<span class="material-symbols-outlined"
					style="vertical-align: middle">counter_1</span> <span
					style="vertical-align: middle"> 고객 정보 </span>
			</div>
			<hr class="line">
			<div class="form-group">
				<div class="input-group">
					<label for="name">이름<span class="star"> *</span></label> <input
						type="text" id="name" name="name">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<label for="contact">연락처<span class="star"> *</span></label> <select
						name="contact" class="contact">
						<option value="010" selected>010</option>
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="032">033</option>
						<option value="032">041</option>
						<option value="032">042</option>
						<option value="032">043</option>
						<option value="032">044</option>
						<option value="032">051</option>
						<option value="032">052</option>
						<option value="032">053</option>
						<option value="032">054</option>
						<option value="032">055</option>
						<option value="032">061</option>
						<option value="032">062</option>
						<option value="032">063</option>
						<option value="032">064</option>
					</select> <input type="text" id="contact2" name="contact2"> <input
						type="text" id="contact3" name="contact3">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<label for="email">이메일<span class="star"> *</span></label> <input
						type="email" id="email" name="email">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<label for="company">회사명</label> <input type="text" id="company"
						name="company">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<label for="guests">인원<span class="star"> *</span></label> <input
						type="number" id="guests" name="guests">
				</div>
			</div>
			<div class="maintitle">
				<span class="material-symbols-outlined"
					style="vertical-align: middle;">counter_2</span> <span
					style="vertical-align: middle"> 행사 정보 </span>
			</div>
			<hr class="line">
			<div class="form-group">
				<div class="input-group">
					<label for="event-name">행사명<span class="star"> *</span></label> <input
						type="text" id="event-name" name="event-name">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<label for="event-purpose">행사 목적<span class="star">
							*</span></label>
					<textarea id="event-purpose" name="event-purpose" rows="4"></textarea>
				</div>
			</div>
			<!-- <div class="form-group">
                <label for="table-arrangement">테이블 배치</label>
                <select id="table-arrangement" name="table-arrangement">
                    <option value="round">원형</option>
                    <option value="rectangular">사각형</option>
                    <option value="custom">맞춤</option>
                </select>
            </div> -->
			<div class="form-group">
				<label for="table-arrangement">테이블 배치</label>
				<div class="box">
					<span class="material-symbols-outlined"> manage_accounts </span>
					<div>
						<p class="usermg">배치 1</p>
					</div>
				</div>
				<div class="box">
					<span class="material-symbols-outlined"> domain_add </span>
					<div>
						<p class="placemg">배치 2</p>
					</div>
				</div>
				<div class="box">
					<span class="material-symbols-outlined"> manage_accounts </span>
					<div>
						<p class="usermg">배치 3</p>
					</div>
				</div>
				<div class="box">
					<span class="material-symbols-outlined"> domain_add </span>
					<div>
						<p class="placemg">배치 4</p>
					</div>
				</div>
				<input type="hidden" id="selected-table-arrangement"
					name="table-arrangement" value="">
			</div>
			<div class="maintitle">
				<span class="material-symbols-outlined"
					style="vertical-align: middle;">counter_3</span> <span
					style="vertical-align: middle;"> 기타 요청사항 </span>
			</div>
			<hr class="line">
			<div class="form-group">
				<textarea id="special-requests" name="special-requests" rows="8"></textarea>
			</div>
		</div>
		<div></div>
		<div class="right-box" id="hotel-info">
			<div>
				<h2>호텔 정보</h2>
				<p>호텔 이름: Hotel XYZ</p>
				<p>룸 이름: 스위트 룸</p>
				<p>주소: 서울시 강남구 123번길 45</p>
				<p>호텔 연락처: 123-456-7890</p>
				<p>선택한 날짜: 2023-09-26</p>
			</div>
			<div class="reservation-summary">
				<h2>총 예약 금액</h2>
				<p>￦ 1,000,000</p>
				<div class="buttons">
					<button class="heart-button">♡</button>
					<button class="reserve-button">예약</button>
				</div>
			</div>
		</div>
	</div>
	<script>
				// 여기서부터 384행까지는 필요가 없는 코드라고 함
				// 오른쪽 박스의 높이를 내용에 맞게 조절하는 함수
				function adjustRightBoxHeight() {
					const rightBox = document.getElementById('hotel-info');
					if (rightBox) {
						rightBox.style.height = rightBox.scrollHeight + 'px';
					}
				}

				// 페이지 로드 시 박스 높이 조절 함수 호출
				window.addEventListener('load', adjustRightBoxHeight);

				// 페이지 크기가 변경될 때도 박스 높이 조절 함수 호출
				window.addEventListener('resize', adjustRightBoxHeight);

				// 박스 클릭 이벤트 처리
				const tableOptions = document.querySelectorAll('.table-option');
				const selectedTableArrangementInput = document.getElementById('selected-table-arrangement');

				// 테이블 배치
				tableOptions.forEach(option => {
					option.addEventListener('click', () => {
						// 클릭한 박스에 검은색 스타일 적용
						option.style.backgroundColor = '#F5F5F5';
						option.style.color = 'black';

						// 다른 박스의 스타일 초기화
						tableOptions.forEach(otherOption => {
							if (otherOption !== option) {
								otherOption.style.backgroundColor = 'white';
								otherOption.style.color = 'black';
							}
						});

						// 선택한 값을 숨겨진 input 엘리먼트에 저장
						selectedTableArrangementInput.value = option.innerText;
					});
				});

				// 하트 바꾸기
				const heartButton = document.querySelector(".heart-button");

				heartButton.addEventListener("click", function () {
					if (heartButton.textContent === "♥️") {
						heartButton.textContent = "♡";
					} else {
						heartButton.textContent = "♥️";
					}
				});
			</script>

	<jsp:include page="../include/footer.jsp" />
</body>

</html>