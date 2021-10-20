<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
//taking details from end-users
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String newPassword = request.getParameter("newPassword");

//create local variable
int check = 0;
try{
	//establish connection
	Connection con = ConnectionProvider.getCon();
	//craete statement
	Statement st = con.createStatement();
	//prepare resultSet and execute query
	ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email='"+email+"' and mobileNumber='"+mobileNumber+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
	//process the result
	while(rs.next()){
		check = 1;
		st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
		System.out.println("Password Successfully Reset");
	}
	if(check==0){
		System.out.println("Details are wrong");
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
 }//try
	catch(Exception e){
		System.out.println("Not reset try again...");
		e.printStackTrace();
}
%>