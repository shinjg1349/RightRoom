package com.kh.rightroom.user;

import java.util.Map;

import javax.servlet.http.HttpSession;

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
		return userDAO.idCheck(user_id);
	}

	@Override
	public Map login(String userid, String userPwd) throws Exception {
		// TODO Auto-generated method stub
		Map user = userDAO.userLogin(userid, userPwd);
		return user;
	}

	@Override
	public int userModify(UserVO userVO, HttpSession session) throws Exception {
		System.out.println("@@@@@@userVO : "+ userVO);
		int retVal = userDAO.userModify(userVO);
		if (retVal > 0) {
			Map user = userDAO.getUser(userVO.getUser_id());
			
    		session.setAttribute("userVO", user);			
		}
		return retVal;
	}
	
	@Override
	public int userDel(UserVO userVO, HttpSession session) throws Exception {
		System.out.println("@@@@@@userVO : "+ userVO);
		int retVal = userDAO.userDel(userVO);
		if (retVal > 0) {
    		session.setAttribute("userVO", null);
    		session.removeAttribute("userVO");
		}
		return retVal;
	}
	
}
