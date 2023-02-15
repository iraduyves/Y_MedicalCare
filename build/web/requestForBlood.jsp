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
<br>
<center>
    <table id="customers">
        <tr>
            <th>ID</th>
            <th>PATID</th>
            <th>NAME</th>
            <th>DEPT</th>
            <th>DATE</th>
            <th>TIME</th>
            <th>MOBILE</th>
            <th>EMAIL</th>
            <th>STATUS</th>
            <th>DONE</th>
            <th>DELETE</th>
        </tr>
        <tr>  
        <%
try
{
String status="pending";
  Connection con =ConnectionProvider.getCon();
   Statement ps=con.createStatement();
   ResultSet rs= ps.executeQuery(" select `appointments`.`id`,`appointments`.`patid`,`appointments`.`name`,`appointments`.`department`,`appointments`.`date`,`appointments`.`time`,`appointments`.`mobilenumber`,`appointments`.`email`,`appointments`.`status`from `appointments` ");
   while(rs.next())
   {
    String id=rs.getString(1);
 %>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>

            <td><a href="requestForBloodDone.jsp?id=<%=id%>">DONE</a></td>
            <td><a href="requestForBloodDelete.jsp?id=<%=id%>">DELETE</a></td>
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
    </table>



</center>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>
</body>
</html>