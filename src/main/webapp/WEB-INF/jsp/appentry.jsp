<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.io.*,java.util.*" %>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gettin Hitched - Application Entry Page</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

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
							<a href="/"><h1><span>Gettin</span> Hitched</h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="/">Home » </a></li>
								<li role="presentation"><a href="about">About Us » </a></li>
								<li role="presentation"><a href="services">Services</a></li>								
								<li role="presentation"><a href="appentry" class="active">App Entry » </a></li>
								<li role="presentation"><a href="contact">Contact Us » </a></li>						
							</ul>
						</div>
					</div>						
				</div>
			</div>	
		</nav>		
	</header>
	
	<div id="breadcrumb" >
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="/">Home</a></li>
				<li>Application Entry</li>			
			</div>		
		</div>	
	</div>
	
	<div class="container">
	<h2 style="color: #FF0000">${error} </h2>
		<div class="col-lg-8 col-lg-offset-3">
			<div>
			
			<!-- <h1 style="color: #008000">Gettin' Hitched Application Entry</h1> -->
			<h1 style="color: #fd680e">Gettin' Hitched Application Entry</h1>
			    <c:if test="${empty error}">
			    
				<c:if test="${empty message}">
				
				</c:if>
				<h2>				
				<c:if test="${not empty message}">
				<h1 style="color: #fd680e">Gettin' Hitched App Entry Success</h1>
				<div class="text-success">
				<h2 style="color: #fd680e">${message} <a href="appentry">App Entry</a></h2>
				</div>						
				</c:if>				
				</h2>	
				<h2 style="color: #FF0000">${error} </h2>
				</c:if>			
			</div>
		</div>

		<div>
		     
		</div>
	</div>
	
 	<form id="appentry" method="post"  action="appentry">                    
      <div class="contact-form">
              <div class="container">
                                  
                      <div class="col-md-5">
                           <div class="form-group">
                              <label for="an" id='ean' >Application Name*</label>
                              <input type=text id="appName" name="appName" class="form-control input-sm" placeholder="Application Name" > 
                           </div>
                     </div>
                     
                     <div class="col-md-5" >
                           <div class="form-group">
                              <label for="ws" id='ews' >Website (URL)*</label>
                              <input type=text id="website" name="website" class="form-control input-sm" placeholder="Website (URL)" > 
                           </div>
                      </div>
                      
                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="dt" id='edt'>Date Tracker</label>
                              <input type=text id="dateTracker" name="dateTracker" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="cl" id='ecl'>Checklist</label>
                              <input type=text id="checklist" name="checklist" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="vs" id='evs'>Venue Search</label>
                              <input type=text id="venueSearch" name="venueSearch" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="vr" id='vrt'>Vendor Search</label>
                              <input type=text id="vendorSearch" name="vendorSearch" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="bt" id='btt'>Budget</label>
                              <input type=text id="budget" name="budget" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="gl" id='glt'>Guest List</label>
                              <input type=text id="guestList" name="guestList" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="hb" id='hbt'>Book Hotel Block</label>
                              <input type=text id="bookHotelBlock" name="bookHotelBlock" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="ds" id='dst'>Dress Search</label>
                              <input type=text id="dressSearch" name="dressSearch" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="gr" id='grt'>Gift Registry</label>
                              <input type=text id="giftRegistry" name="giftRegistry" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="vc" id='vct'>Vendor Checklist</label>
                              <input type=text id="vendorChecklist" name="vendorChecklist" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="fn" id='fnt'>Forumn</label>
                              <input type=text id="forumn" name="forumn" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>

                      <div class="col-md-3">
                           <div class="form-group">
                              <label for="ww" id='wwt'>Wedding Website</label>
                              <input type=text id="weddingWebsite" name="weddingWebsite" class="form-control input-sm" placeholder="Enter 1-5" > 
                           </div>
                     </div>
				    
                     <div class="col-md-12" >
		                           <div class="form-group">
		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button>
					                   <a href="index" class="btn btn-primary" role="button">Cancel</a>
								 				
		                              </div>
                                  </div> 
              </div>
       </div>         
           
        </form>

                    <%-- code for reviews list --%>         
                    <%-- <div class="col-md-2">
					<label for=reviews>Reviews</label>
					<div class="form-group">
						<select id="reviews" name="reviews" class="form-control input-sm"> 
							<c:forEach items="${reviews}" var="reviews">
							 <option value="${reviews}">${reviews.id}</option>
							 </c:forEach>
						</select>							
					</div>
				    </div> --%>

   
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
	<script src="js/jquery-2.1.1.min.js"></script>	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>  
	<script src="js/wow.min.js"></script>
	<script src="js/functions.js"></script>
	
  </body>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
</html>
