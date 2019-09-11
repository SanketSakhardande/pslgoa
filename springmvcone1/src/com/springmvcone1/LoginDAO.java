package com.springmvcone1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository("loginDAO")
public class LoginDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public boolean check(String login,String password) {
		String q = "select * from users";
	
		List<Users> userList =  jdbcTemplate.query(q,
				new BeanPropertyRowMapper<Users>(Users.class));
		
		
		
		
		
		 for (Users p :userList) { 
			 System.out.println(p.getName()+p.getPassword());
			if( login.equals(p.getName()) && password.equals(p.getPassword()) )
			{
				return true;
			}	 
		 }
	return false;
	}

	
}
