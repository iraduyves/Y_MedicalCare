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
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="DoctorLogin1.jsp">Doctor Login</a>
  </div>
</div>
<body>
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
        <form action="LoginDoctor" method="post">
            <div class="form-group">
                <center><h2>Username</h2></center>
                <input type="text" name="username"placeholder="username">
                 <center><h2>Passsword</h2></center>
                <input type="password" name="password"placeholder="password">
                <center><button type="submit" class="button">Submit</button></center>
            </div>
        </form>
	
<section class="footer">
    
         <div class="box-container">
                  <div   class="credit"><a href=" #  "class="logo"><i class="fas fa-heartbeat">Yves MEDICAL CARE</i></a> <i  class="fas fa-copyright fa-1x"></i><span id="copyrightt" > </span> all right are reserved</div>
        </div>
</section>
</body>
</html>
