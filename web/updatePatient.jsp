<%@include file="header.html"%>
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
   String sql = "SELECT  * FROM `patients` WHERE id=?";
   PreparedStatement ps = con.prepareStatement(sql);
   ps.setString(1, id);
   ResultSet rs = ps.executeQuery();
   while(rs.next())
   {
   //String id=rs.getString("id");
%>  
<div class="container">
             <h1 style="color:red;">Donor ID:<%out.println(id);%></h1>
</div>
<div class="container">
    <form action="updatePatientAction.jsp" method="post">
        <input type="hidden" name="id" value="<%out.println(id);%>">
        <h2>Patient ID</h2>
        <input type="text" name="pid" placeholder="ID" value="<%=rs.getString(2)%>">
        <hr>
        <h2>Patient Fname</h2>
        <input type="text" name="fname" placeholder="first name" value="<%=rs.getString(3)%>">
        <hr>
        <h2>Patient Gender</h2>
        <select name="gender" value="<%=rs.getString(4)%>">
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="others">Others</option>
        </select>
              <h2>Patient Department</h2>
        <select name="department" value="<%=rs.getString(5)%>">
            <option value="sugery">sugery</option>
            <option value="pediatrics">pediatrics</option>
            <option value="neaneulogy">neaneulogy</option>
        </select>
        <hr>
        <h2>Blood group</h2>
        <select name="bloodgroup" value="<%=rs.getString(6)%>" >
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
        </select>
        <hr>
        <h2> patient Age</h2>
        <input type="text" name="age" placeholder="age " value="<%=rs.getString(7)%>" >
        <hr>
        <h2>Email</h2>
        <input type="email" name="email" placeholder="email" value="<%=rs.getString(8)%>">
        <hr>
        <h2> patient Mobile Number</h2>
        <input type="text" name="mobilenumber" placeholder="mobile number" value="<%=rs.getString(9)%>">
        <hr>
        <h2>Address</h2>
        <input type="text" name="address" placeholder="address" value="<%=rs.getString(10)%>">
        <hr>
        <h2> password</h2>
        <input type="text" name="password" placeholder="password " value="<%=rs.getString(11)%>">
        
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
