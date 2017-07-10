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
    <title>Gettin Hitched - Login Page</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

    <!-- Bootstrap -->
    <link href="${contextPath}/resources/company/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/resources/company/css/font-awesome.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/company/css/animate.css">
	<link href="${contextPath}/resources/company/css/prettyPhoto.css" rel="stylesheet">
	<link href="${contextPath}/resources/company/css/style.css" rel="stylesheet" />		
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
							<a href="index.html"><h1><span>Gettin</span> Hitched</h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="/">Home » </a></li>
								<li role="presentation"><a href="about">About Us » </a></li>
								<li role="presentation"><a href="lookups">Lookups</a></li>								
								<li role="presentation"><a href="applications" class="active">Applications » </a></li>
								<li role="presentation"><a href="contact">Contact Us » </a></li>						
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
				<li>Applications</li>			
			</div>		
		</div>	
	</div>

	<div class="container">

		<div>
			<h1 style="color: #008000">Welcome to Gettin Hitched Rating App</h1>
			<h3 style="color: #008000">${msg}</h3>
			<h2 style="color: #008000">${message}</h2>
			<h2 style="color: #008000">${success}</h2>
			<c:if test="${not empty error}">
				<h2 style="color: #FF0000">${error}
					<a href="applications">Retry</a>
				</h2>
			</c:if>
		</div>
		<div></div>
	</div>

	<div>
   <c:if test="${empty error}">
   <form:form method="POST" modelAttribute="applications" class="col-md-12 col-md-offset-1">        
        
		 <div class="row" >
			<div class="col-md-4">
				<table class="table table-hover table-bordered">
					<tr style="background-color: #bce8f1;">
						<td><span class="fa fa-calendar"
							style="font-size: 18px; color: green; padding-top: 2px;">
								Details <%= df.format(new java.util.Date()) %>
						</span></td>
					</tr>
					<tr>
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Application Name </span>
							<c:out value="${attribs.appName}" /> </td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Web site </span>
						<span style="color: green" class="glyphicon glyphicon-globe"></span>
							<c:out value="${attribs.website}" /> </td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Date Tracker </span>
							<c:out value="${attribs.dateTracker}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Checklist </span>
							<c:out value="${attribs.checklist}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Venue Search </span>
							<c:out value="${attribs.venueSearch}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								vendorSearch </span>
							<c:out value="${attribs.vendorSearch}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Budget </span>
							<c:out value="${attribs.budget}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Guest List </span>
							<c:out value="${attribs.guestList}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Book Hotel Block </span>
							<c:out value="${attribs.bookHotelBlock}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Dress Search </span>
							<c:out value="${attribs.dressSearch}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Gift Registry </span>
							<c:out value="${attribs.giftRegistry}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Vendor Checklist </span>
							<c:out value="${attribs.vendorChecklist}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								forumn </span>
							<c:out value="${attribs.forumn}" /></td>
							
						<td><span style="font-size: 18px; color: green; padding-top: 2px;">
								Wedding Website </span>
							<c:out value="${attribs.weddingWebsite}" /></td>
							
						<%-- <td><span style="font-size: 18px; color: green; padding-top: 2px;">
								reviews </span>
							<c:out value="${attribs.reviews}" /></td> --%>
					</tr>


				</table>
			</div>
		</div>


				<%-- <div class="row">

					<div class="col-md-4">
						<spring:bind path="appName">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="appName" id='appName'>Application Name *</label>
								<form:input type="text" path="appName" class="form-control"
									placeholder="Application Name" autofocus="true"></form:input>
								<form:errors class="text-danger" path="appName"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-5">
						<spring:bind path="website">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="website" id='website'> Website*</label>
								<form:input type="text" path="website" class="form-control"
									placeholder="Website" autofocus="true"></form:input>
								<form:errors class="text-danger" path="website"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="dateTracker">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="dateTracker" id='dateTracker'>Date Tracker*</label>
								<form:input type="text" path="dateTracker" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="dateTracker"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="checklist">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="checklist" id='checklist'>Checklist*</label>
								<form:input type="text" path="checklist" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="checklist"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="venueSearch">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="venueSearch" id='venueSearch'>Venue Search*</label>
								<form:input type="text" path="venueSearch" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="venueSearch"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="vendorSearch">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="vendorSearch" id='vendorSearch'>Vendor
									Search*</label>
								<form:input type="text" path="vendorSearch" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="vendorSearch"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="budget">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="budget" id='budget'>Budget*</label>
								<form:input type="text" path="budget" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="budget"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="guestList">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="guestList" id='guestList'>Guest List*</label>
								<form:input type="text" path="guestList" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="guestList"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="bookHotelBlock">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="bookHotelBlock" id='bookHotelBlock'>Book
									Hotel Block*</label>
								<form:input type="text" path="bookHotelBlock"
									class="form-control" placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="bookHotelBlock"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="dressSearch">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="dressSearch" id='dressSearch'>Dress Search*</label>
								<form:input type="text" path="dressSearch" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="dressSearch"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="giftRegistry">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="giftRegistry" id='giftRegistry'>Gift
									Registry*</label>
								<form:input type="text" path="giftRegistry" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="giftRegistry"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="vendorChecklist">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="vendorChecklist" id='vendorChecklist'>Vendor
									Checklist*</label>
								<form:input type="text" path="vendorChecklist"
									class="form-control" placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="vendorChecklist"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="forumn">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="forumn" id='forumn'>Forumn*</label>
								<form:input type="text" path="forumn" class="form-control"
									placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="forumn"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="weddingWebsite">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="weddingWebsite" id='weddingWebsite'>Wedding
									Website*</label>
								<form:input type="text" path="weddingWebsite"
									class="form-control" placeholder="*Enter 1-5" autofocus="true"></form:input>
								<form:errors class="text-danger" path="weddingWebsite"></form:errors>
							</div>
						</spring:bind>
					</div>

					<div class="col-md-2">
						<spring:bind path="reviews">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="reviews" id='reviews'> Reviews*</label>
								<form:select path="reviews" name="reviews"
									class="form-control input-sm">
									<option value="">Select Review</option>
									<c:forEach items="${reviews}" var="state">
										<option value="${reviews}">${review.id}</option>
									</c:forEach>
								</form:select>
								<form:errors class="text-danger" path="reviews"></form:errors>
							</div>
						</spring:bind>
					</div>

				</div> --%>
				<!-- end row   -->


				<div class="col-md-4">
        <button class="btn btn-primary" type="submit">Submit</button> 
	</div>
        
    </form:form>
   </c:if>
 
   </div>
   
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h1>Gettin Hitched Application Entry</h1>
					<h2 class="subtitle">Please feel free to add an application or review.</h2>
					<form class="form-inline appentry" role="search" action="appentry" method="post">
					  <div class="form-group">
					    <input type="text" class="form-control" id="exampleInputApp" name="App Entry" 
					    	id="appentry" SIZE='20' placeholder="Enter website url">
					  </div>
					  <button type="submit" class="btn btn-theme" >Add app/review</button>
					</form>	
				</div>
			</div>
		</div>				
   

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

</html>
