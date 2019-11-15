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
					Customer Registration
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
							<input class="input100" type="text" name="firstname" placeholder="First Name">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="lastname" placeholder="Last Name">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
					<h6 style="margin-left: 15px;">Date of Birth:</h6>
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="date" name="dob" placeholder="Date of Birth">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6" style="margin-top: 25px;">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="address" placeholder="address">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
						<div class="container">
							<h6>Gender:</h6>
							<h6><input type="radio" id="test1" name="gender" value="Male">
    							<label for="test1">Male</label>
  							</h6>
						  	<h6>
						    	<input type="radio" id="test2" name="gender" value="Female">
						    	<label for="test2">Female</label>
						  	</h6>
						</div>
					</div>
					<div class="col-md-6">
						<div class="container">
    						<h6>Marital Status:</h6>
  							<h6><input type="radio" id="test3" name="marital" value="Single">
    							<label for="test3">Single</label>
  							</h6>
							<h6>
								<input type="radio" id="test4" name="marital" value="Married">
								<label for="test4">Married</label>
							</h6>
							<h6>
							    <input type="radio" id="test5" name="marital" value="Divorcee">
							    <label for="test5">Divorcee</label>
							</h6>
						</div>
					</div>
				</div>

				
				<div class="row">
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="occupation" placeholder="Occupation">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="number" name="salary" placeholder="Salary">
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="email" name="emailid" placeholder="Email Id">
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
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="ssn" placeholder="Social Security Number">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="number" name="numsofchildren" placeholder="Number of Children">
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
					<input type="hidden" name="page" value="registercustomer">
					<button class="login100-form-btn" onclick="return checkPwd();">
						Register
					</button>
				</div>	
			</form>
			<% int type=-1;
				if(!(session.getAttribute("userType")==null))
					type=(Integer) session.getAttribute("userType");
				if(type==0){%>
					<a href="AdminHome.jsp"><i class="fa fa-arrow-left" style="margin-left: 210px; color: #4b2354;">&nbsp;Back</i></a>
				<%}
				else if(type==3){%>
				<a href="ManagerHome.jsp"><i class="fa fa-arrow-left" style="margin-left: 210px; color: #4b2354;">&nbsp;Back</i></a>
				<%}
				else{%>
					<a href="Register.jsp"><i class="fa fa-arrow-left" style="margin-left: 210px; color: #4b2354;">&nbsp;Back</i></a>
				<%}%>
			<!-- <br>
			<a href="Login.jsp" style="margin-left: 350px; text-decoration: underline; font-size: 17px;">Click here to go Login screen...</a> -->
			
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