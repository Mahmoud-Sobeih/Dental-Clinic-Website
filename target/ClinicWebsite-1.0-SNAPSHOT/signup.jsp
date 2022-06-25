<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <jsp:include page="homeHeader.jsp"/>
        
        <h1>${message}</h1>
        
        <form action="confirm-sign-up" method="post">
            UserName <input type="text" name="name"/><br>
            Phone <input type="text" name="phone"/><br>
            Birthday <input type="date" name="birthday"/><br>
            Gender <input type="radio" name="gender" value="male"/>
            <label for="male">Male</label>
            <input type="radio" name="gender" value="female"/>
            <label for="female">Female</label>
            <br>
            Email <input type="text" name="email"/><br>
            Password <input type="password" name="password"/><br>
            confirm password: <input type="password" name="confirmPassword"/>
            <input type="submit" value="signup"/>
        </form>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
