<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.css">
    <link rel="stylesheet" href="./landingpage.css">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
    
        <a href="#default" class="logo"><img class="logo" src="background.jpg.jfif"></a>
        <div class="header-right">
        <a class="active" href="index.jsp">Home</a>
        <a href="#service">Service</a>
<!--        <a href="#about">About</a>-->
<!--        <a href="#doctors">Doctors</a>-->
        <a href="appointment.jsp">BookAppointment</a> 
        <a href="contactpage.jsp">Contact </a>
        <a href="adminLogin.jsp">AdminLogin</a>
        <a href="DoctorLogin1.jsp">DoctorLogin</a>
        <a href="UserRegister.jsp">patientregister</a>
        <a href="userLogin.jsp">UserLogin</a>
    
  
  </div>
</div>
  
            <div  style="max-width:100% ">
                 <img class="mySlides"  src="welcome.jpg" >
                 <img class="mySlides"  src="hospital.jpg" >
                 <img class="mySlides"  src="hoos.jpg" >
                 <img class="mySlides"  src="hos.jpg" >
            </div>
<script>
var myIndex = 0;
carousel();S

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


<body>
  <br>


 <%
  if("invalid".equals("msg"))
  {
  %>
  <center><font color="red" size="5">Invalid Data! Try Again</font></center>
<% 
  }
  %>

  <section class="home" id="home">
        <div class="row">
            <div class="image">
                <img src="./homeimage.jpg" alt="">
            </div>
            <div class="content">
                <h3 >We Take Care of your healthy</h3>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "</p>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "</p>
                <a href="#" class="btn">Learn more<span class="fas fa-chevron-right"></span></a>
            </div>
        </div>
    </section>
    <!-- icons section-->
    <section class="icon-container">
        <div class="icons">
            <i class="fas fa-user-md fa-3x ">
                <h3>250+</h3>
                <P>doctors at work</P>
            </i>
        </div>
        <div class="icons">
            <i class="fas fa-procedures fa-3x">
                <h3>255+</h3>
                <P>satified patients</P>
            </i>
        </div>
        <div class="icons">
            <i class="fas fa-hospital fa-3x">
                <h3>252+</h3>
                <P>availabe hospital</P>
            </i>
        </div>

    </section>
    <!--service section-->
    <section class="service" id="service">
        <h1 class="heading">our <span>Service</span></h1>
        <div class="box-container">
            <div class="box">
                <i class="fas fa-notes-medical fa-3x"></i>
                <h3>Free checkups</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            <div class="box">
                <i class="fas fa-ambulance fa-3x"></i>
                <h3>24/7 Ambulance</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            <div class="box">
                <i class="fas fa-heartbeat fa-3x"></i>
                <h3>Total Care</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            <div class="box">
                <i class="fas fa-user-md fa-3x"></i>
                <h3>Proffesionaldoctors</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            </div>
        <div class="box-container1">
            <div class="box">
                <i class="fas fa-comment-medical fa-3x"></i>
                <h3> ChartwithDoctors</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            <div class="box">
                <i class="fas fa-microscope fa-3x"></i>
                <h3>Best Laboratory</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            <div class="box">
                <i class="fas fa-capsules fa-3x"></i>
                <h3> Medecines</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
            </div>
            <div class="box">
                <i class="fas fa-laptop-medical fa-3x"></i>
                <h3>Advanced Tech</h3>
                <P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </P>
                <a href="#" class="btn">Learn More <span class="fas chevron-right"></span></a>
        </div>
        </div>
    </section>
    <!-- about section -->
    <section class="about" id="about">
        <h1 class="heading"><span>About</span>us</h1>
        <div class="row">
            <div class="image">
                <img src="./doctor3.jpg" alt="">
            </div>
            <div class="content">
                <h3 >We Take Care of your healthy</h3>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "</p>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "</p>
                <a href="#" class="btn">Learn more<span class="fas fa-chevron-right"></span></a>
            </div>
        </div>
    </section>
    <!--doctor section-->
    {
        <section class="doctors" id="doctors">
            <h1 class="heading">Our <span>Doctors</span></h1>
            <div class="box-container">
                <div class="box">
                    <img src="./doctor6.png" alt="">
                    <h3>Yves IRADUKUNDA</h3>
                    <span>expert doctor</span>
                    <div class="share">
                        <a href="#"class="fab fa-facebook"></a>
                        <a href="#"class="fab fa-instagram"></a>
                        <a href="#"class="fab fa-twitter"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                        <a href="#"class="fab fa-github"></a>
                    </div>
                </div>
                <div class="box">
                    <img src="./doctor3.jpg" alt="">
                    <h3>Yves IRADUKUNDA</h3>
                    <span>expert doctor</span>
                    <div class="share">
                        <a href="#"class="icon ion-social-facebook"></a>
                        <a href="#"class="fab fa-instagram"></a>
                        <a href="#"class="fab fa-twitter"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                        <a href="#"class="fab fa-github"></a>
                    </div>
                
                </div>
                <div class="box">
                    <img src="./doctor4.png" alt="">
                    <h3>Yves IRADUKUNDA</h3>
                    <span>expert doctor</span>
                    <div class="share">
                        <a href="#"class="fab fa-facebook"></a>
                        <a href="#"class="fab fa-instagram"></a>
                        <a href="#"class="fab fa-twitter"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                        <a href="#"class="fab fa-github"></a>
                    </div>
                </div>
                </div>
            <div class="box-container1">
                <div class="box">
                    <img src="./doctor5.jpg" alt="">
                    <h3>Yves IRADUKUNDA</h3>
                    <span>expert doctor</span>
                    <div class="share">
                        <a href="#"class="fab fa-facebook"></a>
                        <a href="#"class="fab fa-instagram"></a>
                        <a href="#"class="fab fa-twitter"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                        <a href="#"class="fab fa-github"></a>
                    </div>
                </div>
                <div class="box">
                    <img src="./doctor7.jpg" alt="">
                    <h3>Yves IRADUKUNDA</h3>
                    <span>expert doctor</span>
                    <div class="share">
                        <a href="#"class="fab fa-facebook"></a>
                        <a href="#"class="fab fa-instagram"></a>
                        <a href="#"class="fab fa-twitter"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                        <a href="#"class="fab fa-github"></a>
                    </div>
                </div>
                <div class="box">
                    <img src="./doctor3.jpg" alt="">
                    <h3>Yves IRADUKUNDA</h3>
                    <span>expert doctor</span>
                    <div class="share">
                        <a href="#"class="fab fa-facebook"></a>
                        <a href="#"class="fab fa-instagram"></a>
                        <a href="#"class="fab fa-twitter"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                        <a href="#"class="fab fa-linkedin"></a>
                    </div>
              </div>
            </div>
           
        </sction>
    
       
        <!--footer section-->
        <section class="footer">
            <div class="box-containers">
                <div class="box">
                    <h3>Quick Links</h3>
                    <a href="#"><i class="fas fa-chevron-right"></i>Home</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>About</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Service</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Doctors</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>book</a>
                </div>
                <div class="box">
                    <h3>Our Services</h3>
                    <a href="#"><i class="fas fa-chevron-right"></i>Kemotherapy</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Radiotherapy</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Cardioloty</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>diagnosis</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Ambulance service</a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Consultancy</a>
                </div>
                <div class="box">
                    <h3 id="contact">contact-info:</h3>
                    <a href="#"><i class="fas fa-phone"></i>+250782045468</a>
                    <a href="#"><i class="fas fa-phone"></i>+250725086514</a>
                    <a href="#"><i class="fas fa-envelope"></i>iradukundayves@gmail.com</a>
                    <a href="#"><i class="fas fa-envelope"></i>yvesmedicare@gmail.com</a>
                    <a href="#"><i class="fas fa-map-marker-alt"></i>Kimironko,Kigali,RWANDA,kg-st-6</a>
                </div>
                <div class="box">
                    <h3 id="contact">follow us:</h3>
                    <a href="#"><i class="fab fa-facebook"></i>Facebook</a>
                    <a href="#"><i class="fab fa-twitter"></i>Twitter</a>
                    <a href="#"><i class="fab fa-instagram"></i>Instagram</a>
                    <a href="#"><i class="fab fa-linkedin"></i>Linked In</a>
                    <a href="#"><i class="fab fa-youtube"></i>Youtube</a>
                    <a href="#"><i class="fab fa-pinterest"></i>Pinterest</a>
                </div>
            </div>
            <div   class="credit"><a href=" #  "class="logo"><i class="fas fa-heartbeat">Yves MEDICAL CARE</i></a> <i  class="fas fa-copyright fa-1x"></i><span id="copyrightt" > </span> all right are reserved</div>
        </section>
   
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center>All Right Reserved @ YVES :: 2022  </center></h3>

</body>
</html>

