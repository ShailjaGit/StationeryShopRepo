<% 
 session.invalidate();
 response.sendRedirect("login.jsp");
 System.out.println("Succesfully logout...");
%>