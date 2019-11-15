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
			<!-- <form action="ControllerServlet" method="GET" class="login100-form validate-form"> -->
				<span class="login100-form-title p-b-37">
					Register
				</span>
				<!-- <input type="hidden" name="navigate" value = "registerUser"> -->
				
				<div class="container-login100-form-btn">
				<form action="ControllerServlet" method="GET" class="login100-form validate-form">
				<input type="hidden" name="navigate" value = "registerUser">
					<div class="row">
						<div class="col-md-12">
							<button class="login100-form-btn">
								<input type="hidden" name="buttonType" value = "cust">
								AS A CUSTOMER
							</button>
						</div>
					</div>
					<!-- <div class="row">
						<div class="col-md-12">
							<button class="login100-form-btn">
								<a href="managerregistration.html">AS A MANAGER</a>
							</button>
						</div>
					</div> -->
					</form>
					<form action="ControllerServlet" method="GET" class="login100-form validate-form">
					<input type="hidden" name="navigate" value = "registerUser">
					<div class="row">
						<div class="col-md-12">
							<button class="login100-form-btn">
							<input type="hidden" name="buttonType" value = "agent">
								<!-- <a href="RegisterAgent.jsp">AS AN AGENT</a> -->
								AS AN AGENT
							</button>
						</div>
					</div>
					</form>
					<!-- <form action="ControllerServlet" method="GET" class="login100-form validate-form"> -->
					<a href="Login.jsp"><i class="fa fa-arrow-left" style="margin-left: 45px; color: #4b2354;">&nbsp;Back</i></a>
		
				</div>
			<!-- </form> -->

			
		</div>
		
	</div>
	<div class="container">
<p class="m-0 text-center" style="color: grey; font-weight: bold; padding-top:20px;">Copyright © Surety Insurance 2019 | Website by TCS ILP Team C&nbsp;<a href="http://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://www.twitter.com/" class="fa fa-twitter"></a>
<a href="https://www.instagram.com/" class="fa fa-instagram"></a>
<a href="https://www.linkedin.com/" class="fa fa-linkedin"></a></p>
</div>
	


	<div id="dropDownSelect1"></div>
	


</body>
</html>