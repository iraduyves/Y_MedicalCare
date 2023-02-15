<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
  String id=request.getParameter("pid");
  String name=request.getParameter("fname");
  String partmentme=request.getParameter("department");
  String bloodgroup=request.getParameter("bloodgroup");
  String email=request.getParameter("email");
  String date=request.getParameter("date");
  String time=request.getParameter("time");
  String mobilenumber=request.getParameter("mobilenumber");
  String status=("pending");
  String status1=("rejected");
  String time1;
  String date1;
  String dept;
  
  
  
try
{
  Connection con =ConnectionProvider.getCon();
   String sql="INSERT INTO `appointments`( `patid`,`name`,`department`,`date`,`time`,`bloodgroup`,`email`,`mobilenumber`,`status`) VALUES (?,?,?,?,?,?,?,?,?)";
   String sql2="SELECT * FROM `appointments`";
   Statement st=con.createStatement();


   ResultSet rs=st.executeQuery(sql2);
     while(rs.next())
     {
        
         date1=rs.getDate(5).toString();
         time1=rs.getString(6);
         dept=rs.getString(4);
          
         
         
         if(  date.equals(date1) )
         {
         
          if(dept.equals(partmentme))
           {
                 if (time.equals(time1))
                {
                      PreparedStatement pk=con.prepareStatement(sql);  
                      pk.setString(1, id);
                      pk.setString(2, name);
                      pk.setString(3, partmentme);
                      pk.setString(4, date);
                      pk.setString(5, time);
                      pk.setString(6, bloodgroup);
                      pk.setString(7, email);
                      pk.setString(8, mobilenumber);
                      pk.setString(9, status1);
                      pk.executeUpdate();
                     response.sendRedirect("appointment.jsp?msg=rejected");
                     break;
                }
              else
               {
                       PreparedStatement pk=con.prepareStatement(sql);  
                      pk.setString(1, id);
                      pk.setString(2, name);
                      pk.setString(3, partmentme);
                      pk.setString(4, date);
                      pk.setString(5, time);
                      pk.setString(6, bloodgroup);
                      pk.setString(7, email);
                      pk.setString(8, mobilenumber);
                      pk.setString(9, status);
                      pk.executeUpdate();
                      response.sendRedirect("appointment.jsp?msg=valid");
              break;
               }
           }
           else
           {
              if (time.equals(time1))
                {
                     PreparedStatement pk=con.prepareStatement(sql);  
                      pk.setString(1, id);
                      pk.setString(2, name);
                      pk.setString(3, partmentme);
                      pk.setString(4, date);
                      pk.setString(5, time);
                      pk.setString(6, bloodgroup);
                      pk.setString(7, email);
                      pk.setString(8, mobilenumber);
                      pk.setString(9, status);
                      pk.executeUpdate();
                      response.sendRedirect("appointment.jsp?msg=valid");
                     break;
                }
              else
               {
                PreparedStatement pk=con.prepareStatement(sql);  
                      pk.setString(1, id);
                      pk.setString(2, name);
                      pk.setString(3, partmentme);
                      pk.setString(4, date);
                      pk.setString(5, time);
                      pk.setString(6, bloodgroup);
                      pk.setString(7, email);
                      pk.setString(8, mobilenumber);
                      pk.setString(9, status);
                      pk.executeUpdate();
                      response.sendRedirect("appointment.jsp?msg=valid");
              break;
               }
           }
        }



       

}  
}
catch(Exception e)
        {
           out.println(""+e);
           // response.sendRedirect("addNewPatient.jsp?msg=invalid");
        }
%>