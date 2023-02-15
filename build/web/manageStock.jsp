<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
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

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
}

#customers td, #customers th {
  border: 1px solid #8cd9d0;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #8cd9d0;
  color: white;
}
</style>
</head>
<body>
    <div class="container">
        <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
       <center><font color="red" size="5">Sucessfully Updated!</font></center>
  <% 
  }
  %>
 <%

  if("invalid".equals(msg))
  {
  %>
    <center><font color="red" size="5">Sme Thing Went Wrong Try Again!!! </font></center>
 <% 
  }
  %>
 
 <form action="manageStockAction.jsp" method="post">
     <div class="form-group">
         <center><h2>Select Any Medecine</h2></center>
         <select name="medecine" >
            <option value="pracetamol">pracetamol</option>
            <option value="ibrofene">ibrofene</option>
            <option value="ybprofene">ybprofene</option>
            <option value="umuravumba">umuravumba</option>
            <option value="umubirizi">umubirizi</option>
            <option value="cyimbazi">cyimbazi</option>
        </select>
         
         <center><h2>Select INcrease/Decrease</h2></center>
         <select name="incdec" >
            <option value="inc">Increase</option>
            <option value="dec">Decrease</option>
        </select>
         <center><h2>UNITS</h2></center>
         <input type="text" placeholder="Enter units" name="units">
         <center><button type="submit" class="button">Save</button></center>
     </div>
 </form>
 
 <br>
 <center>
     <table id="customers">
         <tr>
             <th>MEDECINE ID</th>
             <th>MEDECINE NAMES</th>
             <th>UNITS</th>
         </tr>
          <tr>
<%
try
{
  Connection con =ConnectionProvider.getCon();
   Statement ps=con.createStatement();
   ResultSet rs= ps.executeQuery(" select * from `stock`  ");
   while(rs.next())
   {
 %>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
         </tr>
 <%
   }
   }
   catch(Exception e)
        {
           out.println(""+e);
            //response.sendRedirect("editDeleteList.jsp?msg=deleted");
        }

%>
 </center>
</table>
</center>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>
</body>
</html>