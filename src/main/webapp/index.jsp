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
        
        <h1>This is Home page</h1>
        
        <%--<c:if test="${sessionScope.userName == null}">--%>
            <%--<jsp:include page="login.jsp"/>--%>
        <%--</c:if>--%>
       
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
