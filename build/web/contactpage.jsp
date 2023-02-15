<%-- 
    Document   : contactpage
    Created on : Oct 29, 2022, 10:36:57 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contact form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.css">
    <link rel="stylesheet" href="./contact.css">
</head>
<body>
    <!--<div class="alert-sucess">
        <span>Message Sent! Thank You for Contacting Us</span>
    </div>-->
    <!--<div class="alert-error">
        <span>Something went wrong!Please try again</span>
    </div>-->
    <div class="back">
        <a href="index.jsp"><input type="submit"name="submit" class="send-btn"value="back" required></a>
    </div>
    <div class="contact-section">
        
        <div class="contact-info">
            <div><i class="fa fa-map-marker" aria-hidden="true"></i><h2>kigali,kimironkno</h2></div>
            <div><i class="fas fa-envelope"></i><h2>yves@gmail.com</h2></div>
            <div><i class="fas fa-phone"></i><h2>+250322313122</h2></div>
            <div><i class="fas fa-clock"></i><h2>mon-fri ffrom 8:00am to 5:00pm</h2></div>
        </div>
        <div class="contact-form">
            <h2>Contact us</h2>
            <form action="" class="contact" method="post">
                <input type="text"class="text-box" placeholder="Your Name" required>
                <input type="email"class="text-box" placeholder="Your Email" required>
                <textarea name="" id=""  rows="5"  placeholder="Your message" required></textarea>
                <input type="submit"name="submit" class="send-btn"value="Send" required>
            </form>
        </div>
    </div>
</body>
</html>
