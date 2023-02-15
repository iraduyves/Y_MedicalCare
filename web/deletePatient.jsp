<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%

  
try
{
  String id=request.getParameter("id");
  Connection con =ConnectionProvider.getCon();
   PreparedStatement ps=con.prepareStatement(" DELETE FROM patients WHERE `patients`.`id` =?");
   ps.setString(1, id);
   ps.execute();
   response.sendRedirect("editDeleteList.jsp?msg=deleted");
   }
   catch(Exception e)
        {
//           out.println(""+e);
            response.sendRedirect("editDeleteList.jsp?msg=Invalid");
        }

%>