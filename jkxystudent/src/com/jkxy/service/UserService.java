package com.jkxy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jkxy.connection.MyConn;
import com.jkxy.model.UserBean;

public class UserService {
	private Connection conn;
	private PreparedStatement pstmt;
	public UserService() {
		super();
		conn =  MyConn.getInstance().getConnection();
	}
	
	public boolean valiUser(UserBean user){
		try {
			pstmt = conn.prepareStatement("select * from usertable where username=? and userpassword=?");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
}
