<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String mobileNumber = request.getParameter("number");
String password = request.getParameter("password");
int check = 0;
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update users set mobileNumber=? where password=? and email=?");
	ps.setString(1,mobileNumber);
	ps.setString(2,password);
	ps.setString(3,email);
	ps.executeUpdate();
    check = 1;
	response.sendRedirect("changeMobileNumber.jsp?msg=done");
	if(check==0)
	response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	
}catch(Exception e){
	System.out.println(e);
}
%>