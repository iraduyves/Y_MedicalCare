<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
  String name1=request.getParameter("name");
  String mobilenumber1=request.getParameter("mobilenumber");
  String email1=request.getParameter("email");
  String bloodgroup1=request.getParameter("bloodgroup");
  String status1="pending";

 try
 {
   Connection con =ConnectionProvider.getCon();
   String sql="INSERT INTO `bloodrequest`( `name`,`mobilenumber`,`email`,`bloodgroup`,`status`) VALUES (?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(sql);  
   ps.setString(1, name1);
   ps.setString(2, mobilenumber1);
   ps.setString(3, email1);
   ps.setString(4, bloodgroup1);
   ps.setString(5, status1);
   ps.executeUpdate();
   response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e)
        {
            out.println(""+e);
        }

%>