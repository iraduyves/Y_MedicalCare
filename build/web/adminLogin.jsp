<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header"sytle="background: linear-gradient(45deg,#8cd9d0,#e9b6c6);">
  <a href="#default" class="logo"><img class="logo" src="background.jpg.jfif"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div class="container">
<br>
	<br>
<%
  String msg=request.getParameter("msg");
  if("invalid".equals(msg))
  {
  %>
<center><font color="red" size="5">Invalid Suername/Password</font></center>
<% 
  }
  %>
        <form action="LoginAdmin" method="post">
            <div class="form-group">
                <center><h2>Username</h2></center>
                <input type="text" name="username"placeholder="username">
                 <center><h2>Passsword</h2></center>
                <input type="password" name="password"placeholder="password">
                <center><button type="submit" class="button">Submit</button></center>
            </div>
        </form>
	
	
	
</div>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>
</body>
</html>
