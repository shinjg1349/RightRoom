package com.kh.rightroom.user;

import com.kh.rightroom.vo.*;

public interface UserService {

	//회원가입
	void userJoin(UserVO userVO) throws Exception;
	//아이디 중복검사
	int idCheck(String user_id) throws Exception;
}
