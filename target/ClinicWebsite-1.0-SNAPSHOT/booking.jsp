<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Booking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br>
        <h2>${message}</h2>
        <form:form action="confirm-booking" modelAttribute="patient">
            Doctor <form:input type="text" path="doctor"/><br>
            Date <form:input type="date" path="bookingDate"/><br>
            Time <form:input type="time" path="bookingTime"/><br>
            <input type="submit" value="Book"/>
        </form:form>
        
        <br>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
