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

<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg fixed-top">
<div class="container">
<i class="fas fa-seedling fa-2x logo" ></i>
<a class="navbar-brand" href="index.html"><h3>Surety Insurance.</h3></a>
<button class="navbar-toggler navbar-toggler-right custom-toggler" type="button" data-toggle="collapse" data-target= #navbarResponsive " aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarResponsive">
<ul class="navbar-nav ml-auto">
<li class="nav-item">
	<a class="nav-link">Hi, 
		<%out.println(session.getAttribute("userId"));
		  //session.removeAttribute("userid");
		  %>
	</a>
</li>
<li class="nav-item">
<form action="ControllerServlet" method="GET">
          	<input type="hidden" name="navigate" value="about">
          	<input type="submit" value="About" class="nav-link" style="font-family: SourceSansPro-Regular;font-size: 18px;line-height: 1.7;
          	color: #4b2354 !important;font-weight: bold;text-transform: uppercase;background-color:#EEE8AA !important;">
          	</input>
 </form>
<!-- <a class="nav-link" href="about.html">About</a> -->
</li>
<li class="nav-item">
<!-- <a class="nav-link" href="contact.html">Contact</a> -->
<form action="ControllerServlet" method="GET">
          	<input type="hidden" name="navigate" value="contact">
          	<input type="submit" value="Contact" class="nav-link" style="font-family: SourceSansPro-Regular;font-size: 18px;line-height: 1.7;
          	color: #4b2354 !important;font-weight: bold;text-transform: uppercase;background-color:#EEE8AA !important;">
          	</input>
 </form>
</li>
<li class="nav-item">
<!-- <a class="nav-link" href="contact.html">Logout</a> -->
<form action="ControllerServlet" method="GET">
          	<input type="hidden" name="navigate" value="logout">
          	<input type="submit" value="Logout" class="nav-link" style="font-family: SourceSansPro-Regular;font-size: 18px;line-height: 1.7;
          	color: #4b2354 !important;font-weight: bold;text-transform: uppercase;background-color:#EEE8AA !important;">
          	</input>
 </form>
</li>
</ul>
</div>
</div>
</nav>

 <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
<div class="carousel-item active" style="background-image: url('images/Insurance111.jpg')">

</div>
<!-- Slide Two - Set the background image for this slide in the line below -->
<div class="carousel-item" style="background-image: url('images/lifeinsurance-banner.jpg')">

</div>
<!-- Slide Three - Set the background image for this slide in the line belo -->
<div class="carousel-item" style="background-image: url('images/Life-insurance-banner-img.jpg')">

</div>
</div>
<a class="carousel-control-prev" href= #carouselExampleIndicators " role="button" data-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href= #carouselExampleIndicators " role="button" data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>
</header>

<!-- Page Content -->
<div class="container" align="center">

<h2 align="center" class="my-4">ADMIN SERVICES</h2>
<hr>

<!-- Marketing Icons Section -->
<div class="row">
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header"> Pending Activities </h4>
      <div class="card-body">
        <p class="card-text"> Approve/reject all the users and claims. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
            <button class="login100-form-btn symbolcolor">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </div>
      </div>
    </div>
  </div>


  
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Manage Policies</h4>
      <div class="card-body">
        <p class="card-text"> One stop shop for all your policy details. You can modify policy details. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
           <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="policymanageadmin">
            <button class="login100-form-btn symbolcolor" name="">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </form>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Add Policies</h4>
      <div class="card-body">
        <p class="card-text"> Here you can add new policies in the system. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
        <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="addpolicyadminhome">
            <button class="login100-form-btn symbolcolor" name="">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </form>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="row">
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header"> Manage Claims </h4>
      <div class="card-body">
        <p class="card-text"> Quick access to real-time updates of your claims. You can file and track your claim. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
            <button class="login100-form-btn symbolcolor">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </div>
      </div>
    </div>
  </div>
  
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Map Agent to a Customer.</h4>
      <div class="card-body">
        <p class="card-text"> To map an Agent to a Customer, all you need to do is enter customer ID, Agent ID and Policy ID. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
            <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="mapctaadminhome">
            <button class="login100-form-btn symbolcolor" name="">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </form>
        </div>
      </div>
    </div>
  </div>
   <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Generate Policy Certificates</h4>
      <div class="card-body">
        <p class="card-text"> Generate policy certificates and view policy details. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
            <button class="login100-form-btn symbolcolor">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">View Agents</h4>
      <div class="card-body">
        <p class="card-text"> It's a one step process. To find the nearest Agent , all you need to do is enter your area, zone and state. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
            <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="viewagentAdmin">
            <button class="login100-form-btn symbolcolor" name="">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </form>
        </div>
      </div>
    </div>
  </div>
   <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Generate Report</h4>
      <div class="card-body">
        <p class="card-text"> Generate Monthly Reports, Agent wise number of policies sold and pending vs approved vs rejected policies on a monthly basis. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
            <button class="login100-form-btn symbolcolor">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Add Managers</h4>
      <div class="card-body">
        <p class="card-text"> Here you can register new manager in the system. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
        <form action="ControllerServlet" method="GET">
        <input type="hidden" name="navigate" value="registerUserAdmin">
        <input type="hidden" name="buttonType" value = "manager">
            <button class="login100-form-btn symbolcolor">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
            </form>
        </div>
      </div>
    </div>
  </div>
	 <div class="col-lg-4 mb-4">
    <div class="card h-100">
      <h4 class="card-header">Add Customers</h4>
      <div class="card-body">
        <p class="card-text"> Here you can register new customer in the system. </p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
        <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="registerUserAdmin">
        	<input type="hidden" name="buttonType" value = "cust">
            <button class="login100-form-btn symbolcolor" name="">
                <i class="fa fa-angle-double-right  fa-2x"></i>
            </button>
        </form>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  
  
</div>


<div class="row">
  
 



  
</div>
<!-- /.row -->
</div>
<!-- /.container -->

<footer class="py-5">
<div class="container">
<p class="m-0 text-center">Copyright © Surety Insurance 2019 | Website by TCS ILP Team C&nbsp;<a href="http://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://www.twitter.com/" class="fa fa-twitter"></a>
<a href="https://www.instagram.com/" class="fa fa-instagram"></a>
<a href="https://www.linkedin.com/" class="fa fa-linkedin"></a></p>
</div>
<!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>