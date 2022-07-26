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
        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

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
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
                    <h1 class="text-center">Search For All Appointments</h1>
                    <div class="card-body">
                        <!--modelAttribute="patient"-->
                        <form action="appointments-booked"  method="POST" > 
                            <div class="form-group">
                                <label> Date </label> <input type="date"
                                                              name="bookingDate"  class="form-control"
                                                              placeholder="Enter The Date" />
                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Search</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        
        <br>
        
        <h2 class="text-center">${message}</h2>
        
    </body>
</html>
