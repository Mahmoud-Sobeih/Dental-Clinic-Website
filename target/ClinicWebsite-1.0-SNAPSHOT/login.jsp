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
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <jsp:include page="homeHeader.jsp"/>

        <form:form action="profile" method="post" modelAttribute="patient">
            Email <form:input type="text" path="email"/><br>
            Password <form:password path="password"/><br>
            <input type="submit" value="login"/>
        </form:form>

        <jsp:include page="footer.jsp"/>
    </body>
</html>
