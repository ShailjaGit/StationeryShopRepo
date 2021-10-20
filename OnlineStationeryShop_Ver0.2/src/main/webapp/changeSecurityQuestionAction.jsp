<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
String email = session.getAttribute("email").toString();
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
int check =0;
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update users set securityQuestion=?, answer=? where password=? and email=?");
	ps.setString(1, securityQuestion);
	ps.setString(2,answer);
	ps.setString(3,password);
	ps.setString(4,email);
	ps.executeUpdate();

	check = 1;
	response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	if(check==0){
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
	}
}catch(Exception e){
	System.out.println(e);
}
%>