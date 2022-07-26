<%-- 
    Document   : errorpage
    Created on : Jun 15, 2022, 7:53:17 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    </head>
    <body>
        <br>
        
        <h1 class="text-center" style="color: red">${message}</h1>
        
        <br>
        <br>
        
        <jsp:include page="log-in"/>
    </body>
</html>
