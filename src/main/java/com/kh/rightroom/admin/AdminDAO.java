package com.kh.rightroom.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class AdminDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	//	아이디 중복 체크
	public boolean isAdminMember(String user_id) {
		System.out.println("[AdminDAO] isAdminMember()");
		
		String sql = "SELECT COUNT(*) FROM USER " + "WHERE user_id = ";
		
		int result = jdbcTemplate.queryForObject(sql, Integer.class, user_id);
		
		return result > 0 ? true : false;
	}
	
	public int insertAdminAccount(UserVO userVO) {
		System.out.println("[AdminDAO] insertAdminaccount()");
		
		String sql = "INSERT INTO USER(user_id, "
		+ "user_pw, “ + “user_name, “ + “user_phone, "
		+ "user_email, “ + “user_address, “ + “user_rank) VALUES(?, ?, ?, ?, ?, ?, ?)";
		
		int result = -1;
		
		try {
			result = jdbcTemplate.update(sql,
					userVO.getUser_id(), userVO.getUser_pw(),
					userVO.getUser_name(), userVO.getUser_phone(),
					userVO.getUser_email(), userVO.getUser_address(),
					userVO.getUser_rank());
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
