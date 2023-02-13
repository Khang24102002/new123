<%-- 
    Document   : lesson24
    Created on : Feb 1, 2023, 10:47:59 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css_lesson/mystyle.css"/>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
                <jsp:include page="../Menu_JSP/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">

            <h2>Java - What is OOP?</h2>
            <p>OOP stands for <strong>Object-Oriented Programming</strong>.</p>

            <p>Procedural programming is about writing procedures or methods that perform 
                operations on the data, while object-oriented programming is about 
                creating objects that contain both data and methods.</p>
            <p>Object-oriented programming has several advantages over procedural 
                programming:</p>
            <ul>
                <li>OOP is faster and easier to execute</li>
                <li>OOP provides a clear structure for the programs</li>
                <li>OOP helps to keep the Java code DRY "Don't Repeat Yourself", and makes 
                    the 
                    code easier to maintain, modify and debug</li>
                <li>OOP makes it possible to create full reusable 
                    applications with less code and shorter development time</li>
            </ul>
            <p><strong>Tip:</strong> The "Don't Repeat Yourself" (DRY) principle is about 
                reducing the repetition of code. You should extract out the codes that are 
                common for the application, and place them at a single place and reuse them 
                instead of repeating it.</p>
            <hr>

            <h2>Java - What are Classes and Objects?</h2>
            <p>Classes and objects are the two main aspects of object-oriented programming.</p>
            <p>Look at the following illustration to see the difference between class and 
                objects:</p>

            <div class="flex-container">
                <div class="box">
                    <h2>class</h2>  
                    <p>Fruit</p>
                </div>
                <div class="box">
                    <h2>objects</h2>  
                    <p>Apple</p>
                    <p>Banana</p>
                    <p>Mango</p>
                </div>
            </div>
            <p>Another example:</p>
            <div class="flex-container">
                <div class="box">
                    <h2>class</h2>  
                    <p>Car</p>
                </div>
                <div class="box">
                    <h2>objects</h2>  
                    <p>Volvo</p>
                    <p>Audi</p>
                    <p>Toyota</p>
                </div>
            </div>

            <p>So, a class is a template for objects, and an object is an instance of a class.</p>
            <p>When the individual objects are created, they inherit all the 
                variables and methods from the class.</p>


        </div>
    </body>
</html>
