<%-- 
    Document   : home
    Created on : Jan 28, 2023, 9:36:38 PM
    Author     : mylov
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../css_lesson/home.css" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="zone zone-content">
            <div class="course-head">
                <div class="overlay"></div>
                <div class="container">
                    
                    <c:set var="detail" value="${requestScope.detail}"/>
                    
                    <div class="course-head-content">
                         
                        <div class="head">
                            <h1 class="title">

                                ${detail.getCourse_name()}
                                
                            </h1>
                            <div class="actions">
                            </div>
                        </div>
                        <div class="main-content">
                            <div class="title-wrap">
                                <div class="title-wrap__rate-and-author">
                                    <div class="enroll-students">
                                        <i style="font-size: 13px" class="cl-icon-users-alt"></i>
                                        25374 students </div>

                                    <div id="container-rate" class="rate ">
                                        <span class="star-rating">
                                            <span style="width:90.0%"></span>
                                            <span class="vote-rate">
                                                <span value="1" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="2" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="3" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="4" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="5" class="star"><i class="cl-icon-favorite-full"></i></span>
                                            </span>
                                        </span>
                                        <span class="text-rate">
                                            4.5 (155 votes)
                                        </span>
                                    </div>
                                </div>
                                <p class="title-wrap__desc" title="Object-Oriented-Programming (Object-Oriented-Programming) is an object-based programming method to find out the nature of the problem. This course helps programmers learn programming techniques that all logic and practical requirements are built around objects. Understanding how OOP works in Java will simplify maintenance and scalability in software development.">Object-Oriented-Programming (Object-Oriented-Programming) is an object-based programming method to find out the nature of the problem. This course helps programmers learn programming techniques that all logic and practical requirements are built around objects. Understanding how OOP works in Java will simplify maintenance and scalability in software development.</p>
                            </div>
                            <div class="infor-wrap">
                                <div class="infor-wrap__item">
                                    <span class="left">
                                        <span class="icon-wrap"><i class="cl-icon-clock"></i></span>
                                        Time
                                    </span>
                                    <span class="right">
                                        0 hours
                                    </span>
                                </div>
                                <div class="infor-wrap__item">
                                    <span class="left">
                                        <span class="icon-wrap"><i class="cl-icon-layer-group"></i></span>
                                        Number of tasks
                                    </span>
                                    <span class="right">
                                        0
                                    </span>
                                </div>
                                <div class="infor-wrap__item">
                                    <span class="left">
                                        <span class="icon-wrap"><i class="cl-icon-graduation-cap"></i></span>
                                        Reward
                                    </span>
                                    <span class="right">
                                        0
                                    </span>
                                </div>
                            </div>
                            <div class="actions-wrap">
                                <div class="process-wrap">
                                    <div class="progress-circle progress-20"><span>20</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="course-detail" class="container">
                <div class="container">
                    <div class="tmp">
                    </div>
                    <div id="exTab1" class="">
                        <ul class="nav nav-pills col-sm-12">
                            <li class="active extab">
                                <a href="#1a" data-toggle="tab">Tasks</a>
                            </li>

                            <li class="extab">
                                <a id="course-objective" href="#2a" data-toggle="tab">Objective</a>
                            </li>
                            <li class="extab">
                                <a style="" href="#3a" id="comments-tab" data-toggle="tab">Comments (<span id="total-comments-count">105</span>)</a>
                            </li>
 
                        </ul>

                        <div class="tab-content clearfix">
                            <div class="tab-pane hide list-task row" id="course-lesson">
                            </div>
                            <div class="tab-pane hide list-task row" id="course-practice">
                            </div>
                            <div class="tab-pane active list-task row" id="1a">
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="../img/home/Screenshot 2023-01-29 185123.jpg">
                                            <div class="title">
                                                <h3 class="active" title="Classes and Objects">Classes and Objects</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                            <a title="Introduction" href="Lesson_Java_JSP/lesson1.jsp" class="circle resolve  ">1</a>
                                            <a title="Get started" href="Lesson_Java_JSP/lesson2.jsp" class="circle resolve  ">2</a>
                                            <a title="Syntax in Java" href="Lesson_Java_JSP/lesson3.jsp" class="circle allow-active  ">3</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="../img/home/Screenshot 2023-01-29 185123.jpg">
                                            <div class="title">
                                                <h3 class="active" title="Quiz">Quiz</h3>
                                            </div>
                                        </div>
                                        <!--                                        <div class="contain-task">
                                                                                    <a title="Trắc nghiệm method hiding" href="/learning/object-oriented-programming-in-java/11157235" class="circle allow-active  ">52</a>
                                                                                   <a title="Trắc nghiệm nạp chồng hàm" href="/learning/object-oriented-programming-in-java/11155406" class="circle allow-active  ">81</a>
                                                                                </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="modal fade" id="buy-now-support" role="dialog">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"></button>
                            <h4 class="modal-title">Support Codelearn</h4>
                        </div>
                        <div class="modal-body">
                            <p>Please contact email: <a href="mailto:support@codelearn.io">support@codelearn.io</a> for support.</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
