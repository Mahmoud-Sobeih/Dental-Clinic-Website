<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Dental Clinic</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    </head>
    <body>
        <c:if test="${sessionScope.user == null}">
            <jsp:include page="homeHeader.jsp"/>
        </c:if>
        <c:if test="${sessionScope.user == 'admin'}">
            <jsp:include page="adminHeader.jsp"/>
        </c:if>
        <c:if test="${sessionScope.user != 'admin' && sessionScope.user != null}">
            <jsp:include page="header.jsp"/>
        </c:if>
        
        <br>
        <br>
        
        <h1 class="text-center">This is Home page</h1>
        
        <%--<c:if test="${sessionScope.userName == null}">--%>
            <%--<jsp:include page="login.jsp"/>--%>
        <%--</c:if>--%>
      
    </body>
</html>
