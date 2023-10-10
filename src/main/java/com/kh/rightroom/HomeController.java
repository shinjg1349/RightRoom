package com.kh.rightroom;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "index";
	}
	
	@GetMapping("/loginPage")
	  public String login() {
	    return "login/loginPage";
	  }
	
	 @GetMapping("/signUp")
	  public String signUp() {
	    return "login/signUp";
	   }

	 
//	업체 회원가입
	 @GetMapping("/companyJoinPage")
	 public String companyJoinPage() {
		 return "company/companyJoinPage";
	 }
	 
//	 개인정보 조회/수정/탈퇴 페이지
	 @GetMapping("/userMyInfo")
	 public String userMyInfo() {
		 return "user/userMyInfo";
	 }
	 
//	 이용내역 조회 페이지
	 @GetMapping("/userHistoryList")
	 public String userHistoryList() {
		 return "user/userHistoryList";
	 }
	 
	 
	 
	 //업체 마이페이지(여기서부터는 나한테 해당하는 부분 직접적으로 구현했음)

	 @GetMapping("/companyMyPage")//http://localhost:8090/khkh/companyMyPage 입력하면 이동가능
	 public String companyMyPage() {
		 return "company/companyMyPage";
	 }
	 
	 //업체정보

	 @GetMapping("/companyMyInfo")
	 public String companyMyInfo() {
		 return "company/companyMyInfo";
	 }
	 
	 //장소등록하기

	 @GetMapping("/companyRoomRegisterForm")
	 public String companyRoomRegisterForm() {
		 return "company/companyRoomRegisterForm";
	 }
	 
	 //내 장소 목록

	 @GetMapping("/companyMyPlace")
	 public String companyMyPlace() {
		 return "company/companyMyPlace";
	 }
	 
	 //예약관리

	 @GetMapping("/companyReservationList")
	 public String companyReservationList() {
		 return "company/companyReservationList";
	 }
	
}
