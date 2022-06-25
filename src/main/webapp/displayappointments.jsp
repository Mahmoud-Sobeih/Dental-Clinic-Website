<%-- 
    Document   : displayappointments
    Created on : Jun 26, 2022, 12:32:09 AM
    Author     : User
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="appointmentssearch.jsp"/>

        <table border=3>
            <tr>
                <th><label>Name</label></th>
                <th><label>Phone</label></th>
                <th><label>Appointment</label></th>
            </tr>               
          
            <c:forEach var="i" begin="0" end="${result.size()-1}">
                <tr>
                    <td>${result.get(i).getName()}</td>
                    <td>${result.get(i).getPhone()}</td>
                    <td>${result.get(i).getBookingTime()}</td>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>
