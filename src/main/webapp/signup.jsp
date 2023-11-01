<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="signupaction.jsp" method= "post">
  <input type="text" name="name" placeholder="enter your name" required>
  <input type="email" name="email" placeholder="enter your email" required>
  <input type="number" name="mobileNumber" placeholder="enter your mobilenumber" required>
  <select name="securityquestion" required>
    <option value="fav car?">fav car?</option>
      <option value="fav dish">fav dish?</option>
        <option value="fav color">fav color?</option>
  </select>
  <input type="text" name="answer" placeholder="enter the answer" required>
  <input type="text" name="password" placeholder="enter the password" required>
  <input type="submit" value="signup">
  
  
  </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
 <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
 %>
  

<h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>