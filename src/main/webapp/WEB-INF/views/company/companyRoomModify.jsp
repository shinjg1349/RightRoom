<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css링크 -->
    <!-- 내부css -->
    <link rel="stylesheet" href="resources/css/company/companyRoomModify.css" type="text/css">
    <!-- 외부 css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!-- JS.jsp 부분/근데 제대로 동작이 안되서 임시로 만들어 놓음 -->
	<script src="/WEB-INF/views/company/include/company_room_register_form_js.jsp"></script>
	
</head>
	
	<body>
	
	<!-- 하단에 푸터를 고정시키기 위해 wrapper클래스 속성 만들어주기 -->
	<div class="wrapper">

	<div class="container">
	
    <h1>내 장소 등록</h1>
    
    <form id="placeForm" action="submit_place" method="post" enctype="multipart/form-data">
		
		<!--숫자 1 아이콘 불러오기 -->
		<div class="icon-text-container">
		    <span class="material-symbols-sharp">counter_1</span>
		    <span class="room-image-text">룸 이미지<span class="required-field">필수입력*</span></span>
		</div>
        <hr>
        
		<!-- 이미지 첨부 만들기 -->
		<div class="upload-container">
		    <div class="upload-box">
		        <div id="drop-file1" class="drag-file">
		            <img src="https://img.icons8.com/pulsar-line/3x/image-file.png" alt="파일 아이콘" class="image">
		            <p class="message"></p>
		        </div>
		        <input id="fileUpload1" class="file" type="file" style="display: none;">
		    </div>
		    <div class="upload-box">
		        <div id="drop-file2" class="drag-file">
		            <img src="https://img.icons8.com/pulsar-line/3x/image-file.png" alt="파일 아이콘" class="image">
		            <p class="message"></p>
		        </div>
		        <input id="fileUpload2" class="file" type="file" style="display: none;">
		    </div>
		    <div class="upload-box">
		        <div id="drop-file3" class="drag-file">
		            <img src="https://img.icons8.com/pulsar-line/3x/image-file.png" alt="파일 아이콘" class="image">
		            <p class="message"></p>
		        </div>
		        <input id="fileUpload3" class="file" type="file" style="display: none;">
		    </div>
		</div>
		
		<script>
		    // 이미지 클릭 시 파일 업로드 창 열기
		    document.querySelectorAll('.drag-file').forEach(function (element, index) {
		        element.addEventListener('click', function () {
		            document.getElementById('fileUpload' + (index + 1)).click();
		        });
		    });
		</script>


		
		
		<!-- 장소 정보 -->
		<!--숫자 2 아이콘 불러오기 -->
		<div class="icon-text-container">
		    <span class="material-symbols-sharp">counter_2</span>
		    <span class="room-image-text">장소정보 <span class="required-field">필수입력*</span></span>
		</div>
		<hr>

        
		<!-- 등록될 정보들 입력-->
		<div class="mb-3 d-flex align-items-center"  >
		    <label for="hotelName" class="form-label me-3">호텔 이름</label>
		    <input type="text" id="hotelName" name="hotelName" class="form-control" style="margin-left: 80px;" />
		</div>
		
        <div class="mb-3 d-flex align-items-center">
            <label for="roomName" class="form-label me-3">룸 이름</label>
            <input type="text" id="roomName" name="roomName" class="form-control" style="margin-left: 100px;" />
        </div>
        
	     <!-- 우편번호 검색은 API가 필요하다 -->   
	    <div class="mb-3 d-flex align-items-center">
	        <label for="address" class="form-label me-3">주소</label>
	        <input type="text" id="address" name="address" class="form-control" style="margin-left: 120px;" />
	        <button type="button" id="searchAddress" class="my-custom-button" style="margin-left: 30px;">우편번호 검색</button>
	    </div>
	    
	        <script>
	        // 우편번호 검색 버튼 클릭 시 이벤트 처리
	        document.getElementById("searchAddress").addEventListener("click", function () {
	            // 우편번호 검색 팝업을 띄우는 함수 호출
	            openZipcodePopup();
	        });
	
	        // 우편번호 검색 팝업을 띄우는 함수
	        function openZipcodePopup() {
	            new daum.Postcode({
	                oncomplete: function (data) {
	                    // 선택한 주소 정보를 가져와 입력 필드에 채우기
	                    document.getElementById("address").value = data.roadAddress;
	                }
	            }).open();
	        }
	   		</script>

	    <!-- 다음 우편번호 검색 API 스크립트 -->
	    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
        
        
        
		<div class="mb-3 d-flex align-items-center">
		    <label for="address" class="form-label me-3"></label>
		    <input type="text" id="address-detail" name="address-detail" class="form-control" placeholder="상세주소를 입력해주세요" style="margin-left: 150px;"/>
		</div>
				
		<div class="mb-3 d-flex align-items-center">
		    <label for="phoneNumber" class="form-label me-3">호텔 연락처</label>
		    <select id="phoneNumberPrefix" name="phoneNumberPrefix" class="my-dropdown" style="margin-left: 65px;">
		        <option value="010">010</option>
		        <option value="011">011</option>
		        <option value="016">016</option>
		        <!-- 다른 휴대전화 접두사를 필요에 따라 추가할 수 있습니다. -->
		    </select>
		    <div class="input-container">
		        <input type="tel" id="phoneNumberMiddle" name="phoneNumberMiddle" class="form-control" placeholder=" 1234 " />
		        <span>-</span>
		        <input type="tel" id="phoneNumberEnd" name="phoneNumberEnd" class="form-control" placeholder=" 5678 " />
		    </div>
		    <div class="input-message">
		        *연락 가능한 휴대전화 번호를 적어주십시오.
		    </div>
		</div>

		<div class="mb-3 d-flex align-items-center">
		    <label for="price" class="form-label me-3">가격</label>
		    <div class="input-container">
		        <input type="text" id="price" name="price" class="form-control" style="margin-left: 125px;"/>
		        <span>원</span>
		    </div>
		</div>
		<div class="mb-3 d-flex align-items-center">
            <label for="maxCapacity" class="form-label me-3">최대 인원</label>
            <div class="input-container">
           		<input type="text" id="maxCapacity" name="maxCapacity" class="form-control"  style="margin-left: 85px; margin-right: 15px;" />
           		<span>명</span>
            </div>
        </div>
        <hr>
        
        <!-- 제공 되는 서비스 목록 체크박스 -->
		<div class="mb-3 d-flex align-items-center checkbox-group">
		    <label for="serviceList" class="form-label me-3">제공되는 서비스</label>
		<table>
		    <tr>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="buffetService" name="services" value="뷔페" class="form-check-input" />
		                <label for="buffetService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 뷔페
		                </label>
		            </div>
		        </td>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="projectorService" name="services" value="빔프로젝터" class="form-check-input" />
		                <label for="projectorService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 빔프로젝터
		                </label>
		            </div>
		        </td>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="micService" name="services" value="마이크" class="form-check-input" />
		                <label for="micService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 마이크
		                </label>
		            </div>
		        </td>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="wifiService" name="services" value="와이파이" class="form-check-input" />
		                <label for="wifiService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 와이파이
		                </label>
		            </div>
		        </td>
		    </tr>
		    <tr>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="photoService" name="services" value="촬영가능" class="form-check-input" />
		                <label for="photoService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 촬영가능
		                </label>
		            </div>
		        </td>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="snackService" name="services" value="다과" class="form-check-input" />
		                <label for="snackService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 다과
		                </label>
		            </div>
		        </td>
		        <td>
		            <div class="form-check form-check-inline">
		                <input type="checkbox" id="whiteBoardService" name="services" value="화이트보드" class="form-check-input" />
		                <label for="whiteBoardService" class="form-check-label">
		                    <span class="material-icons">check_box</span> 화이트보드
		                </label>
		            </div>
		        </td>
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
		<hr>
		<!-- 식사 및 음료 -->
		
		<div class="mb-3 d-flex align-items-center">
		    <label class="form-label">식사 및 음료</label>
		    <button type="button" id="addMeal" style="margin-left: 70px;">+ 항목을 추가하세요</button>
		</div>
		<p style="font-family: 'sans-serif'; color: #888; font-size: 14px; margin-top: 20px; margin-left: 165px;">*제공 가능한 식사 및 음료를 작성하세요</p>
		<table id="mealTable">
		    <tbody>
		        <!-- 여기에 추가된 항목들이 동적으로 들어갈 공간입니다. -->
		    </tbody>
		</table>
		
		<script>
		    // + 추가 버튼 클릭 시 동작
		    document.getElementById("addMeal").addEventListener("click", function () {
		        // 새로운 행을 생성하고 내용을 추가합니다.
		        var tableBody = document.getElementById("mealTable").getElementsByTagName('tbody')[0];
		        var newRow = tableBody.insertRow(tableBody.rows.length);
		        newRow.innerHTML = `
		            <td><input type="text" class="form-control" placeholder="이름" /></td>
		            <td><input type="text" class="form-control" placeholder="₩ 1인당 가격" /></td>
		            <td><button type="button" class="removeMeal">-</button></td>
		        `;
		
		        // - 삭제 버튼 클릭 시 동작
		        newRow.querySelector(".removeMeal").addEventListener("click", function () {
		            newRow.remove(); // 해당 행을 삭제합니다.
		        });
		    });
		</script>

		<!-- 테이블 배치 체크박스 -->
		<hr>
    <div class="mb-3 d-flex align-items-center checkbox-group">
        <label for="tableArrangement" class="form-label me-3">테이블 배치</label>

        <div class="form-check form-check-inline custom-checkbox" style="margin-left: 60px;">
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
    
    <script>
        // JavaScript 코드를 작성하여 클릭 이벤트 처리
        const checkboxes = document.querySelectorAll('input[value="ㄷ자형"],input[value="강의식"],input[value="극장식"],input[value="연회식"]');

        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', function () {
                const label = this.nextElementSibling;

                if (this.checked) {
                    // 선택한 경우 배경 색상 변경
                    label.classList.add('selected');
                } else {
                    // 선택을 취소한 경우 원래 색상으로 복원
                    label.classList.remove('selected');
                }
            });
        });
    </script>
    
		<p style="font-family: 'sans-serif'; color: #888; font-size: 14px; margin-top: 20px; margin-left: 165px;">*제공 가능한 테이블 배치를 선택하세요</p>
		<hr><br>
	
		<!-- FAQ -->
		<div class="mb-3 d-flex align-items-center">
		    <label for="faq" class="form-label me-3">FAQ</label>
		    <div class="custom-input-box" style="margin-left: 92px;">
		        <textarea id="faq" name="faq" rows="4" cols="40" class="form-control custom-textarea"></textarea>
		    </div>
		</div>
		
		<div class="mb-3 d-flex align-items-center">
		    <label for="cancle" class="form-label me-3">취소 및 환불규정</label>
		    <div class="custom-input-box" >
		        <textarea id="cancle" name="cancle" rows="4" cols="40" class="form-control custom-textarea"></textarea>
		    </div>
		</div>

        
        <!-- 취소 및 등록 -->
		<div class="mb-3 text-center">
		    <button type="button" class="custom-button custom-button-cancel">취소</button>
		    <button type="button" class="custom-button custom-button-submit">등록</button>
		</div>
		        
	    </form>
		</div>

		</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>
