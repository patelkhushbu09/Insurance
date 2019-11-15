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
	
<!-- 	<link rel="stylesheet" type="text/css" href="css/util.css"> -->

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg fixed-top">
    <div class="container">
    <i class="fas fa-seedling fa-2x logo" ></i>
      <a class="navbar-brand" href="index.html"><h3>Surety Insurance.</h3></a>
      <button class="navbar-toggler navbar-toggler-right custom-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link">Hi, 
            <%out.println(session.getAttribute("userId"));
		  //session.removeAttribute("userid");
		  %></a>
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
          	 <form action="ControllerServlet" method="GET">
          	<input type="hidden" name="navigate" value="contact">
          	<input type="submit" value="Contact" class="nav-link" style="font-family: SourceSansPro-Regular;font-size: 18px;line-height: 1.7;
          	color: #4b2354 !important;font-weight: bold;text-transform: uppercase;background-color:#EEE8AA !important;">
          	</input>
          </form>
            <!-- <a class="nav-link" href="Register.jsp">Contact</a>-->
          </li>
          <li class="nav-item">
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


    <h2 align="center" class="my-4">CUSTOMER SERVICES</h2>
    <hr>

    <!-- Marketing Icons Section -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Find a Surety Agent Near You</h4>
          <div class="card-body">
            <p class="card-text"> It's a one step process. To find the nearest Agent , all you need to do is enter your area, zone and state. </p>
          </div>
          <div class="card-footer">
            <div class="container-login100-form-btn" align="center">
				<form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="viewagentCustomer">
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
          <h4 class="card-header">Manage Policies</h4>
          <div class="card-body">
            <p class="card-text"> One stop shop for all your policy details. You can update policy details, nominee details in one click. </p>
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
          <h4 class="card-header"> Buying a Policy</h4>
          <div class="card-body">
            <p class="card-text"> Get a personalized quote on your policy. We have policies for all your needs. </p>
          </div>
          <div class="card-footer">
            <div class="container-login100-form-btn" align="center">
				 <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="buypolicycust">
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
				<form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="manageclaimcust">
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
          <h4 class="card-header">Billing and Payment</h4>
          <div class="card-body">
            <p class="card-text"> We provide the best prices for all policies with a secure payment platform. Find all your receipts and payment history here. </p>
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
      <h4 class="card-header">Add Nominees</h4>
      <div class="card-body">
        <p class="card-text"> Add new nominees and update existing nominees.</p>
      </div>
      <div class="card-footer">
        <div class="container-login100-form-btn" align="center">
         <form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="addnomineecusthome">
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
          <h4 class="card-header"> View Policies </h4>
          <div class="card-body">
            <p class="card-text"> Quick access to view your bought policies. </p>
          </div>
          <div class="card-footer">
            <div class="container-login100-form-btn" align="center">
				<form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="viewpolicycust">
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
          <h4 class="card-header"> View Claims </h4>
          <div class="card-body">
            <p class="card-text"> Quick access to view your claims. </p>
          </div>
          <div class="card-footer">
            <div class="container-login100-form-btn" align="center">
				<form action="ControllerServlet" method="GET">
        	<input type="hidden" name="navigate" value="viewclaimcust">
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
          <h4 class="card-header">Update Profile</h4>
          <div class="card-body">
            <p class="card-text"> Keep your profile up to date with our application </p>
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
      
      </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->

  <footer class="py-5">
<div class="container">
<p class="m-0 text-center">Copyright � Surety Insurance 2019 | Website by TCS ILP Team C&nbsp;<a href="http://www.facebook.com/" class="fa fa-facebook"></a>
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
