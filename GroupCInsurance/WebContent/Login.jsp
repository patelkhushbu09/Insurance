<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
    <!DOCTYPE html>
<html lang="en">
<head>
	<title>Surety Insurance</title>
	<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link href="css/modern-business.css" rel="stylesheet">
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg fixed-top" style="background-color: #E6E9EE !important;">
		<div class="container">
   			<i class="fas fa-seedling fa-2x logo" ></i>
			<a class="navbar-brand" href="index.html"><h3>Surety Insurance.</h3></a>
			<button class="navbar-toggler navbar-toggler-right custom-toggler" type="button" data-toggle="collapse" data-target= #navbarResponsive " aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
			</div>
		</div>
	</nav>
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form action="ControllerServlet" method="GET" class="login100-form validate-form">
				<span class="login100-form-title p-b-37">
					Sign In
				</span>
				<% String msg=(String) request.getAttribute("errorMessage");
				if(!(msg==null)){%>
				<p align="center" style="color: red; font-weight: bold; font-size: 18px;"> <%=msg %></p>
				<%;} %>
						
				<div class="wrap-input100 validate-input m-b-20">
					<input class="input100" type="text" name="userId" placeholder="User Id">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25">
					<input class="input100" type="password" name="password" placeholder="Password">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn" align="center">
					<input type="hidden" name="navigate" value = "navigate">
					<button class="login100-form-btn">
						Sign In
					</button>
				</div>

				<div class="text-center">
					<h4 style="font-size: 1rem !important;">Not yet Registered? <a href="Register.jsp" class="txt2 hov1">
						Sign Up
					</a></h4>
					
				</div>
			</form>

			
		</div>
		
	</div>
	<div class="container">
			<p class="m-0 text-center" style="color: grey; font-weight: bold; padding-top:20px;">Copyright © Surety Insurance 2019 | Website by TCS ILP Team C&nbsp;<a href="http://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://www.twitter.com/" class="fa fa-twitter"></a>
<a href="https://www.instagram.com/" class="fa fa-instagram"></a>
<a href="https://www.linkedin.com/" class="fa fa-linkedin"></a></p>
		</div>
	
	
</div>
	


</body>
</html>