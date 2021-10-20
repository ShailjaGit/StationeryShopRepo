
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup_style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="POST">
     	<input type="email" name="email" placeholder="  Enter Email" required>
     	<input type="password" name="password" placeholder="  Enter Password" required>
     	<input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
<%
	String msg=request.getParameter("msg");
	if("notexists".equals(msg)){%>
  <h1>Incorrect Username or Password</h1>
<%} %>
<% 	if("invalid".equals(msg)){%>
		<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2><b>Online Shopping</b></h2>
    <p><b>An Online Shopping System that permits a customer to submit
    	online orders for items and/or services from a store
    	that serves both walk-in customer and online customers.</b></p>
  </div>
</div>

</body>
</html>