<%@ page import="com.sp.jdbc.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
	//get details from end-user
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	//for admin
	if("admin@gmail.com".equals(email) && "admin".equals(password)){
		session.setAttribute("email",email);
		response.sendRedirect("admin/adminHome.jsp");
		System.out.println("admin login sucessfully");
	}
	
	//for user
	else{
		int z = 0;
		try{
			//establish connection
			Connection con = ConnectionProvider.getCon();
			//craete statement
			Statement st = con.createStatement();
			//prepase resultset and execute query
			ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email='"+email+"' and password='"+password+"'");
			//process thr result
			while(rs.next()){
				z=1;
				session.setAttribute("email",email);
				response.sendRedirect("home.jsp");
				System.out.println("User login sucessfully");
			}
			 if(z==0){
				response.sendRedirect("login.jsp?msg=notexists");
			    System.out.println("User not exists");
			 }
		}catch(Exception e){
			System.out.println("login issue");
			e.printStackTrace();
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}
%>