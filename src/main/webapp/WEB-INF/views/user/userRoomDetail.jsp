<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 내부css -->
    <link rel="stylesheet" href="resources/css/usser/userRoomDetail.css" type="text/css">
    <!-- 외부css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>

    <div class="centered-container">
        <div class="circle-icon">
            <div class="inner-icon">
                <i class="material-symbols-outlined">newsmode</i>
            </div>
        </div>
        <div class="text">상세 페이지</div>
    </div>

    <div class="wrapper">
        <!-- 헤더 아래에 상세페이지 아이콘 -->
        <!-- 왼쪽 섹션 -->
        <div class="left-section">
            <!-- 호텔 이미지 슬라이더 -->
			<div class="gallery" id="gallery">
			    <img src="resources/img/hotel1.png" />
			    <img src="resources/img/hotel2.png" />
			    <img src="resources/img/hotel3.png" />
			    <button class="prev-button" onclick="showPreviousImage()">&#8249;</button>
			    <button class="next-button" onclick="showNextImage()">&#8250;</button>
			</div>
            

			<hr class="custom-hr">

			<!-- 최대 수용 인원을 감싸는 div -->
			<span class="table-label">최대 수용 인원</span>
			<div class="max-occupancy">
				<!-- 오른쪽에 데이터 영역 -->
				<div class="data-area">
				
					<!-- 나중에 데이터가 들어갈 내용 -->
				</div>
			</div>

			<hr class="custom-hr">
		<!-- 제공되는 서비스 부분 -->
		<span class="table-label">제공되는 서비스</span>
		<br>
		<div class="checkbox-group">
			<div class="max-occupancy">
		<table>
       	 <tr>
            <!-- 뷔페 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="buffetService" name="services" value="뷔페" class="form-check-input" />
                    <label for="buffetService" class="form-check-label">
                        <span class="material-icons">check_box</span> 뷔페
                    </label>
                </div>
            </td>
            <!-- 빔프로젝터 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="projectorService" name="services" value="빔프로젝터" class="form-check-input" />
                    <label for="projectorService" class="form-check-label">
                        <span class="material-icons">check_box</span> 빔프로젝터
                    </label>
                </div>
            </td>
            <!-- 마이크 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="micService" name="services" value="마이크" class="form-check-input" />
                    <label for="micService" class="form-check-label">
                        <span class="material-icons">check_box</span> 마이크
                    </label>
                </div>
            </td>
            <!-- 와이파이 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="wifiService" name="services" value="와이파이" class="form-check-input" />
                    <label for="wifiService" class="form-check-label">
                        <span class="material-icons">check_box</span> 와이파이
                    </label>
                </div>
            </td>
       	 <tr>
            <!-- 촬영 가능 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="photoService" name="services" value="촬영가능" class="form-check-input" />
                    <label for="photoService" class="form-check-label">
                        <span class="material-icons">check_box</span> 촬영 가능
                    </label>
                </div>
            </td>

            <!-- 다과 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="snackService" name="services" value="다과" class="form-check-input" />
                    <label for="snackService" class="form-check-label">
                        <span class="material-icons">check_box</span> 다과
                    </label>
                </div>
            </td>

            <!-- 화이트보드 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="whiteBoardService" name="services" value="화이트보드" class="form-check-input" />
                    <label for="whiteBoardService" class="form-check-label">
                        <span class="material-icons">check_box</span> 화이트보드
                    </label>
                </div>
            </td>

            <!-- 에어컨 -->
            <td>
                <div class="form-check form-check-inline">
                    <input type="checkbox" id="airconService" name="services" value="에어컨" class="form-check-input" />
                    <label for="airconService" class="form-check-label">
                        <span class="material-icons">check_box</span> 에어컨
                    </label>
                </div>
            </td>
        </tr>
		</table>
		
			</div>
		</div>

		<hr class="custom-hr">
		
		<!-- 테이블 배치 체크박스 -->
   		<span class="table-label">테이블 배치</span>
   		<br>
		<div class="checkbox-group">
	        <div class="form-check form-check-inline custom-checkbox">
	            <input type="checkbox" id="banquet" name="tableArrangement" value="연회식" class="form-check-input" />
	            <label for="banquet" class="form-check-label">
	                연회식
	                <span class="material-icons">wb_sunny</span>
	                최대 100명
	            </label>
	        </div>
	
	        <div class="form-check form-check-inline custom-checkbox">
	            <input type="checkbox" id="theater" name="tableArrangement" value="극장식" class="form-check-input" />
	            <label for="theater" class="form-check-label">
	                극장식
	                <span class="material-icons">theater_comedy</span>
	                최대 150명
	            </label>
	        </div>
	
	        <div class="form-check form-check-inline custom-checkbox">
	            <input type="checkbox" id="lecture" name="tableArrangement" value="강의식" class="form-check-input" />
	            <label for="lecture" class="form-check-label">
	                강의식
	                <span class="material-icons">width_full</span>
	                최대 50명
	            </label>
	        </div>
	
	        <div class="form-check form-check-inline custom-checkbox">
	            <input type="checkbox" id="d-shaped" name="tableArrangement" value="ㄷ자형" class="form-check-input" />
	            <label for="d-shaped" class="form-check-label">
	                ㄷ자형
	                <span class="material-icons">drag_indicator</span>
	                최대 30명
	            </label>
	        </div>
		</div>
			
			<hr class="custom-hr">
			
		<!-- FAQ 섹션 -->
		<div class="cancellation-policy">
			<div class="max-occupancy-text">FAQ</div>
				<div class="data-area">
				<p>
					어쩌고 저쩌고 이런 질문 저런 질문 
		        </p>
			</div>
		</div>

			<hr class="custom-hr">
			
		<!-- 취소 환불 규정 -->
		<div class="cancellation-policy">
		    <div class="max-occupancy-text">취소 환불 규정</div>
		    <div class="data-area">
		        <p>
		            -예약 확정 후 행사 변경 및 취소하실 경우에는 담당자에게 통보하여 주셔야 하며<br>
		            행사를 취소하실 경우에는 아래와 같은 보증금 환불 규정을 따릅니다.<br>
		            * 행사일로부터 14일 전 취소시 : 행사 보증금 총액의 100% 환불<br>
		            * 행사일로부터 48시간-14일 전 취소시 : 행사 보증금 총액의 50% 환불<br>
		            * 행사일로부터 48시간 전 취소시 : 행사 보증금 총액의 0% 환불<br>
		            - 본 계약에서 명시된 분량보다 더 많은 음식 또는 음료 및 기타 품목 등을 예정된 행사에<br>
		            추가 및 접대하도록 요청하시는 경우에 고객께서는 추가 품목 등을 제공받기 전에<br>
		            담당자와 상담하셔야 합니다.추가된 품목에 대해서는 그에 따라 고객에게 추가로 청구하게 됩니다.
		        </p>
		    </div>
		</div>
		
			<hr class="custom-hr">
			
		<!-- 리뷰 섹션 -->
		<div class="cancellation-policy">
			<div class="max-occupancy-text">리뷰</div>
				<div class="data-area">
				<p>
					★★★★★|2023-09-27 abc8859<br>
					개발자 취업 좀 시켜주세요 부탁드립니다<br>
					<br>
					★★★★★|2023-09-26 abc1027<br>
					하지만 월급은 많이 받고 싶은 나...어쩔 수 없는걸까<br>
		        </p>
				</div>
		</div>
			
			</div>
	
		<!-- 오른쪽 섹션 -->
		<div class="right-section">
		
		    <div class="hotel-info-box">
		        <h3>시그니엘 호텔</h3>
		        <br>
		        <p>로얄 스위트 룸</p>
		        <p>주소</p>
		        <p>호텔 연락처</p>
		        <p>선택한 날짜</p>
		    </div>
			<div class="total-amount">
			    <p class="total-amount-label">총 예약 금액</p>
			    <p class="total-amount-value">12,000,000KRW</p>
			</div>
            <div class="buttons">
                 <button class="heart-button">♡</button>
                 <button class="reserve-button">예약서 작성</button>
            </div>
		    
		</div>
			</div>
			<script>
			//1.화면 슬라이더랑 버튼
			const images = document.querySelectorAll('.gallery img');
			let currentIndex = 0;
			
			function showNextImage() {
			    images[currentIndex].style.display = 'none';
			    currentIndex = (currentIndex + 1) % images.length;
			    images[currentIndex].style.display = 'block';
			}
			
			function showPreviousImage() {
			    images[currentIndex].style.display = 'none';
			    currentIndex = (currentIndex - 1 + images.length) % images.length;
			    images[currentIndex].style.display = 'block';
			}
			
			// 처음에 첫 번째 이미지만 보이도록 설정
			for (let i = 1; i < images.length; i++) {
			    images[i].style.display = 'none';
			}
			// 1.끝


			// 2.클릭하면 적용되는 기능
			const checkboxes = document.querySelectorAll('input[value="ㄷ자형"],input[value="강의식"],input[value="극장식"],input[value="연회식"]');
			
			checkboxes.forEach(checkbox => {
			    checkbox.addEventListener('change', function () {
			        const label = this.nextElementSibling;
			
			        if (this.checked) {
			            // 선택한 경우 배경 색상 변경
			            label.classList.add('selected');
			            checkbox.parentElement.classList.add('selected'); // 부모 요소에도 selected 클래스 추가
			        } else {
			            // 선택을 취소한 경우 원래 색상으로 복원
			            label.classList.remove('selected');
			            checkbox.parentElement.classList.remove('selected'); // 부모 요소에서 selected 클래스 제거
			        }
			    });
			});
			
			// 하트 바꾸기
            const heartButton = document.querySelector(".heart-button");

            heartButton.addEventListener("click", function () {
                if (heartButton.textContent === "♥") {
                    heartButton.textContent = "♡";
                } else {
                    heartButton.textContent = "♥";
                }
            });
			// 2.끝
			</script>

</body>
</html>
