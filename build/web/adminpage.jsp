<%@include file="admin.html"%>
<%
      response.setHeader("Cache-Control", "no-cache,no-store,must-revaliate");
      response.setHeader("pragma", "no-cache");
      response.setHeader("Expires", "0");
      if(session.getAttribute("username")==null)
      {
         response.sendRedirect("adminLogin.jsp");
      }

%>