<%-- 
    Document   : left_menu
    Created on : Jan 28, 2023, 6:17:14 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css_lesson/header_menu.css"/>
    </head>
    <body>
        <div class="w3-sidebar w3-collapse" id="sidenav" ; top: 44px;">
            <div id="leftmenuinner" style="padding-top: 44px;">
                <div id="leftmenuinnerinner">
                    <!--  <a href='javascript:void(0)' onclick='close_menu()' class='w3-button w3-hide-large w3-large w3-display-topright' style='right:16px;padding:3px 12px;font-weight:bold;'>&times;</a>-->
                    <h2 class="left"><span class="left_h2">Java</span> Tutorial</h2>

                    <a target="_top" href="Lesson_Java_JSP/lesson1.jsp">Java Intro</a>
                    <a target="_top" href="lesson2.jsp">Java Get Started</a>
                    <a target="_top" href="Lesson_Java_JSP/lesson3.jsp" class="active">Java Syntax</a>
                    <a target="_top" href="java_output.asp">Java Output</a>
                    <div class="tut_overview">
                        <a target="_top" href="java_output.asp">Print Text</a>
                        <a target="_top" href="java_output_numbers.asp">Print Numbers</a>
                    </div>

                    <br>
    
      
                </div>
            </div>
        </div>
    </body>
</html>
