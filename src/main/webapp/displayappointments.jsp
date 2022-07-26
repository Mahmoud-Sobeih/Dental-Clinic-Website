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
        <title>Appointments</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="appointmentssearch.jsp"/>


        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Appointment</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <c:forEach var="i" begin="0" end="${result.size()-1}">
                    <tr>
                        <td>${result.get(i).getName()}</td>
                        <td>${result.get(i).getPhone()}</td>
                        <td>${result.get(i).getBookingTime()}</td>
                    </tr>
                </c:forEach>

        </tr>
    </tbody>

</table>


</body>
</html>
