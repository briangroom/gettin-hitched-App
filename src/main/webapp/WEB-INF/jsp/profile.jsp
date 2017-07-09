<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.text.NumberFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.io.*,java.util.*"%>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gettin Hitched - Profile Page</title>
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
							<a href="index.html"><h1><span>Gettin</span> Hitched</h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="/">Home » </a></li>
								<li role="presentation"><a href="about">About Us » </a></li>
								<li role="presentation"><a href="services">Services</a></li>								
								<li role="presentation"><a href="contact">Contact Us » </a></li>						
								<li role="presentation"><a href="about" class="active">Profile » </a></li>
								<li class="pull-right"><a href="logout" id="logout">${attribs.fname}
									| Logout</a></li>
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
				<li><a href="/login">Login</a></li>
				<li>Profile</li>			
			</div>		
		</div>	
	</div>

	<div class="container">


		<form id="resetpassword" method="post" action="admin">
			<input type="hidden" name="id" value="${attribs.id}">
		</form>

		<form id="admin" method="post" action="admin">
			<input type="hidden" name="id" value="${attribs.id}">
		</form>

		<form id="userEdits" method="post" action="userEdits">
			<input type="hidden" name="id" value="${attribs.id}">
		</form>

		<div>
			<h1 style="color: #008000">Welcome to the club</h1>

			<p style="color: #008000">${msg}</p>
			<h2 style="color: #008000">${message}</h2>
			<h2 style="color: #008000">${success}</h2>
			<h2 style="color: #FF0000">${error}</h2>
			<h2 style="color: #008000">${email}</h2>
			<h2 style="color: #008000">${myname}</h2>

		</div>



		<div class="row" style="color: black">
			<div class="col-md-10">
				<table class="table table-hover table-bordered">
					<tr style="background-color: #bce8f1;">
						<td>Artist</td>
						<td><span class="fa fa-calendar"
							style="font-size: 18px; color: green; padding-top: 2px;">
								Details <%= df.format(new java.util.Date()) %>
						</span></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><span style="color: red" class="glyphicon glyphicon-user"></span>
							<c:out value="${attribs.fname}" /> <c:out
								value="${attribs.lname}" /></td>
					</tr>
					<tr>
						<td>Contact Info</td>
						<td>
						<%-- <span style="color: red" class="fa fa-phone fa"></span> <c:out
								value="${attribs.tel}" />  --%>
								<span style="color: red"
							class="fa fa-envelope fa"></span> <c:out
								value="${attribs.emailAddress}" /></td>
					</tr>

					<tr>
						<td>Address</td>
						<td><span style="color: red" class="glyphicon glyphicon-home"></span>
							<c:out value="${attribs.city}" /> 
							<c:out value="${attribs.state}" /> 
					</tr>

				</table>
				
				
			</div>

		</div>

		<a class="btn btn-danger" id="edata"
			onclick="document.forms['userEdits'].submit()">Update Profile </a>
		<button type="button" class="btn btn-primary" data-toggle="collapse"
			data-target="#show">Reset Password</button>
			<br><br>
		<form class="col-md-3" action="LookupApp" method="GET">
			<div class="input-group add-on">
				<input type="text" class="form-control"
					placeholder="Look-up by Application" name="LookupApp"
					id="LookupApp" SIZE='14'> <input type="hidden" name="id"
					value="${attribs.id}">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search" title="Enter Application Name"></i>
					</button>
				</div>
			</div>
		</form>

	</div>
	<br>
	<div id="show" class="collapse">
		<%@include file="getpswd.jsp"%>
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
