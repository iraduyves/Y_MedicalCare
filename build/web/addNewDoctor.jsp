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
	margin-left:30%;
}
h2,h1
{	
	margin-left:30%;
}
hr
{
width:60%;
margin-left:20%;
}
</style>
</head>
<body>
    <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
<center><font color="red" size="5">Successfully Updated</font></center>
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
         ResultSet rs=st.executeQuery("select max(docid)from doctors");
         if(rs.first())
         {
             id=rs.getInt(1);
              id=id+1;
         }%>
         <div class="container">
             <h1 style="color:red;">Doctor ID:<%out.println(id);%></h1>
         </div>
 <%   }
    catch(Exception e)
        {
            out.println(""+e);         

        }
%>
<div class="container">
    <form action="addNewDoctorAction.jsp" method="post">
        <h2>DOCTOR ID</h2>
        <input type="text" name="id" value="<%out.println(id);%>">
        <hr>
        <h2>DOCTOR FNAME</h2>
        <input type="text" name="fname" placeholder="first name">
        <hr>
        <h2>DOCTOR LNAME</h2>
        <input type="text" name="lname" placeholder="last name">
        <hr>
        <h2>DEPARTMENT</h2>
        <select name="department" >
            <option value="canser">Canser</option>
            <option value="psyclogist">Psyclogist</option>
            <option value="dentist">Dentist</option>
        </select>
        <hr>
        <h2>DEGREE</h2>
        <select name="degree" >
            <option value="specialist">Specialist</option>
            <option value="proffessional">professional</option>
            <option value="A2">A2</option>
            <option value="internship">internship</option>
        </select>
        <h2>MOBILE NUMBER</h2>
        <input type="text" name="mobilenumber" placeholder="mobile number">
        <hr>
        <h2>EMAIL</h2>
        <input type="email" name="email" placeholder="email">
        <hr>
        <h2>ADDRESS</h2>
        <input type="text" name="address" placeholder="address">
        <hr>
        <h2>PASSWORD</h2>
        <input type="text" name="password" placeholder="password">
        <hr>
         <center><button type="submit" class="button">Save</button></center>
        
    </form>
</div>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>

</body>
</html>