package com.kh.rightroom.user;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rightroom.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public void userJoin(UserVO userVO) throws Exception {
		System.out.println("@@@@@@userVO : "+ userVO);
	   userDAO.userJoin(userVO);
	}

	@Override
	public int idCheck(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Map login(String userid, String userPwd) throws Exception {
		// TODO Auto-generated method stub
		Map user = userDAO.userLogin(userid, userPwd);
		return user;
	}

}
