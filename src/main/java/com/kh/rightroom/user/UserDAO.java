package com.kh.rightroom.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kh.rightroom.vo.UserVO;

@Repository
public class UserDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void userJoin(UserVO userVO) {
        String sql = "INSERT INTO user (user_id, user_pw, user_name, user_phone, user_email, user_address, user_rank) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        jdbcTemplate.update(sql, 
            userVO.getUser_id(), 
            userVO.getUser_pw(), 
            userVO.getUser_name(), 
            userVO.getUser_phone(), 
            userVO.getUser_email(), 
            userVO.getUser_address(), 
            userVO.getUser_rank()
        );
    }
    
    public int idCheck(String user_id) {
        String sql = "SELECT COUNT(*) FROM USER WHERE user_id = ?";
        return jdbcTemplate.queryForObject(sql, Integer.class, user_id);
    }
}
