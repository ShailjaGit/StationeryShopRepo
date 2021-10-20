package com.sp.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/9HyrRx8C6m","9HyrRx8C6m","AKjPH0N7U1");
			if(con!=null) {
				System.out.println("connection establish");
			}
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
