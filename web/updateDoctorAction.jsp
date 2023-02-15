<%@include file="adminheader.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
  String id=request.getParameter("id");
  int id1=Integer.parseInt(id);
  String fname=request.getParameter("fname");
  String lname=request.getParameter("lname");
  String department=request.getParameter("department");
  String degree=request.getParameter("degree");
  String mobilenumber=request.getParameter("mobilenumber");
  String email=request.getParameter("email");
  String address=request.getParameter("address");
  String password=request.getParameter("password");
  
try
{
  Connection con =ConnectionProvider.getCon();
   PreparedStatement ps=con.prepareStatement(" update `doctors` set `docfname` = ?, `doclname` = ?, `department`= ?,`degree`= ? , `mobilenumber`= ? , `email` = ?, `address` = ?,`password`= ?  where `doctors`.`docid` =?");  
   //ps.setString(1, id);
   ps.setString(1, fname);
   ps.setString(2, lname);
   ps.setString(3, department);
   ps.setString(4, degree);
   ps.setString(5, mobilenumber);       
   ps.setString(6, email);       
   ps.setString(7, address);       
   ps.setString(8, password);       
   ps.setString(9, id);
  ps.executeUpdate();
   response.sendRedirect("editUpdatedoctor.jsp?msg=valid");
}
   catch(Exception e)
        {
//           out.println(""+e);
            response.sendRedirect("editUpdatedoctor.jsp?msg=invalid");
        }

%>