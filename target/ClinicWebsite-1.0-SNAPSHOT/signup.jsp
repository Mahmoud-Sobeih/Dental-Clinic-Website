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
<!--        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">-->
    </head>
    <body>
        <jsp:include page="homeHeader.jsp"/>
        
        <h1 class="text-center">${message}</h1>
        
        <br>
	<br>
	<div class="container">
		<div class="row">
			<div
				class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class="text-center">Sign Up</h1>
				<div class="card-body">
					<form th:action="confirm-sign-up" method="POST">
						<div class="form-group">
							<label> User Name </label> <input type="text"
								name="name" class="form-control"
								placeholder="Enter Your Name" />
						</div>

						<div class="form-group">
							<label> Phone </label> <input type="text"
								name="phone" class="form-control"
								placeholder="Enter Your Phone Number" />
						</div>
                                            
						<div class="form-group">
                                                    <label> Birthday </label> <input type="date"
								name="birthday" class="form-control"
								placeholder="Enter Your Birthday" />
						</div>
                                            
						<div class="form-group">
                                                    <label> Gender </label> 
                                                    <br>
                                                    <input type="radio"
								name="gender" class="form-check-input"
                                                                value="male" /><label class="form-check-label" for="male">Male</label>
                                                    <br>
                                                    <input type="radio"
								name="gender" class="form-check-input"
                                                                value="female" /><label class="form-check-label" for="male">Female</label>
                                                    
						</div>

						<div class="form-group">
							<label> Email </label> <input type="text" name="email"
                                                                class="form-control"
								placeholder="Enter Your Email" />
						</div>
                                            
						<div class="form-group">
                                                    <label> Password </label> <input type="password" name="password"
                                                                class="form-control"
								placeholder="Enter a Password" />
						</div>
                                            
						<div class="form-group">
                                                    <label> Confirm Password </label> <input type="password" name="confirmPassword"
                                                                class="form-control"
								placeholder="Re-enter The Password" />
						</div>

						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Sign Up</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
      
    </body>
</html>
