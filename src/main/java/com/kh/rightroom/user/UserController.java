package com.kh.rightroom.user;


import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.rightroom.vo.*;

@Controller
@RequestMapping(value = "/")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userService;
	
	//메인 페이지 이동
	@RequestMapping(value = "/index")
	public void mainPageGET() {
		logger.info("메인 페이지");
	}
	
	//회원가입 페이지 이동
    @RequestMapping(value = "/userJoinPage", method = RequestMethod.GET)
    public String joinGET() {
    	logger.info("회원가입 페이지");
    	System.out.println("@@개인회원@@");
    	return "/user/userJoinPage";
    }
    
    //회원가입
    @RequestMapping(value = "/userJoinPageProc", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, String> userJoinPageProc(UserVO userVO ) {
    	HashMap<String, String> result = new HashMap<String, String>();
    	
    	try {
	    	logger.info("join 진입");
	
	    	//회원가입 서비스 실행
	    	userService.userJoin(userVO);
	    	logger.info("join service 성공");
	
	    	result.put("resultCode", "0000");
    	}catch(Exception ex) {
    		result.put("resultCode", "9999");
    		result.put("resultMessage", ex.getMessage());
    	}
    	
    	//return "redirect:/index";
    	return result;
    }

    @RequestMapping(value = "/loginPage")
    public void loginGET() {
    	logger.info("로그인 페이지 진입");
    }
    
    @RequestMapping(value = "/userIdChk", method = RequestMethod.POST)
    @ResponseBody
    public String userIdChkPOST(String user_id) throws Exception{
    	logger.info("userIdChk() 진입");
    	int result = userService.idCheck(user_id);
    	logger.info("결과값 = " + result);
    	
    	if(result != 0) {
    		return "fail";
    	}else {
    		return "success";
    	}
    }
    
    
}
