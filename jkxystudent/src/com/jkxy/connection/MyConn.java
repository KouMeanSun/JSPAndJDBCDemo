package com.jkxy.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConn {
	
	private static MyConn instance;
	private MyConn(){}
	public static MyConn getInstance(){
		if(null == instance){
			instance = new MyConn();
		}
		return instance;
	}
	
	public Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url     	 = "jdbc:mysql://localhost/jkxystudent?userUnicode=true&characterEncoding=UTF-8";
			String user		 = "root";
			String password  = "12345678";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("数据库连接URL："+conn.getMetaData().getURL());
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
