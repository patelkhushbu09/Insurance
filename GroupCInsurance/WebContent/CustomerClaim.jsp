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
	
	<script src="js/validate.js"></script>
	
</head>
<body>
	
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
  
  
<div class="container" align="center" style="margin-top: 30px;">
  <span class="login100-form-title p-b-37" style="padding-bottom: 0px;">
			<form action="ControllerServlet" method="POST" class="login100-form validate-form">
			<input type="hidden" name="page" value="custclaimcust">
				<span class="login100-form-title p-b-37">
					File a Claim
				</span>
				<%String user = (String)session.getAttribute("userId");
				String name="";%>
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
						<h6 style="margin-left: 15px; text-align: left;">Select Policy: </h6>
						<div class="wrap-input100 validate-input m-b-20">
							<!-- <input class="input100" type="text" name="mgr_policy" placeholder="Policy"> -->
							<select name="listCertificate" id="listCertificate" onchange="getSelectedValue()" style="height: 60px; border: none; width: 330px; margin-left: -
							15px; font-size: 20px !important;">
							<option value=""></option>
						<%!ResultSet rs = null; %>
              <%try{
            	  String custId=(String) session.getAttribute("userId");
            	  Class.forName("oracle.jdbc.driver.OracleDriver");
            	  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:xe", 
            			  "system", "Admin@123");
            	  Statement statement = connection.createStatement() ;
            	  rs =statement.executeQuery("select certi_id from policy_details where cust_id='"+user+"' and pol_status='Accepted'");
            	  while(rs.next()){%>
							<option style="color:black;" value="<%=rs.getInt(1) %>"><%=rs.getInt(1) %></option>
            	  <%
            			}
              	  connection.close();%>
               <% 
              }
                catch (Exception e) {
              	  // TODO Auto-generated catch block
              	  e.printStackTrace();
    				}%>	
							</select>
							<%
        name=request.getParameter("certiId");
    %>
							<span class="focus-input100"></span>
							<input type="hidden" name="certiId1" value="<%=name%>">
						</div>
					</div>
					<div class="col-md-6" style="margin-top: 25px;">
						<div class="wrap-input100 validate-input m-b-20">
						<%if(name!=null){
						try{
            	  Class.forName("oracle.jdbc.driver.OracleDriver");
            	  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:xe", 
            			  "system", "Admin@123");
            	  Statement statement = connection.createStatement() ;
            	  rs =statement.executeQuery("select nom_name from nominee where nom_id = (select nom_id from policy_details where certi_id="+Integer.parseInt(name)+")");
            	  while(rs.next()){%>
							<input class="input100" type="text" name="nominee" value="<%=rs.getString(1) %>" id="nominee" placeholder="nominee">
            	  <%
            			}
              	  connection.close();%>
               <% 
              }
                catch (Exception e) {
              	  // TODO Auto-generated catch block
              	  e.printStackTrace();
    				}%>
						<% }
						else{%>
							
						<input class="input100" type="text" name="nominee" id="nominee" placeholder="nominee">
							
						<%}%>
							<span class="focus-input100"></span>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<input class="input100" type="text" name="incdate" placeholder="Incident Date (mm/dd/yyyy)">
							<span class="focus-input100"></span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="wrap-input100 validate-input m-b-20">
							<%if(name!=null){
						try{
            	  Class.forName("oracle.jdbc.driver.OracleDriver");
            	  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:xe", 
            			  "system", "Admin@123");
            	  Statement statement = connection.createStatement() ;
            	  rs =statement.executeQuery("select exp_date from policy_details where certi_id="+Integer.parseInt(name)+"");
            	  while(rs.next()){%>
							<input class="input100" type="text" name="expdate" id="expdate" value="<%=rs.getString(1) %>" >
            	  <%
            			break;}
              	  connection.close();%>
               <% 
              }
                catch (Exception e) {
              	  // TODO Auto-generated catch block
              	  e.printStackTrace();
    				}%>
						<% }
						else{%>
							
						<input class="input100" type="text" name="expdate" id="expdate" placeholder="Expiry Date">
							
						<%}%>
							
							<!-- <input class="input100" type="text" name="expdate" id="expdate" placeholder="Expiry Date"> -->
							<span class="focus-input100"></span>
						</div>
					</div>
				</div>


<div class="row">
					<div class="col-md-6">
						<h6 style="margin-left: 15px; text-align: left;">Claim Amount:</h6>
						<div class="wrap-input100 validate-input m-b-20">
							<!-- <input class="input100" type="text" name="mgr_zone" placeholder="Zone"> -->
							<input class="input100" type="number" name="camount" id="camount" placeholder="Claim Amount">

							<span class="focus-input100"></span>
						</div>

					</div>
					
				</div>


				<div class="row">
					<div class="col-md-6">
						<h6 style="margin-left: 15px; text-align: left;">Reason for Claim:</h6>
						<div class="wrap-input100 validate-input m-b-20">
							<!-- <input class="input100" type="text" name="mgr_zone" placeholder="Zone"> -->
							<select name="reasonlist" id="reasonlist" style="height: 60px; border: none; width: 330px; margin-left: 15px; font-size: 20px !important;" onchange="test(this.value)">
								<option value=""></option>
								<option value="A">Death of Policy Holder</option>

								<option value="B">Policy Expired</option>
								<option value="C">Intermittent Claim</option>

							
							</select>

							<span class="focus-input100"></span>
						</div>

					</div>
					<div class="col-md-6" style="margin-top: 40px;">
					<p id="new"></p>
				</div>
				</div>

				

				
		
	

				<div class="container-login100-form-btn" align="center">
					<button class="login100-form-btn">
						Submit
					</button>
				</div>	
			</form>
			<p id="p1" style="color:black;"><p1>
			<a href="CustomerHome.jsp"><i class="fa fa-arrow-left" style="color: #4b2354;">&nbsp;Back</i></a>	
		</div>
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

<script>
function test(expression){
switch(expression) {
case "A":
document.getElementById("new").innerHTML = "<input type="+"file"+" name="+"D"+"/>";
break;
// case "B":
// break;
case "C":
document.getElementById("new").innerHTML = "<textarea cols = " + "30"+ " name=" + "I"+"></textarea>";
break;
break;
default:
// code block
}
}
</script>

</body>
</html>