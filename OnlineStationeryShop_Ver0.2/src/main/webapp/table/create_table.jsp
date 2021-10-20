<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% try{
	Connection con =ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String qry = "CREATE OR REPLACE table users(name varchar(100),email varchar(100)primary key, mobileNumber bigint,securityQuestion varchar(200), answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String qry1 = "CREATE OR REPLACE table product(id int, name varchar(500),category varchar(200), price int,status varchar(10))";
	String qry2 = "CREATE table cart(email varchar(100),product_id int ,quantity int, price int,total int, address varchar(500), city varchar(100),state varchar(100), country varchar(100), mobileNumber  bigint, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100),transactionId  varchar(100),status varchar(10))";
	String qry3 = "CREATE table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200), msg varchar(1000),PRIMARY KEY(id))";
	
	System.out.println(qry);
	System.out.println(qry1);
	System.out.println(qry2);
	System.out.println(qry3);
	
	//st.execute(qry);
	//st.execute(qry1);
	st.execute(qry2);
	st.execute(qry3);
	
	System.out.println("Table created");
	con.close();
}catch(Exception e){
	System.out.println(e);
	e.printStackTrace();
}
%>