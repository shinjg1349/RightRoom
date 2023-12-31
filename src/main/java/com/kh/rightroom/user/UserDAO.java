package com.kh.rightroom.user;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kh.rightroom.vo.UserVO;

@Repository
public class UserDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int userJoin(UserVO userVO) {
        String sql = "INSERT INTO user (user_id, user_pw, user_name, user_phone, user_email, user_address, user_rank) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        return jdbcTemplate.update(sql, 
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
    
    public Map<String, Object> userLogin(String user_id, String user_pw) {
        String sql = "SELECT COUNT(*) FROM USER WHERE user_id = ? AND user_pw = ?";
        Integer result = jdbcTemplate.queryForObject(sql, Integer.class, user_id, user_pw);
        if (result > 0) {
            sql = "SELECT user_id, user_pw, user_name, user_phone, user_email, user_address, user_rank FROM USER WHERE user_id = ? AND user_pw = ?";
            Object[] args = { user_id, user_pw };
            int[] argTypes = { java.sql.Types.VARCHAR, java.sql.Types.VARCHAR };
            
            return jdbcTemplate.queryForMap(sql, args, argTypes);
        }else {
        	return null;
        }
    }
    
    public Map<String, Object> getUser(String user_id) {
        String sql = "SELECT user_id, user_pw, user_name, user_phone, user_email, user_address, user_rank FROM USER WHERE user_id = ? ";
        Object[] args = { user_id };
        int[] argTypes = { java.sql.Types.VARCHAR };
        
        return jdbcTemplate.queryForMap(sql, args, argTypes);
    }
    
    public int userModify(UserVO userVO) {
        String sql = "UPDATE user \n"
					+ "SET user_pw = ?, user_name = ?, user_phone = ?, user_email = ?, user_address = ?, user_rank = ? \n"
					+ "WHERE user_id = ? ";
        
        return jdbcTemplate.update(sql, 
						            userVO.getUser_pw(), 
						            userVO.getUser_name(), 
						            userVO.getUser_phone(), 
						            userVO.getUser_email(), 
						            userVO.getUser_address(), 
						            userVO.getUser_rank(),
						            userVO.getUser_id() 
						        );
    }    
    
    public int userDel(UserVO userVO) {
        String sql = "DELETE FROM user WHERE user_id = ?";
        return jdbcTemplate.update(sql, 
	            userVO.getUser_id() 
	        );
    }
    
    
}
