<%@include file="adminheader.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
  String docid=request.getParameter("id");
  String docfname=request.getParameter("fname");
  String doclname=request.getParameter("lname");
  String docdepartment=request.getParameter("department");
  String docdegree=request.getParameter("degree");
  String docmobilenumber=request.getParameter("mobilenumber");
  String docemail=request.getParameter("email");
  String docaddress=request.getParameter("address");
  String docpassword=request.getParameter("password");
  
try
{
  Connection con =ConnectionProvider.getCon();
   String sql="INSERT INTO `doctors`( `docid`,`docfname`,`doclname`,`department`,`degree`,`mobilenumber`,`email`,`address`,`password`) VALUES (?,?,?,?,?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(sql);  
   ps.setString(1, docid);
   ps.setString(2, docfname);
   ps.setString(3, doclname);
   ps.setString(4, docdepartment);
   ps.setString(5, docdegree);
   ps.setString(6, docmobilenumber);
   ps.setString(7, docemail);
   ps.setString(8, docaddress);
   ps.setString(9, docpassword);
   ps.executeUpdate();
   response.sendRedirect("addNewDoctor.jsp?msg=valid");
}
catch(Exception e)
        {
//           out.println(""+e);
            response.sendRedirect("addNewDoctor.jsp?msg=invalid");
        }
%>