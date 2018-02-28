<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	
	<spring:url value="/css/login.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
	
	
	<!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">


</head>
<body>

	 <div class="brand">
	 Bus Pass System
	</div>
        
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="#">Buss Pass System</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">About </a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact </a>
                    </li>
                    <li>
                        <a href="#">Feedback </a>
                    </li>
                     <li>
                        <a href="logout">Log Out </a>
                    </li>
					
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                <hr>
					 <h2 class="intro-text text-center"><b>welcome <%=session.getAttribute("username") %></b></h2>
                                         <hr>
					 <div>
								<ul class="nav nav-tabs">
								  <li class="dropdown">
								    <a class="dropdown-toggle" data-toggle="dropdown" href="applypass">Apply Pass
								    <span class="caret"></span></a>
								    <ul class="dropdown-menu">
								      <li><a href="applypass">Apply New Pass</a></li>
								      <li><a href="uploaddoc">Upload Documents</a></li>
								      <li><a href="makepayment">Make Payment</a></li> 
								    </ul>
								  </li>
								  <li ><a href="updatepass">Update Pass Details</a></li>
								 <li class="dropdown">
								    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pass Status
								    <span class="caret"></span></a>
								    <ul class="dropdown-menu">
								      <li><a href="#">Renew Pass</a></li>
								      <li><a href="#">Cancel Pass</a></li>
								      <li><a href="#">Duplicate Pass</a></li> 
								    </ul>
								  </li>
								  <li><a href="#">Get Pass Print</a></li>
								  <li><a href="manageuserprofile">Manage Profile</a></li>
								  <li><a href="locatebus">Locate Bus on Map</a></li>
								</ul>
					</div>
                
                </div>
            </div>
        </div>

       
        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
				 <p class="text-left" style="color:red;"> ${error}</p>
				<img class="img-responsive img-border img-left" src="/images/userLogo.png" alt="userlogo">
                </div>
        	</div>
	   </div>
	   <div class="row">
            <div class="box">
            
                <div class="col-lg-12 text-center">
                
					<h2 class="intro-text text-left"><b>Vision</b></h2>                      
                    <p>
						<ul class="news">
						<li>Our vision is to create academic excellence and to make world class engineers for socio-economic upliftment of rural India.</li>
						</ul>
					   </p>
                
					<h2 class="intro-text text-left"><b>Mission</b></h2>                      
                    <p>
						<ul class="news">
						<li>Our mission is to make use of Engineering & Technology the principal instruments of economic development to improve the quality of life of people through Education, Training and Research.</li>
						<li>We are committed to the development of technical human resources towards socio economic growth of rural India for global competitiveness..</li>
						</ul>
					   </p>        
				
                </div>
           </div>
        </div>
	
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                   
					<p>Copyright &copy; Bus Pass System 2018</p>
                </div>
            </div>
        </div>
    </footer>



	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>