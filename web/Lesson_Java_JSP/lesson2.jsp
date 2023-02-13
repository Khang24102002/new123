<%-- 
    Document   : lesson2
    Created on : Jan 28, 2023, 2:19:11 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css_lesson/mystyle.css"/>  
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <h1>Java <span class="color_h1">Getting Started</span></h1>



            <h2>Setup for Windows</h2>
            <p>To install Java on Windows:</p>

            <ol>
                <li>Go to "System Properties" (Can be found on Control Panel &gt; 
                    System and Security &gt; System &gt; Advanced System Settings)</li>
                <li>Click on the "Environment variables" button under the "Advanced" tab</li>
                <li>Then, select the "Path" variable in System variables and click on the "Edit" 
                    button</li>
                <li>Click on the "New" button and add the path where Java is installed, 
                    followed by <strong>\bin</strong>. By default, Java is installed in C:\Program 
                    Files\Java\jdk-11.0.1 (If nothing else was specified when you installed it). 
                    In that case, You will have to add a new path with: <strong>C:\Program 
                        Files\Java\jdk-11.0.1\bin </strong><br>
                    Then, click "OK", and save the settings</li>
                <li>At last, open Command Prompt (cmd.exe) and type <strong>java -version</strong> to see if Java is 
                    running on your machine</li>
            </ol>

            <!--            <button onclick="myAccFunction('DemoAcc')" class="w3-btn w3-block w3-left-align xx w3-border-bottom">Show how to install Java step-by-step with images »</button>-->
            <div id="DemoAcc" class="w3-hide ws-grey w3-padding-16 w3-container">

                <img src="../img_lesson/lesson2/lesson2_3.jpg" class="w3-image">
            </div>

            <!--<button onclick="myAccFunction('DemoAcc2')" class="w3-btn w3-block w3-left-align xx w3-border-bottom">Step 2 »</button>-->
            <div id="DemoAcc2" class="w3-hide ws-grey w3-padding-16 w3-container">

                <img src="../img_lesson/lesson2/lesson2_4.jpg" class="w3-image">
            </div>
            <!--<button onclick="myAccFunction('DemoAcc3')" class="w3-btn w3-block w3-left-align xx w3-border-bottom">Step 3 »</button>-->
            <div id="DemoAcc3" class="w3-hide ws-grey w3-padding-16 w3-container">

                <img src="../img_lesson/lesson2/lesson2_5.jpg" class="w3-image">
            </div>
            <!--<button onclick="myAccFunction('DemoAcc4')" class="w3-btn w3-block w3-left-align xx w3-border-bottom">Step 4 »</button>-->
            <div id="DemoAcc4" class="w3-hide ws-grey w3-padding-16 w3-container">

                <img src="../img_lesson/lesson2/lesson2_6.jpg" class="w3-image">
            </div>
            <!--<button onclick="myAccFunction('DemoAcc5')" class="w3-btn w3-block w3-left-align xx w3-border-bottom">Step 5 »</button>-->
            <div id="DemoAcc5" class="w3-hide w3-light-grey w3-padding-16 w3-container">

                <img src="../img_lesson/lesson2/lesson2_7.jpg" class="w3-image">

            </div>
           

            <br>
            <form action="lesson?id=${requestScope.lid}" method="post">
                <div class="finish_lesson">
                    <input style="color: white;
                           margin-top: 20px;
                           background: green;
                           height: 50px;
                           text-align: center;
                           width: 100px;
                           margin: 0 auto;" type="submit" value="Finish">        
                </div>
            </form>
        
        </div>
    </body>
</html>
