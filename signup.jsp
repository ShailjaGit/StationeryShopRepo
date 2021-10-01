<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>SignUp</title>

</head>
<body>
<div id='container'>
  <div class='signup'>
  	  <form action="signupAction.jsp" method="post">
  	  	<input type="text" name="name" placeholder="Enter Name" required>
  	  	<input type="email" name="email" placeholder="Enter Email" required>
  	  	<input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  	  	
  	  	<select name="securityQuestion" required>
  	  		<option>--------- Select ---------</option>
  	  		<option value="What's your favorite movie?">What's your favorite movie?</option>
  	  		<option value="What was your first car?">What was your first car?</option>
  	  		<option value="What was your favorite teacher's name?">What was your favorite teacher's name?</option>
  	  		<option value="What is the name of your first pet?">What is the name of your first pet?</option>
  	  	</select>
  	  	<input type="text" name="answer" placeholder="Enter answer" required>
  	 	<input type="password" name="password" placeholder="Enter Password" required>
  	  	<input type="submit" value="singup">
  	  </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
	String msg=request.getParameter("msg");
	if("valid".equals(msg)){%>   
	<h1 style='color:blue'>Successfully Registered !</h1>
	<%}%>
<%
	if("invalid".equals(msg)){%>
		<h1>Some thing Went Wrong! Try Again !</h1>		
	<% }
%>

    <h2>Online Shopping</h2>
    <p>An Online Shopping System that permits a customer to submit
    	online orders for items and/or services from a store
    	that serves both walk-in customer and online customers.</p>
  </div>
</div>
</body>
</html>