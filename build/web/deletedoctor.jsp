<%@include file="adminheader.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%

  
try
{
  String id=request.getParameter("id");
  Connection con =ConnectionProvider.getCon();
   PreparedStatement ps=con.prepareStatement(" DELETE FROM doctors WHERE `doctors`.`docid` =?");
   ps.setString(1, id);
   ps.execute();
   response.sendRedirect("editUpdatedoctor.jsp?msg=deleted");
   }
   catch(Exception e)
        {
//           out.println(""+e);
            response.sendRedirect("editUpdatedoctor.jsp?msg=Invalid");
        }

%>