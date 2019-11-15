<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, java.sql.Connection, java.sql.ResultSet, java.sql.Statement, 
    java.sql.DriverManager, java.sql.*, oracle.jdbc.driver.*, oracle.jdbc.*"%>
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
<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target= #navbarResponsive " aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
          VIEW CLAIM
        </span>
        <hr>
<%String user = (String)session.getAttribute("userId");%>
      <div class="table100 ver5 m-b-110">

			<div class="table100-body js-pscroll">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column8">Sr. No</th>
                  <th class="cell100 column1">CERTIFICATE ID</th>
                  <th class="cell100 column1">POLICY ID</th>
                  <th class="cell100 column2">POLICY NAME</th>
                  <th class="cell100 column5">NOMINEE</th>
                  <th class="cell100 column6">TENURE</th>
                  <th class="cell100 column7">SUM ASSURED</th>
                  <th class="cell100 column8">POLICY STATUS</th>
                  <th class="cell100 column8">POLICY EXPIRY DATE</th>
                

                </tr>
              </thead>
              <tbody>
              
              
              <%!ResultSet rs = null;
              int nomId1 = 0;
              String na = "";%>
              <%try{
            	  Class.forName("oracle.jdbc.driver.OracleDriver");
            	  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:xe", 
            			  "system", "Admin@123");
            	  Statement statement = connection.createStatement() ;
            	  rs =statement.executeQuery("select * from policy_details where cust_id='"+user+"'");
            	  int count=0;
            	  String tenure = "";
            	  float sum = 0.0f;
            	  String status="";
            	  String date="";
            	  while(rs.next()){
            		  status=rs.getString("pol_status");
            		  date=rs.getString("exp_date");
            		  nomId1=rs.getInt("nom_id");
            	  %>
            	  <tr>
            		  <td class="cell100 column1"><%=++count %></td>
            		  <td class="cell100 column1"><%=rs.getInt(1) %></td>
              	  <td class="cell100 column2"><%=rs.getString(2) %></td>
              	  <%Statement statement1 = connection.createStatement() ; 
              	  ResultSet rs1 =statement1.executeQuery("select pol_name, tenure, sum_assured from policy where pol_id='"+rs.getString(2)+"'");
              	  while(rs1.next()){
              	 tenure=rs1.getString(2);
              	 sum=rs1.getFloat(3);
              	 %>
              	 <td class="cell100 column2"><%=rs1.getString(1) %></td>
              	 <%} 
              	Statement statement2 = connection.createStatement() ;
              	ResultSet rs21 =statement2.executeQuery("select nom_name from nominee where nom_id="+nomId1+" and cust_id='"+user+"'");
              	while(rs21.next()){
              		%>
                	  <td class="cell100 column2"><%=rs21.getString(1)%></td>
                	  <%
              	}
              	 %>
              	 <td class="cell100 column2"><%=tenure %></td>
              	  <td class="cell100 column2"><%=sum %></td>
              	  <td class="cell100 column2"><%=status %></td>
              	  <td class="cell100 column2"><%=date %></td>
                  </tr>
                  
              		  <%
            	  }
              	  connection.close();%>
               <% 
              
              }
                catch (Exception e) {
              	  // TODO Auto-generated catch block
              	  e.printStackTrace();
    				}%>
              </tbody>
            </table>
          </div>

		<form action="ControllerServlet" method="GET">
<input type="hidden" name="navigate" value="viewpolicycustlink">
<i class="fa fa-arrow-left" style=" color: #4b2354;">
<input type="submit" value="Back" style="margin-bottom: 30px; background-color: white !important; color: #4b2354;">
</input>
</i>



</form>	
		</div>
	</div>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<footer class="py-5">
<div class="container">
<p class="m-0 text-center">Copyright © Surety Insurance 2019 | Website by TCS ILP Team C &nbsp; &nbsp;

<a href="http://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://www.twitter.com/" class="fa fa-twitter"></a>
<a href="https://www.instagram.com/" class="fa fa-instagram"></a>
<a href="https://www.linkedin.com/" class="fa fa-linkedin"></a> </p>
</div>
<!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>


</html>