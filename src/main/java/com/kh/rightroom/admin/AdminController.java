package com.kh.rightroom.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@PostMapping("/user/member/loginConfirm")
	public String login(@RequestParam String userid, @RequestParam String pwd, HttpServletRequest request) {
		System.out.println("@@@@controller userid check : "+userid);
		System.out.println("@@@@controller userpwd check : "+pwd);
		HttpSession session = request.getSession();
	    Map<String, Object> map = adminService.memberLogin(userid,pwd);	
		return null;
	}
}
