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
	<script src="js/validate.js"></script>
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
			<form action="ControllerServlet" method="POST" class="login100-form validate-form">
				<span class="login100-form-title p-b-37">
					Manager Registration
				</span>
				<% String successMsg=(String) request.getAttribute("successMessage");
				String errorMsg = (String) request.getAttribute("errorMessage");
				if(!(successMsg==null)){%>
					<p align="center" style="color: #4b2354; font-weight: bold; font-size: 18px;"> <%=successMsg %></p>
				<%} 
				if(!(errorMsg==null)){%>
					<p align="center" style="color: red; font-weight: bold; font-size: 18px;"> <%=errorMsg %></p>
				<%}%>
				<div class="row">
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="name" placeholder="Name">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
					<h6 style="margin-left: 15px;">Date of Birth:</h6>
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="date" name="dob" placeholder="Date of Birth" value="DOB">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
					<h6 style="margin-left: 15px;">State:</h6>
						<div class="wrap-input100 validate-input m-b-20">
							<select id="state" name="state" style="height: 60px; border: none; width: 200px; margin-left: 15px;"><option value="---">---</option><option value="Alabama">Alabama</option><option value="Alaska">Alaska</option><option value="Arizona">Arizona</option><option value="Arkansas">Arkansas</option><option value="California">California</option><option value="Colorado">Colorado</option><option value="Connecticut">Connecticut</option><option value="Delaware">Delaware</option><option value="District of Columbia">District of Columbia</option><option value="Florida">Florida</option><option value="Georgia">Georgia</option><option value="Guam">Guam</option><option value="Hawaii">Hawaii</option><option value="Idaho">Idaho</option><option value="Illinois">Illinois</option><option value="Indiana">Indiana</option><option value="Iowa">Iowa</option><option value="Kansas">Kansas</option><option value="Kentucky">Kentucky</option><option value="Louisiana">Louisiana</option><option value="Maine">Maine</option><option value="Maryland">Maryland</option><option value="Massachusetts">Massachusetts</option><option value="Michigan">Michigan</option><option value="Minnesota">Minnesota</option><option value="Mississippi">Mississippi</option><option value="Missouri">Missouri</option><option value="Montana">Montana</option><option value="Nebraska">Nebraska</option><option value="Nevada">Nevada</option><option value="New Hampshire">New Hampshire</option><option value="New Jersey">New Jersey</option><option value="New Mexico">New Mexico</option><option value="New York">New York</option><option value="North Carolina">North Carolina</option><option value="North Dakota">North Dakota</option><option value="Northern Marianas Islands">Northern Marianas Islands</option><option value="Ohio">Ohio</option><option value="Oklahoma">Oklahoma</option><option value="Oregon">Oregon</option><option value="Pennsylvania">Pennsylvania</option><option value="Puerto Rico">Puerto Rico</option><option value="Rhode Island">Rhode Island</option><option value="South Carolina">South Carolina</option><option value="South Dakota">South Dakota</option><option value="Tennessee">Tennessee</option><option value="Texas">Texas</option><option value="Utah">Utah</option><option value="Vermont">Vermont</option><option value="Virginia">Virginia</option><option value="Virgin Islands">Virgin Islands</option><option value="Washington">Washington</option><option value="West Virginia">West Virginia</option><option value="Wisconsin">Wisconsin</option><option value="Wyoming">Wyoming</option></select>
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
					<h6 style="margin-left: 15px;">Zone:</h6>
						<div class="wrap-input100 validate-input m-b-20">
							<select id="zone" name="zone" style="height: 60px; border: none; width: 200px; margin-left: 15px;"><option value="---">---</option><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select>
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6" style="margin-top: 25px;">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="designation" placeholder="Designation">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>

				
				<div class="row">
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="emailid" placeholder="Email">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="number" name="contactnumber" placeholder="Contact Number">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>
				
				
				<div class="row">
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-25">
							<input class="input100" type="password" id="password" name="password" placeholder="Password">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-25" id="changeBorder">
							<input class="input100" type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>

				<div class="container-login100-form-btn" align="center">
				<input type="hidden" name="page" value="registermanager">
					<button class="login100-form-btn" onclick="return checkPwd();">
						Register
					</button>
				</div>	
			</form>
			<a href="AdminHome.jsp"><i class="fa fa-arrow-left" style="margin-left: 210px; color: #4b2354;">&nbsp;Back</i></a>
		</div>
		<div class="container" style="margin-top: 30px;">
<p class="m-0 text-center">Copyright © Surety Insurance 2019 | Website by TCS ILP Team C&nbsp;<a href="http://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://www.twitter.com/" class="fa fa-twitter"></a>
<a href="https://www.instagram.com/" class="fa fa-instagram"></a>
<a href="https://www.linkedin.com/" class="fa fa-linkedin"></a></p>
</div>
	</div>

</body>
</html>