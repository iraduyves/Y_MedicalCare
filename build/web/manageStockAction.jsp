<%@include file="header.html"%>
<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
  
  String incdec=request.getParameter("incdec");
  String unitss=request.getParameter("units");
  int units1=Integer.parseInt(unitss);
  String medecine=request.getParameter("medecine");
  //int id1=Integer.parseInt(idss);

try
{
  Connection con =ConnectionProvider.getCon();
  PreparedStatement ps=con.prepareStatement("update `stock` set `units`=`units`+'"+units1+"' where `stock`.`medecine`='"+medecine+"'");  
  PreparedStatement pr=con.prepareStatement("update `stock` set `units`=`units`-'"+units1+"' where `stock`.`medecine`='"+medecine+"'");  
 if(incdec.equals("inc"))
 {
 ps.executeUpdate();
 }
 else
 {
 pr.executeUpdate();
 } 

 // else
  //ps.executeUpdate("update stock set units=units-'"+units1+"' where stock.id='"+ids+"'");
  
      response.sendRedirect("manageStock.jsp?msg=valid");
}
catch(Exception e)
        {
           out.println(""+e);
            //response.sendRedirect("manageStock.jsp?msg=invalid");
        }
%>