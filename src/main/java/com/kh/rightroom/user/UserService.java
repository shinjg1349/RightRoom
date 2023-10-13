package com.kh.rightroom.user;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.kh.rightroom.vo.UserVO;

public interface UserService {

	//회원가입
	public void userJoin(UserVO userVO) throws Exception;
	
	//아이디 중복검사
	public int idCheck(String user_id) throws Exception;
	
	public Map login(String userid, String pwd) throws Exception;
	
	//회원수정
	public int userModify(UserVO userVO, HttpSession session) throws Exception;
	
	//탈퇴
	public int userDel(UserVO userVO, HttpSession session) throws Exception;
	
}
