package com.kh.rightroom.user;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.rightroom.vo.UserVO;

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
    
    @RequestMapping(value = "/modal_JoinSuccess")
    public String JoinSuccess() {
    	return "/modal/modal_JoinSuccess";
    }

    @RequestMapping(value = "/loginProc", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> loginProc(HttpServletRequest request, String userid, String pwd) throws Exception{
    	HashMap<String, String> result = new HashMap<String, String>();
    	String resultCode = "";
    	String resultMessage = "";
    	
    	try {
        	logger.info("userIdChk() 진입");
        	Map userVO = userService.login(userid, pwd);
        	logger.info("결과값 = " + userVO);
        	
        	if(userVO != null && !StringUtils.isEmpty(userVO.get("user_id"))) {
        		HttpSession session = request.getSession();
        		session.setAttribute("userVO", userVO);

        		resultCode = "0000";
        		resultMessage = "로그인에 성공하였습니다.";    		
//            	return "redirect:/";
        	}else {
        		resultCode = "9999";
        		resultMessage = "로그인에 실패하였습니다.";    		
        		
////        		return "redirect:/loginPage";
//        		return "/login/loginPage";
        	}
    	}catch(Exception ex) {
    		resultCode = "9999";
    		resultMessage = ex.getMessage();    		
    	}
    	
		result.put("resultCode", resultCode);
		result.put("resultMessage", resultMessage);
		return result;
    }
    
    @RequestMapping(value = "/userIdChk")
    @ResponseBody
    public String userIdChk(String user_id) throws Exception{
    	logger.info("userIdChk() 진입");
    	int result = userService.idCheck(user_id);
    	logger.info("결과값 = " + result);
    	
    	if(result != 0) {
    		return "fail";
    	}else {
    		return "success";
    	}
    }
    
	 
//	 개인정보 조회/수정/탈퇴 페이지
	 @GetMapping("/userMyInfo")
	 public String userMyInfo(HttpSession session) {
    	try {
	    	//회원가입 서비스 실행
//	    	UserVO userVO = (UserVO)session.getAttribute("userVO");
//	    	userService.getUser(userVO);
    	}catch(Exception ex) {
    		ex.printStackTrace();
    	}
	    	
		 return "user/userMyInfo";
	 }
	 
//	 개인정보 조회/수정/탈퇴 페이지
	 @GetMapping("/userMyPage")
	 public String userMyPage() {
		 return "user/userMyPage";
	 }
	 
    //회원수정
    @RequestMapping(value = "/userModifyProc", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, String> userModifyProc(HttpSession session, UserVO userVO ) {
    	HashMap<String, String> result = new HashMap<String, String>();
    	
    	try {
	    	logger.info("join 진입");
	
	    	//회원가입 서비스 실행
	    	userService.userModify(userVO, session);
	    	logger.info("join service 성공");
	
	    	result.put("resultCode", "0000");
    	}catch(Exception ex) {
    		result.put("resultCode", "9999");
    		result.put("resultMessage", ex.getMessage());
    	}
    	
    	//return "redirect:/index";
    	return result;
    }
    
    
    @RequestMapping(value = "/userDelProc", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, String> userDelProc(HttpSession session, UserVO userVO ) {
        HashMap<String, String> result = new HashMap<String, String>();
        
        try {
            logger.info("회원탈퇴 진입");
            
            // 사용자의 로그인 상태 확인
            if (userVO == null) {
                result.put("resultCode", "9999");
                result.put("resultMessage", "로그인한 사용자만 탈퇴할 수 있습니다.");
            } else {
                // 탈퇴 서비스 실행 (사용자 계정을 비활성화 또는 삭제)
                userService.userDel(userVO, session);
                logger.info("회원탈퇴 서비스 성공");
                
                // 세션 로그아웃
                session.invalidate();
                
                result.put("resultCode", "0000");
            }
        } catch (Exception ex) {
            result.put("resultCode", "9999");
            result.put("resultMessage", ex.getMessage());
        }
        
        return result;
    }

        
    
    
    
//	 이용내역 조회 페이지
	 @GetMapping("/userHistoryList")
	 public String userHistoryList() {
		 return "user/userHistoryList";
	 }
    
}
