<%-- 
    Document   : Header
    Created on : Jun 27, 2021, 4:37:06 PM
    Author     : hoandk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/Header.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="nav">
            <div class="preheader">          
                <ul>
                    <li>
                        <a class="${activeH}" href="./Home">My front page</a>
                    </li>
                    <c:forEach items="${list}" var="o">
                        <li>
                            <a <c:if test="${activeG eq o.ID}">
                                    class="activeGallery"
                                </c:if>  href="./Gallery?id=${o.ID}">${o.name}</a>
                        </li></c:forEach>
                        <li>
                            <a class="${activeC}" href="./Contact">Contact</a>
                    </li>
                </ul>
            </div>
            <div class="header">
                <div class="img"> </div> 
                <div class="title"> PHOTOGRAPHER </div>
                <div class="subtitle">
                    Welcome to this website
                </div>
            </div>
        </div>
    </body>
</html>
