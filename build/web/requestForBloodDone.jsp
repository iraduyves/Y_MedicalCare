<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
<%
  String id=request.getParameter("id");
  String completed="completed";
try
{
  Connection con =ConnectionProvider.getCon();
   String sql="UPDATE  `appointments` Set `appointments`.`status`='"+completed+"' where `appointments`.`id`=?";
   PreparedStatement ps=con.prepareStatement(sql);  
   ps.setString(1, id);
   ps.executeUpdate();
   response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
        {
            out.println(""+e);
           // response.sendRedirect("requestForBlood.jsp");
        }
%>