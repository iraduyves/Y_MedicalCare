<%@include file="header.html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
img{
width:100%;
height:max-content;
}</style>
</head>
<%
      response.setHeader("Cache-Control", "no-cache,no-store,must-revaliate");
      response.setHeader("pragma", "no-cache");
      response.setHeader("Expires", "0");
      if(session.getAttribute("username")==null)
      {
         response.sendRedirect("DoctorLogin1.jsp");
      }

%>
<body>
<br>
<div style="max-width:100%">
  <img class="mySlides"  src="welcome.jpg" >
  <img class="mySlides"  src="hospital.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
<br>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>
</body>
</html>