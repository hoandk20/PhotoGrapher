<%-- 
    Document   : Gallery
    Created on : Jun 27, 2021, 7:36:16 PM
    Author     : hoandk
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link href="css/Header.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Home.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="nav" style=" font-family: Times New Roman, Times, serif">
            <div class="preheader" style="font-size: 16px;">          
                <ul>
                    <li style="width: 130px;">
                        <a href="./Home">My front page</a>
                    </li>
                    <c:forEach items="${list}" var="o">
                        <li>
                            <a <c:if test="${activeG eq o.ID}">
                                    style="font-weight: bold;"
                                </c:if> 
                                href="./Gallery?id=${o.ID}">${o.name}</a>
                        </li></c:forEach>
                        <li>
                            <a href="./Contact">Contact</a>
                        </li>
                    </ul>
                </div>
                <div class="header" style="height: 130px;">
                    <div class="img"> </div> 
                    <div class="title"> PHOTOGRAPHER </div>
                    <div class="subtitle">
                        Welcome to this website
                    </div>
                </div>
            </div>
            <div class="contain" >
                <div class="left">  
                    <form action="Gallery" method="post">
                        <div class="c" style="width: 690px; height: 450px; ">
                            <h3 style="color: white; padding-bottom: 30px;">${gallery.name}</h3>  
                        <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="./Images/${listI.get(0).image_url}" alt="" style="width:690px; height: 450px;">
                                </div>
                                <c:forEach begin="1" end="${listI.size()}" items="${listI}" var="i">
                                    <div class="item">
                                        <img src="./Images/${i.image_url}" alt="" style="width:690px; height: 450px;">
                                    </div> 
                                </c:forEach>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                    </div>

                    <div class="GalleryImage" style="padding-top: 100px;">
                        <c:forEach items="${listI}" var="i">
                            <label class="GalleryImagee">
                                <input type="checkbox" >
                                <img src="./Images/${i.image_url}" alt="" >
                            </label>  
                        </c:forEach>
                    </div> 

                </form>
            </div>
            <jsp:include page="Right.jsp"/>
        </div>
        <jsp:include page="Footer.jsp"/>     

    </body>
</html>