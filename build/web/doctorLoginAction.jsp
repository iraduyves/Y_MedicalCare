<%
  String username1=request.getParameter("username");
  String password1=request.getParameter("password");
  String cred="yves";
  String pass="yves123";
  if(username1.equals(cred) && password1.equals("yves123"))
  {
      response.sendRedirect("home.jsp");
  }
  else
  {
      response.sendRedirect("DoctorLogin1.jsp?msg=invalid");
  }


%>