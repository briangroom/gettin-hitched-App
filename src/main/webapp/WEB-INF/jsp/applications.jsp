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
								<li role="presentation"><a href="applications" class="active">Applications » </a></li>
								<li role="presentation"><a href="about">About Us » </a></li>
								<li role="presentation"><a href="contact">Contact Us » </a></li>						
								<c:if test="${empty user.fname}"> <%-- user not logged on --%>
									<li role="presentation"><a href="appentry">App Entry » </a></li>								
									<li class="pull-right"><a href="logout" id="logout">${attribs.fname} | Logout</a></li>
								</c:if>
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

		<%-- <div>
			<h1 style="color: #fd680e">Welcome to Gettin Hitched Rating App</h1>
			<h3 style="color: #fd680e">${msg}</h3>
			<h2 style="color: #fd680e">${message}</h2>
			<h2 style="color: #fd680e">${success}</h2>
			<c:if test="${not empty error}">
				<h2 style="color: #FF0000">${error}
					<a href="applications">Retry</a>
				</h2>
			</c:if>
		</div> --%>
		<div style="color: #fd680e">
			<h1>Welcome to Gettin Hitched Rating App</h1>
			<h3>${msg}</h3>
			<h2>${message}</h2>
			<h2>${success}</h2>
			<c:if test="${not empty error}">
				<h2 style="color: #FF0000">${error}
					<a href="applications">Retry</a>
				</h2>
			</c:if>
		</div>
		<div></div>
	</div>
 
 
 	<div class="row">
		<div class="col-md-9">
			<br>
			<c:if test="${not empty applications}">
				<%-- <c:if test="${role eq 'user' || role eq 'admin' }"> --%>
				<%-- <c:if
							test="${(fn:containsIgnoreCase(role, 'super')) || (fn:containsIgnoreCase(role, 'admin'))}"> --%>
				<h7>
				<table class="table table-hover table-bordered">
					<thead style="background-color: #ff6600;">
						<tr>
							<th>App Name</th>
							<th>Website</th>
							<th>Date Tracker</th>
							<th>Checklist</th>
							<th>Venue Search</th>
							<th>Vendor Search</th>
							<th>Budget</th>
							<th>Guest List</th>
							<th>Book Hotel Block</th>
							<th>Dress Search</th>
							<th>Gift Registry</th>
							<th>Vendor Checklist</th>
							<th>Forumn</th>
							<th>Wedding Website</th>
							<th>Overall Rating</th>
							<th>Review</th>
							<th>Entered by</th>
							<%-- <c:if
											test="${(fn:containsIgnoreCase(role, 'super')) || (fn:containsIgnoreCase(role, 'admin'))}">
											<th>Assign Roles</th>
										</c:if> --%>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${applications}" var="item">
							<tr class="text-success">
								<th><c:out value="${item.appName}" /></th>
								<th><c:out value="${item.website}" /> </th>
								<th><c:out value="${item.dateTracker}" /></th>
								<th><c:out value="${item.checklist}" /></th>
								<th><c:out value="${item.venueSearch}" /></th>
								<th><c:out value="${item.vendorSearch}" /></th>
								<th><c:out value="${item.budget}" /></th>
								<th><c:out value="${item.guestList}" /></th>
								<th><c:out value="${item.bookHotelBlock}" /></th>
								<th><c:out value="${item.dressSearch}" /></th>
								<th><c:out value="${item.giftRegistry}" /></th>
								<th><c:out value="${item.vendorChecklist}" /></th>
								<th><c:out value="${item.forumn}" /></th>
								<th><c:out value="${item.weddingWebsite}" /></th>
								<th><c:out value="${item.overallRating}" /></th>
								<th><c:out value="${item.review}" /></th>
								<th><c:out value="${item.enteredBy}" /></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</h7>
				<%-- </c:if> --%>
			</c:if>
		</div>
	</div>


<%-- 	<div class="container">
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
 --%>
 
 
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
