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
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="homeHeader.jsp"/>
    
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
                    <h1 class="text-center">Login</h1>
                    <div class="card-body">
                        <form action="profile"  method="POST" modelAttribute="patient"> 
                            <div class="form-group">
                                <label> Email </label> <input type="text"
                                                              name="email"  class="form-control"
                                                              placeholder="Enter Email" />
                            </div>

                            <div class="form-group">
                                <label> Password </label> <input type="password"
                                                                  name="password" class="form-control"
                                                                          placeholder="Enter Password" />
                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>

     
    </body>
</html>
