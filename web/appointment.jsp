<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.css">
    <link rel="stylesheet" href="./landingpage.css">
<style>
input[type="text"], input[type="password"],  input[type="date"],input[type="time"],input[type="email"], select,input[type="number"]
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
	margin-left:40%;
}
hr
{
   margin-left:20%;
width:60%;
color: green;
size: 20px;
}
</style>
</head>
<body>
<%
      response.setHeader("Cache-Control", "no-cache,no-store,must-revaliate");
      response.setHeader("pragma", "no-cache");
      response.setHeader("Expires", "0");
      if(session.getAttribute("username")==null)
      {
         response.sendRedirect("userLogin.jsp");
      }
      else
      {
      String id =request.getParameter("id");

      try{
            Connection con =ConnectionProvider.getCon();
            PreparedStatement ps= con.prepareStatement(" select * from `patients` where `patients`.`id`=? ");
            ps.setString(1, id);
            ResultSet rs= ps.executeQuery();
            while(rs.next())
            {
              String pid=rs.getString(2);
              String name=rs.getString(3);
              String bloodgroup=rs.getString(6);
              String email=rs.getString(8);
              String mobilenumber=rs.getString(2);
            }
         }
         catch(Exception e)
        {
            System.out.println(""+e);
        }
}
%>
<div class="header">
    
        <a href="#default" class="logo"><img class="logo" src="background.jpg.jfif"></a>
        <div class="header-right">
        <a class="active" href="index.jsp">Home</a>
        <a href="#service">Service</a>
        <a href="#about">About</a>
        <a href="#doctors">Doctors</a>
        <a href="appointment.jsp">BookAppointment</a> 
        <a href="contactpage.jsp">Contact </a>
        <a href="LogoutUser">Logout</a>
  </div>
</div>
   <br>
  <br>
  <br>
  <br>
  <br>
     <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
<center><font color="red" size="5">Successfully booked</font></center>
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
  if("rejected".equals(msg))
  {
  %>
<center><font color="red" size="5">Appointment Rejected , Appointment time was taken</font></center>
<% 
  }
  %>
<%
    int id=1;
    try{
         Connection con =ConnectionProvider.getCon();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select max(id)from appointments");
         if(rs.first())
         {
             id=rs.getInt(1);
              id=id+1;
         }%>
<!--         <div class="container">
             <h1 style="color:red;">Doctor ID:</h1>
         </div>-->
 <%   }
    catch(Exception e)
        {
            out.println(""+e);            

        }
%>
  <br>    
  <div class="container">
    <form action="appointmentAction.jsp" method="post">
        <input type="hidden" name="id" value="<%out.println(id);%>">
        <h2>Patients ID</h2>
        <input type="text" name="pid" placeholder="ID">
        <hr>
        <br>
        <h2>Patients Name</h2>
        <input type="text" name="fname" placeholder="first name">
        <hr>
        <br>
        <h2>Patient Departments</h2>
        <select name="department" >
            <option value="sugery">sugery</option>
            <option value="pediatrics">pediatric</option>
            <option value="neaneulogy">neaneulogy</option>
        </select>
        <hr>
         <h2>Appointment date </h2>
        <input type="date" name="date" >
        <hr>
        <h2>Appointment time </h2>
        <select name="time" >
            <option value="7AM-7h30AM">7AM-7h30AM</option>
            <option value="8AM-8h30AM">8AM-8h30AM</option>
            <option value="9AM-9h30AM">9AM-9h30AM</option>
            <option value="10AM-11h30AM">10AM-11h30AM</option>
            <option value="13PM-13h30PM">13PM-13h30PM</option>
            <option value="14PM-14h30PM">14PM-14h30PM</option>
            <option value="15PM-15h30PM">15PM-15h30PM</option>
            <option value="16AM-16h30PM">16AM-16h30PM</option>
        </select>
        <hr>
        <br>
        <h2>Patient Blood group</h2>
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
        </select>
        <hr>
        <br>
        <h2>Patient Email</h2>
        <input type="email" name="email" placeholder="email">
        <hr>
        <br>
        <h2> patient Mobile Number</h2>
        <input type="text" name="mobilenumber" placeholder="mobile number">
        <hr>
        
         <center><button type="submit" class="button">Save</button></center>
    </form>
</div>
  <br>
  <br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>

</body>
</html>

