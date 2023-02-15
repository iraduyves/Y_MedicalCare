<%@include file="adminheader.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
  
String id=request.getParameter("id");
int id2=Integer.parseInt(id);
try
{
  Connection con =ConnectionProvider.getCon();
   String sql = "SELECT  * FROM `doctors` WHERE docid=?";
   PreparedStatement ps = con.prepareStatement(sql);
   ps.setString(1, id);
   ResultSet rs = ps.executeQuery();
   while(rs.next())
   {
   //String id=rs.getString("id");
%>  
<div class="container">
             <h1 style="color:red;">DOCTOR ID:<%out.println(id);%></h1>
</div>
<div class="container">
    <form action="updateDoctorAction.jsp" method="post">
        <h2>DOCTOR ID</h2>
         <input type="text" name="id" value="<%=rs.getInt(1)%>">
        <h2>DOCTOR FNAME</h2>
        <input type="text" name="fname" placeholder="name"value="<%=rs.getString(2)%>">
        <hr>
        <h2>DOCTOR LNAME</h2>
        <input type="text" name="lname" placeholder="father name"value="<%=rs.getString(3)%>">
        <hr>
        <h2>DOCTOR'S DEPARTMENT</h2>
        <input type="text" name="department" placeholder="mother name"value="<%=rs.getString(4)%>">
        <hr>
        <h2>DOCTOR'S DEGREE</h2>
        <input type="text" name="degree" placeholder="mobile number"value="<%=rs.getString(5)%>">
         <hr>
        <h2>DOCTOR MOBILE NUMBER</h2>
        <input type="text" name="mobilenumber" placeholder="address"value="<%=rs.getString(6)%>">
        <hr>
        <h2>DOCTOR'S EMAIL</h2>
        <input type="text" name="email" placeholder="email"value="<%=rs.getString(7)%>">
         <hr><h2>DOCTOR'S ADDRESS</h2>
        <input type="text" name="address" placeholder="email"value="<%=rs.getString(8)%>">
         <hr>
         <h2>DOCTOR'S PASSWORD</h2>
        <input type="text" name="password" placeholder="email"value="<%=rs.getString(9)%>">
        <hr>
        <center><button type="submit" class="button">Save</button></center>
    </form>
</div>
<%
    }
    }
catch(Exception e)
        {
           out.println(""+e);
        }
%>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ YVES:: 2022  </center></h3>

</body>
</html>
