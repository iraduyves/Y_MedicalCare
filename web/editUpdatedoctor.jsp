<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="project.ConnectionProvider" %>
<%@include file="adminheader.html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
  if("deleted".equals(msg))
  {
  %>
<center><font color="red" size="5">Deleted Successfully </font></center>
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
        <div class="tables">
                <div class="last-appointments">
                    <div class="heading">
                        <center><h2>MANAGE DOCTORS</h2></center> 
                        <a href="#"class="btn">Vieuw All</a>
                    </div>
                    <table class="appointments" border="0">
                         <thead>
                            <td>Photo</td>
                            <td>ID</td>
                            <td>FNAME</td>
                            <td>LNAME</td>
                            <td>DEPT</td>
                            <td>DEGREE</td>
                            <td>MOBILE</td>
                            <td>EMAIL</td>
                            <td>ADDRESS</td>
                            <td>PASSWORD</td> 
                            <td>EDIT</td>
                            <td>DELETE</td>
                        </thead>

                        <tbody>
                            <tr>
                          <%
                             try
                             {
                                 Connection con =ConnectionProvider.getCon();
                                 Statement ps=con.createStatement(); 
                                 ResultSet rs=ps.executeQuery("select * from doctors");
                                 while(rs.next())
                                 {
                                     String id=rs.getString(1);
                          %>

                                <td>
                                    <div class="img-box-small">
                                        <img src="./doctor7.jpg" alt="">
                                    </div>
                                </td>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><%=rs.getString(7)%></td>
                                <td><%=rs.getString(8)%></td>
                                <td><%=rs.getString(9)%></td>    
                                <td>
                                    <a href="updatedoctor.jsp?id=<%=id%>"><i class="fas fa-edit"></i></a>
                                </td>
                                <td>
                                    
                                    <a href="deletedoctor.jsp?id=<%=id%>"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                </tr>
                            <%
                                  }}
                                 catch(Exception e)
                                 {
//                                       out.println(""+e);
                                       response.sendRedirect("editUpdatedoctor.jsp?msg=invalid");
                                 }
                            %> 
                           
                        </tbody>   
                    </table>
                </div>
    </body>
</html>
