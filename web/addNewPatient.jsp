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
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
<center><font color="red" size="5">Successfully Registered</font></center>
<% 
  }
  %>
<%
  if("invalid".equals(msg))
  {
  %>
<center><font color="red" size="5">SomeThing Went Wrong ! Try Again</font></center>
<% 
  }
  %>
<%
    int id=1;
    try{
         Connection con =ConnectionProvider.getCon();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select max(id)from patients");
         if(rs.first())
         {
             id=rs.getInt(1);
              id=id+1;
         }%>
         <div class="container">
             <h1 style="color:red;">Patient ID:<%out.println(id);%></h1>
         </div>
 <%   }
    catch(Exception e)
        {
            out.println(""+e);
        }
%>
<div class="container">
    <form action="addNewPatientAction.jsp" method="post">
        <input type="hidden" name="id" value="<%out.println(id);%>">
        <h2>Patient ID</h2>
        <input type="text" name="pid" placeholder="ID">
        <hr>
        <h2>Patient Fname</h2>
        <input type="text" name="fname" placeholder="first names">
        <hr>
        <h2>Patient's Gender</h2>
        <select name="gender" >
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="others">Others</option>
        </select>
         <h2>Patient's Department</h2>
        <select name="department" >
            <option value="sugery">sugery</option>
            <option value="pediatrics">pediatrics</option>
            <option value="neaneulogy">neaneulogy</option>
        </select>
        <hr>
        <h2>Blood's group</h2>
        <select name="bloodgroup" >
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="dont know">don't know</option>
        </select>
        <hr>
        <h2> patient's Age</h2>
        <input type="text" name="age" placeholder="age ">
        <hr>
        <h2>Email</h2>
        <input type="email" name="email" placeholder="email">
        <hr>
        <h2> patient's Mobile Number</h2>
        <input type="text" name="mobilenumber" placeholder="mobile numbers">
        <hr>
        <h2>Address</h2>
        <input type="text" name="address" placeholder="addres">
        <hr>
        <h2> password</h2>
        <input type="text" name="password" placeholder="passwords ">
        
         <center><button type="submit" class="button">Save</button></center>
    </form>
</div>
<br>
<br>
<br>
<br>
<h3><center>All Rights Are Reserved @ YVES :: 2022  </center></h3>

</body>
</html>