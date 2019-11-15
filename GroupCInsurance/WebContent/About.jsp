<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">

<title>Surety Insurance</title>
	<link rel="icon" href="" type="image/png">
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
</li>
<li class="nav-item">
<form action="ControllerServlet" method="GET">
          	<input type="hidden" name="navigate" value="contact">
          	<input type="submit" value="Contact" class="nav-link" style="font-family: SourceSansPro-Regular;font-size: 18px;line-height: 1.7;
          	color: #4b2354 !important;font-weight: bold;text-transform: uppercase;background-color:#EEE8AA !important;">
          	</input>
 </form>
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
<li data-target= #carouselExampleIndicators " data-slide-to="0" class="active"></li>
<li data-target= #carouselExampleIndicators " data-slide-to="1"></li>
<li data-target= #carouselExampleIndicators " data-slide-to="2"></li>
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
<div class="container" align="center" style="margin-top: 30px;">
  <span class="login100-form-title p-b-37" style="padding-bottom: 0px;">
          ABOUT 
        </span>
        <hr>
<p> From quote to claim, Surety Insurance is working to help you make smarter, more efficient choices with your insurance.
Surety is a multiline insurance company and we're still growing! </p>

<p> Surety is a multiline insurance company that provides personal finance, business banking and wealth security to a multitude of clientele around the globe.
We offer a broad range of products across all product types in a wide range of countries and regions. 
The company focuses primarily on the North American market and has products available in the following categories: 
Life Insurance, Retirement Insurance, Life Planning, Estate Planning, Personal Property Insurance. </p>

</br>

<h5> 100% online </h5>
<h5> 100% how insurance should be </h5>

</br>

<p> Whether you're buying a new policy, need to update nominees or want to file a claim, we are here for you 365 days a 
year. </p>

<p> We encourage you to learn more about our insurance products and services to help determine whether 
or not you might be affected by a loss as soon as possible. </p>

<p> We have a dedicated team that is able to provide the utmost assistance as you navigate through the purchasing process. 
We are proud to offer customer service that is second to none.

We are not just another insurance company, but the best. Our products and services are available to clients all 
over the world. </p>

<p> To view or download an additional copy of the Policy, please contact us at any time by calling 1-866-800-7272 or 800 </p>

</br>
</br>
<form action="ControllerServlet" method="GET">
<input type="hidden" name="navigate" value="aboutlink">
<i class="fa fa-arrow-left" style=" color: #4b2354;">
<input type="submit" value="Back" style="margin-bottom: 30px; background-color: white !important; color: #4b2354;">
</input>
</i>



</form>
</div>


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