<%-- 
    Document   : home
    Created on : Oct 1, 2022, 9:47:14 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!--<link rel="shortcut icon" href="images/OL.jpg" type="">-->

        <title> OL</title>

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!--owl slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
        <!-- nice select  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <link href="css/course_detail.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href=""/>
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

        <script>
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>       
    </head>

    <body>



        <section >
            <div class="offer_container">

                <div class="container " style="background: #c69500 border-box " >
                    <c:set var="course" value="${requestScope.course}"/>
                    <form  >
                        <div class="course" style="display: flex">
                            <div class="courseDetail">
                                <h1 style="color: red">${course.getCourse_name()}</h1>                      
                                <p>${course.getCourse_description()}</p>
                                Number of tasks:${course.getCourse_number_lesson()}
                                <br/>
                                <a style="color: black" href="commentc?courseId=${course.getCourse_id()}">Comment(${course.getNumbercomment()})</a>
                                <br>
                                <br>
                            </div>
                            <div class="courseDetail">
                                <img src="${course.getCourse_image() }" width="180px" height="150px" alt="alt"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>         


        <section class="food_section layout_padding-bottom">
            <div class="container">




                <input type="hidden" name="num" value="1">
                <div class="filters-content">                        
                    <div class="row grid">                            
                        <c:forEach items="${requestScope.listChap}" var="listChap">
                            <div class="col-sm-6 col-lg-6">
                                <div class="box">
                                    <div>

                                        <div class="detail-box">                                           
                                            <p>
                                                ${listChap.getChapter_name()}
                                            </p>

                                            <div class="f_circle" style="display: flex">
                                                <c:forEach var="i" items="${requestScope.listlesson}">
                                                      <% int c =0;%>
                                                        <c:forEach var="lesson_per" items="${requestScope.listPercentage}">
                                                            <c:if test="${i.lesson_id == lesson_per.lessonId && lesson_per.percentage == 1}">
                                                                <c:set var="var" value="1"/>
                                                                <% c = 1;%>
                                                            </c:if>
                                                        </c:forEach>
                                                    <c:if test="${listChap.chapter_id == i.chapter_id}"> 
                                                        <% if (c == 0){ %>
                                                                <div class="circle_per" style="text-align: center">
                                                                    <a href="lesson?id=${i.lesson_id} " target="target">${i.lesson_number}</a>
                                                                </div>                                                     
                                                        <% }else{%>
                                                        
                                                                <div class="circle" style="text-align: center">
                                                                    <a href="lesson?id=${i.lesson_id} " target="target">${i.lesson_number}</a>
                                                                </div>
                                                        <% }%>
                                                    </c:if>
                                                </c:forEach>
                                                <c:if test="${sessionScope.account==null}">
                                                    <c:forEach var="i" items="${requestScope.listlesson}">

                                                        <c:if test="${listChap.chapter_id==i.chapter_id}">
                                                            <div class="circle_per" style="text-align: center">
                                                                <a href="lesson?id=${i.lesson_id} " target="target">${i.lesson_number}</a>
                                                            </div>
                                                        </c:if>
                                                    </c:forEach>
                                                </c:if>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </section>               

        <!--end food section--> 






        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- popper js -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
        </script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- owl slider -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
        </script>
        <!-- isotope js -->
        <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
        <!-- nice select -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>
        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
        </script>
        <!-- End Google Map -->

    </body>

</html>




