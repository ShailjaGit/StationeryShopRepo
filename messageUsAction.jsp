<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
String email = session.getAttribute("email").toString();
String subject = request.getParameter("subject");
String msg = request.getParameter("msg");
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into message(email,subject,msg) values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2,subject);
	ps.setString(3,msg);
	ps.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=valid");
	
}catch(Exception e){
	response.sendRedirect("messageUs.jsp?msg=invalid");
	System.out.println(e);
}
%>