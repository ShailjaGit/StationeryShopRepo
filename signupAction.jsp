<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
//get deatils from end-user
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address ="";
String city ="";
String state="";
String country="";

try{
	//establish connection
	Connection con = ConnectionProvider.getCon();
	//prepare statement
	PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?)");
	
	//set values
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobileNumber);
	ps.setString(4, securityQuestion);
	ps.setString(5, answer);
	ps.setString(6, password);
	ps.setString(7, address);
	ps.setString(8, city);
	ps.setString(9, state);
	ps.setString(10, country);
	
	//execute 
	ps.executeUpdate();
	System.out.println("Data Inserted");
	
	response.sendRedirect("signup.jsp?msg=valid");

}catch(Exception e){
	System.out.println("Data Not Inserted");
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>