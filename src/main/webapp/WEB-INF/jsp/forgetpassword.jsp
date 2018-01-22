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
                
                
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				    <li data-target="#myCarousel" data-slide-to="1"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner">
				    
				    <div class="item active">
				      <img src="/images/coe.jpg" alt="COE" style="height:60%;width:100%;">
				    </div>
				
				    <div class="item">
				      <img src="/images/SanjivaniAcademy.jpg" alt="Academy" style="width:100%;">
				    </div>
				
				    
				  </div>
				
				  <!-- Left and right controls -->
				  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#myCarousel" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>	        

				    
                </div>
            </div>
        </div>

        <div class="row">
            <div class="box">
                <div class="col-lg-4">                 
					<img class="img-responsive img-border img-left" src="/images/SanjivaniLogo.jpg" alt="sanjivaniLogo">                    
				</div>
				<div class="col-lg-8">
				<h3 class="brand-caption2 text-center">Forgot Password:</h3>
						<div class="login">
						  <form class="login-form" action="fromforgotpassword">
						  
						    <div class="input-group input-group-lg">
						       <div class="input-group-addon"><span class="fa fa-lg fa-envelope"/></div>
						       <input type="email" class="form-control" name="email" placeholder="Email" required tabindex="1"/>
						    </div>
						    <hr>
						      <p style="color:red;"> ${error}</p>
							<button type="submit" class="btn btn-primary ">Get My Password</button>			        
						  </form>
					</div>
				</div>
            </div>
        </div>

        <div class="row">
            <div class="box">
             <p class="brand-caption2">Our Management</p>
                <div class="col-lg-3">
                 	<img class="img-responsive img-border img-left" src="/images/Shankarrao-Genuji-Kolhe.jpg" alt="">	  
					<p class="intro-text text-left"> Shri Shankarrao G. Kolhe</p>
					<p class="intro-text text-left"> Chairman</p>
                </div>
                 <div class="col-lg-3">
                 	<img class="img-responsive img-border img-left" src="/images/Nitinrao-kolhe.jpg" alt="">	  
					<p class="intro-text text-left"> Shri Nitinrao S. Kolhe</p>
					<p class="intro-text text-left"> Executive Trustee</p>
                </div>
                 <div class="col-lg-3">
                 	<img class="img-responsive img-border img-left" src="/images/Amit-kolhe.jpg" alt="">	  
					<p class="intro-text text-left"> Shri Amit N. Kolhe</p>
					<p class="intro-text text-left"> Managing Director</p>
                </div>
                 <div class="col-lg-3">
                 	<img class="img-responsive img-border img-left" src="/images/Principal.jpg" alt="">	  
					<p class="intro-text text-left"> Dr. D.N.Kyatanavar</p>
					<p class="intro-text text-left"> Principal</p>
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