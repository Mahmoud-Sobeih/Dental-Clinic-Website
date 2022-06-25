<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Appointment</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script type="text/javascript">
            function callservlet() {

                var servletname = document.getdata.fetchdata.value;

                if (servletname === "")
                {
                    alert("NO value..");
                    return false;
                } else
                {
                    alert("value" + servletname);
                    document.location.href = "AppointmentServlet";
                    return false;
                }
            }

        </script>

    </head>
    <body>
        <jsp:include page="adminHeader.jsp"/>

        <form action="appointments-booked">
            Date: <input type="date" name="bookingDate"/>
            <!--<input type="button" value="search"/>-->
            <input type="submit" value="search"/>
        </form>
        <!--<input type="button" value="search" onclick="form.action = 'AppointmentServlet'"/>-->
        <!--<input type="button" value="search" onclick="return callservlet();">-->
        <br>
        
        <h2>${message}</h2>
        
    </body>
</html>
