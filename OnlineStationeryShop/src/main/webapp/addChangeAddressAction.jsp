<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
String email = session.getAttribute("email").toString();
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update users set address=?,city=?,state=?,country=? where email=?");
	ps.setString(1,email);
	ps.setString(2,address);
	ps.setString(3,city);
	ps.setString(4,state);
	ps.setString(5,country);
	ps.executeUpdate();
	System.out.println("Address Sucessfully updated");
	response.sendRedirect("addChangeAddress.jsp?msg=valid");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");
}
%>