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
        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br>
        <h2>${message}</h2>
       
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
                    <h1 class="text-center">Booking</h1>
                    <div class="card-body">
                        <!--modelAttribute="patient"-->
                        <form action="confirm-booking"  method="POST" > 
                            <div class="form-group">
                                <label> Doctor </label> <input type="text"
                                                              name="doctor"  class="form-control"
                                                              placeholder="Enter Doctor Name" />
                            </div>

                            <div class="form-group">
                                <label> Date </label> <input type="date"
                                                                  name="bookingDate" class="form-control"
                                                                          placeholder="Enter Date" />
                            </div>
                            
                            <div class="form-group">
                                <label> Time </label> <input type="time"
                                                                  name="bookingTime" class="form-control"
                                                                          placeholder="Enter Time" />
                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Book</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>

        
    </body>
</html>
