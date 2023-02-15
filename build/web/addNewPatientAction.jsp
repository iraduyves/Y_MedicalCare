<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
  String id=request.getParameter("id");
  String fname=request.getParameter("fname");
  String department=request.getParameter("department");
  String gender=request.getParameter("gender");
  String bloodgroup=request.getParameter("bloodgroup");
  String age=request.getParameter("age");
  String email=request.getParameter("email");
  String mobilenumber=request.getParameter("mobilenumber");
  String address=request.getParameter("address");
  String password=request.getParameter("password");
  
try
{
  Connection con =ConnectionProvider.getCon();
   String sql="INSERT INTO `patients`( `patid`,`fname`,`gender`,`department`,`bloodgroup`,`age`,`email`,`mobilenumber`,`address`,`password`) VALUES (?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(sql);  
   ps.setString(1, id);
   ps.setString(2, fname);
   ps.setString(3, gender);
   ps.setString(4, department);
   ps.setString(5, bloodgroup);
   ps.setString(6, age);
   ps.setString(7, email);
   ps.setString(8, mobilenumber);
   ps.setString(9, address);
   ps.setString(10, password);
   ps.executeUpdate();
   response.sendRedirect("UserRegister.jsp?msg=valid");
}
catch(Exception e)
        {
           out.println(""+e);
           // response.sendRedirect("addNewPatient.jsp?msg=invalid");
        }
%>