<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gettin Hitched Contact Page</title>

    <!-- Bootstrap -->
    <link href="${contextPath}/resources/company/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/resources/company/css/font-awesome.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/company/css/animate.css">
	<link href="${contextPath}/resources/company/css/prettyPhoto.css" rel="stylesheet">
	<link href="${contextPath}/resources/company/css/style.css" rel="stylesheet" />	
    <!-- =======================================================
        Theme Name: Company
        Theme URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
  </head>
  <body>
	<header>		
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="navbar-brand">
							<a href="index.html"><h1><span>Gettin</span>hitched</h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="/">Home » </a></li>
								<li role="presentation"><a href="about">About Us » </a></li>
								<li role="presentation"><a href="services">Services</a></li>								
								<li role="presentation"><a href="signups">Sign up » </a></li>
								<li role="presentation"><a href="login">Login » </a></li>
								<li role="presentation"><a href="contact" class="active">Contact Us » </a></li>						
							</ul>
						</div>
					</div>						
				</div>
			</div>	
		</nav>		
	</header>
	
	<div id="breadcrumb">
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="/">Home</a></li>
				<li>Contact Us</li>			
			</div>		
		</div>	
	</div>
	
	<div class="map">
		<div id="google-map" data-latitude="38.6270" data-longitude="-90.1994"></div>
		<!-- <div id="google-map" data-latitude="40.713732" data-longitude="-74.0092704"></div> -->
	</div>
				
	<section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2>Drop Us A Message</h2>
                <p>Got Questions or comments? We would love to hear from you.</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <div class="col-md-6 col-md-offset-3">
                    <div id="sendmessage">Your message has been sent. Thank you!</div>
                    <div id="errormessage"></div>

					<form id="emails" method="post" action="sendEmail">
						<div class="contact-form">
							<div class="container">

                            <div class="form-group">
                                    <input type="emailAddress" class="form-control" name="emailAddress" id="emailAddress" placeholder="Your Email" data-rule="emailAddress" data-msg="Please enter a valid email" />
                                    <div class="text-danger">${emailerror}></div>
                            </div>
                            <div class="form-group">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="text-danger">${sbjerror}></div>
                            </div>
                            <div class="form-group">
                                    <textarea class="form-control" name="msg" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                    <div class="text-danger">${msgerror}></div>

						</div>
					</form>

                </div>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
	
	<footer>
		<div class="footer">
			<div class="container">
				<div class="social-icon">
					<div class="col-md-4">
						<ul class="social-network">
							<li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
						</ul>	
					</div>
				</div>
				
				<div class="col-md-4 col-md-offset-4">
					<div class="copyright">
						&copy; Company Theme. All Rights Reserved.
                        <div class="credits">
                            <!-- 
                                All the links in the footer should remain intact. 
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Company
                            -->
                            <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
					</div>
				</div>						
			</div>
			<div class="pull-right">
				<a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
			</div>
		</div>
	</footer>
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${contextPath}/resources/company/js/jquery-2.1.1.min.js"></script>	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${contextPath}/resources/company/js/bootstrap.min.js"></script>
	<script src="${contextPath}/resources/company/js/jquery.prettyPhoto.js"></script>
    <script src="${contextPath}/resources/company/js/jquery.isotope.min.js"></script>  
	<script src="${contextPath}/resources/company/js/wow.min.js"></script>
    <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="${contextPath}/resources/company/js/functions.js"></script>
    <script src="${contextPath}/resources/company/contactform/contactform.js"></script>
    
</body>
</html>


<%-- <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    
  </head>
  <body>
	<header style="background-color: #DAF7A6;">		
		<div class="navigation">
				<div class="container">			
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>						
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li ><a href="/">Home</a></li>
								<li><a href="about">About Us</a></li>																
								<li class="active"><a href="contact">Contact Us</a></li>	
								<li><a href="signups">Sign up</a></li>
								<li><a href="services">Look-Ups</a></li>
								<li><a href="login">login</a></li>		
							</ul>
						</div>
					</div>						
				</div>
			</div>	
				
	</header>
   
	<div class="container">	
			<div class="container">
		     <div class="col-lg-12">
				<div class="form-group"><br>
				<span class="text-success"><h4>${success}</h4></span>
				<div class="text-center">
				<div class="text-primary">${message}</div>
				</div>
				
				</div>
			</div>
			</div>
			</div>
<form id="emails" method="post" action="sendEmail">			
		<div class="contact-form">
		<div class="container">	
								
			<div class="col-md-4">
				<div class="form-group">
					<input type="text" class="form-control"  value="${em}" id="emailAddress" name="emailAddress" placeholder="email Address">
					<span class="text-danger">${emailrror}</span>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<input type="text" class="form-control" value="${sb}" id="subject" name="subject" placeholder="subject">
			    	<span class="text-danger">${sbjrror}</span>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="col-lg-12">				
				<textarea class="form-control" id="msg" name="msg"  rows="5" placeholder="message"></textarea>
				<p class="text-danger">${msgerror}</p>
				
				<div class="form-group">
					<button type="submit" name="submit" class="btn btn-primary" >Submit Message</button>
					<a href="contact" class="btn btn-primary" role="button">Reset</a>
				</div>
			</div>
		</div>		
	</div>
</form>	
<footer  style="background-color: #ff6600; position: fixed; bottom:0;width:100%;" >						
				<div class="col-md-5 col-md-offset-5">
				<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li ><a href="/">Home</a></li>
								<li><a href="about">About Us</a></li>																
								<li><a href="contact">Contact Us</a></li>	
						        
							</ul>
							
						</div>
						</div>
		
	</footer>	
   
  </body>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
</html>


 --%>