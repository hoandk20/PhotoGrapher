<%-- 
    Document   : home
    Created on : Jun 27, 2021, 4:18:18 PM
    Author     : hoandk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/Home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin: 0;">       
        <jsp:include page="Header.jsp"/>
        <div class="contain">
            <div class="left">
                <form action="Home" method="post"></form>
                <div class="image">
                    <img src="./Images/img1.jpg" width="700" height="450" alt="">
                </div>
                <div class="titlehome">
                    Lorem ipsum dolor sit
                </div>
                <div class="list">
                    <ul>
                        <c:forEach items="${list}" var="o">
                            <li class="number">
                                <div class="image">
                                    <img src="./Images/${o.image}"width="220" height="150" alt="">
                                </div>
                                <h4>
                                    <a  href="./Gallery?id=${o.ID}">${o.title}</a>
                                </h4>
                                <p>${o.description}</p>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="pagination">                       
                    <c:forEach begin="1" end="${endP}" var="i">
                        <a id="${i}" href="./Home?index=${i}"> ${i} </a>
                    </c:forEach>                               
                </div>
                <div class="about">
                    About me
                </div>
                <div class="description">
                    ${contact.about}
                </div>
            </div>
            <jsp:include page="Right.jsp"/>
        </div>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>