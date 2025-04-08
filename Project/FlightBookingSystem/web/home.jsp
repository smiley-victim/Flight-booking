<!DOCTYPE html>


<html lang="en">

 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="images/favicon.ico">
    <title>Flight Booking System</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	
    <!-- Custom styles for this template -->
    <link href="./assets/css/carousel.css" rel="stylesheet">
  </head>

  
  <body style="background-color: #f8f9fa;">

  
	<header>
	<!--Navigation Bar-->
    <nav class="navbar navbar-expand-md navbar-dark font-weight-bold nav justify-content-center nav-justified" style="background-color: #2c3e50; border-bottom: 2px solid #34495e;">
      <a class="navbar-brand" href="home.jsp">
        Flight Booking System
      </a>
	  
	 <!-- When navigation bar is collapsed"-->
	 <div class="collapse navbar-collapse" style="display:inline!important;" id="navbarCollapse">
        <ul class="navbar-nav mr-auto nav nav-justified">
          <li class="nav-item">
            <a class="nav-link" href="home.jsp">Home<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Login">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="BookFlight">Book Flight</a>
          </li>
        </ul>
      </div>
    </nav>
	</header>
	
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1>Welcome to Flight Booking System</h1>
				<p class="lead">Book your flights with ease and convenience</p>
			</div>
		</div>
	</div>

                <jsp:include page="Templates/Footer.jsp"/>
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" viewBox="0 0 500 500" preserveAspectRatio="none" style="display: none; visibility: hidden; position: absolute; top: -100%; left: -100%;"><defs><style type="text/css"></style></defs><text x="0" y="25" style="font-weight:bold;font-size:25pt;font-family:Arial, Helvetica, Open Sans, sans-serif">500x500</text></svg>
</body>
</html>