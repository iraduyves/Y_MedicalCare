<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
<%
  String mobilenumber=request.getParameter("mobilenumber");
  String id=request.getParameter("id");
try
{
  Connection con =ConnectionProvider.getCon();
  // String sql="UPDATE  `bloodrequest`Set`status`='completed' whrere `bloodrequest`.`mobilenumber`=?";
   Statement ps=con.createStatement();  
   //ps.setString(5, mobilenumber);
   ps.executeUpdate("DELETE FROM `appointments`WHERE `appointments`.`id`='"+id+"' ");
   response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
        {
             out.println(""+e);
            //response.sendRedirect("requestForBlood.jsp");
        }
%>