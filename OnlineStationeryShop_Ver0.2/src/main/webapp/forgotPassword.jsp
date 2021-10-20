<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup_style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="POST">
      <input type="email" name="email" placeholder="  Enter Email" required>
      <input type="number" name="mobileNumber" placeholder="  Enter Number" required>
      <select name="securityQuestion">
      	<option value="What's your favorite movie?">What's your favorite movie?</option>
      	<option value="What was your first car?">What was your first car?</option>
      	<option value="What was your favorite teacher's name?">What was your favorite teacher's name?</option>
      	<option value="What is the name of your first pet?">What is the name of your first pet?</option>
      </select>
      <input type="text" name="answer" placeholder="  Enter Answer" required>
      <input type="password" name="newPassword" placeholder="  Enter your new password" required>
      <input type="submit" value="save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
    <%
  	String msg = request.getParameter("msg");
  	if("done".equals(msg)){%> 
		<h1 style='color:blue'>Password Changed Successfully!</h1>
	<%}%>
  
  <%
  	if("invalid".equals(msg)){%> 
		<h1>Some thing Went Wrong! Try Again !</h1>
	<%}%>


    <h2><b>Online Shopping</b></h2>
    <p><b>An Online Shopping System that permits a customer to submit
    	online orders for items and/or services from a store
    	that serves both walk-in customer and online customers.</b></p>
  </div>
</div>
</body>
</html>