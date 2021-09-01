<%-- 
    Document   : Contact
    Created on : Jun 27, 2021, 7:30:36 PM
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
                <div class="titlecontact">
                    <form action="Contact" method="post">
                        <h2 style="padding-bottom: 10px;">Contact</h2>
                        <h2>PHOTOGRAPHER</h2>
                        <a>Address: ${contact.address}</a><br>
                        <a>City:${contact.city}</a><br>
                        <a>Country: ${contact.country}</a><br><br><br>
                        <a>Tel: ${contact.telephone}</a><br><br>
                        <a>Email: ${contact.email}</a></form>
                </div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14899.474430246113!2d105.58262375!3d20.9979034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1624845619655!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"  width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <jsp:include page="Right.jsp"/>
        </div>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>