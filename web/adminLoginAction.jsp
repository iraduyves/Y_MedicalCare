<%
  String username1=request.getParameter("username");
  String password1=request.getParameter("password");
  String cred="iradukunda";
  String pass="yves123";
  if(username1.equals(cred) && password1.equals("yves123"))
  {
      response.sendRedirect("adminpage.jsp");
  }
  else
  {
      response.sendRedirect("adminLogin.jsp?msg=invalid");
  }


%>