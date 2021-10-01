package com.sp.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://sql6.freesqldatabase.com:3306/sql6441373","sql6441373","DGsUseL5yX");
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
