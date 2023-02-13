<%-- 
    Document   : lesson1
    Created on : Jan 28, 2023, 12:21:20 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css_lesson/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
      
        <jsp:include page="../Menu_JSP/header_menu.jsp"></jsp:include>

        <div class="" class="main" style="margin-left: 240px;padding-top: 0px">
        

            <hr>

            <h2>What is Java?</h2>
            <p>Java is a popular programming language, created in 1995.</p>
            <p>It is owned by Oracle, and more than <strong>3 billion</strong> devices run Java.</p>
            <p>It is used for:</p>

            <ul>
                <li>Mobile applications (specially Android apps)</li>
                <li>Desktop applications</li>
                <li>Web applications</li>
                <li>Web servers and application servers</li>
                <li>Games</li>
                <li>Database connection</li>
                <li>And much, much more!</li>
            </ul>
            <hr>

            <h2>Why Use Java?</h2>
            <ul>
                <li>Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)</li>
                <li>It is one of the most popular programming language in the world</li>
                <li>It has a large demand in the current job market</li>
                <li>It is easy to learn and simple to use</li>
                <li>It is open-source and free</li>
                <li>It is secure, fast and powerful</li>
                <li>It has a huge community support (tens of millions of developers)</li>
                <li>Java is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs</li>
                <li>As Java is close to <p style="color: blue; display: inline;" >C++</p> and <p style="color: blue; display: inline;" >C#</p>, it makes it easy for programmers to switch to Java or vice versa</li>
            </ul>
            <hr>
            <h2>Get Started</h2>
            <p>It is not necessary to have any prior programming experience.</p>
            <img src="../img_lesson/lesson1/lesson1.jpg" alt="alt"/>

            <hr>

           
        </div>
    </body>
</html>
