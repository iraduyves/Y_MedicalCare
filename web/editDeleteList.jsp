<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #8cd9d0 ;
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
<br>
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
  if("deleted".equals(msg))
  {
  %>
<center><font color="red" size="5">Deleted Successfully!! </font></center>
<% 
  }
  %>
<table id="customers">
    <tr>
        <th>ID</th>
        <th>PAT ID</th>
        <th>FNAMES</th>
        <th>GENDER</th>
        <th>DEPARTMENT</th>
        <th>BLOOD GROUPS</th>
        <th>AGE</th>
        <th>EMAIL</th>
        <th>MOBILE NUMBER</th>
        <th>ADDRESS</th>
        <th>PASSWORDS</th>
        <th>EDIT</th>
        <th>DELETE</th>
    </tr>
<tr>

<%
try
{
  Connection con =ConnectionProvider.getCon();
   Statement ps=con.createStatement(); 
   ResultSet rs=ps.executeQuery("select * from patients");
   while(rs.next())
   {
    String id=rs.getString(1);
%>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getInt(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
<td><%=rs.getString(11)%></td>
<td><a href="updatePatient.jsp?id=<%=id%>">EDIT</a></td>
<td><a href="deletePatient.jsp?id=<%=id%>">DELETE</a></td>
</tr>
<%
}}
catch(Exception e)
        {
           //out.println(""+e);
          response.sendRedirect("addNewPatient.jsp?msg=invalid");
        }
%> 
</table>
</center>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>
</body>
</html>