<%-- 
    Document   : confirmbooking
    Created on : Jun 21, 2022, 11:08:23 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>${patient.getName()}, your booking is done</h1>
    </body>
</html>
