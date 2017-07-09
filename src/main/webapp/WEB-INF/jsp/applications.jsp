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
	<li ><a href="index">Home</a></li>
	<li><a href="about">About Us</a></li> 
	<li><a href="contact">Contact Us</a></li> 
	<li><a href="signups">Sign up</a></li>
	<li><a href="services">Look-Ups</a></li>
	<li class="active"><a href="applications">Applications</a></li> 
	</ul>
	</div>
	</div> 
	</div>
	</div> 
	</header>

	<div class="container">

	<div>
	<h1 style="color: #008000">Welcome to Gettin Hitched Rating App</h1>
	<h3 style="color: #008000">${msg} </h3>
	<h2 style="color: #008000">${message}</h2>
	<h2 style="color: #008000">${success} 

	</h2>
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
						<td>Application Name</td>
						<td><span style="color: red" class="glyphicon glyphicon-user"></span>
							<c:out value="${attribs.appName}" /> </td>
						<td>Web site</td>
						<td><c:choose>
								<c:when test="${empty attribs.website}">
									<p style="color: #E44422">Please enter your web site (url)</p>
								</c:when>
								<c:otherwise>
									<span style="color: green" class="glyphicon glyphicon-globe"></span>
									<a href="${attribs.website}">
									<c:out value="${attribs.website}" /> </a>
								</c:otherwise>
							</c:choose></td>
						<td>Date Tracker</td>
						<td><c:out value="${attribs.dateTracker}" /></td>
					</tr>

					<%-- <tr>
						<td>Address</td>
						<td><span style="color: red" class="glyphicon glyphicon-home"></span>
							<c:out value="${attribs.address}" /> <c:out
								value="${attribs.city}" /> <c:out value="${attribs.state}" /> <c:out
								value="${attribs.zip}" /></td>
					</tr>
					<tr>
						<td>Web site</td>
						<td><c:choose>
								<c:when test="${empty attribs.website}">
									<p style="color: #E44422">Please update your web site</p>
								</c:when>
								<c:otherwise>
									<span style="color: green" class="glyphicon glyphicon-globe"></span>
									<a href="${attribs.website}"><c:out
											value="${attribs.website}" /> </a>
								</c:otherwise>
							</c:choose></td>
					</tr>
					<tr>
						<td>Membership Type</td>
						<td>
							<form class="col-md-10" action="changeSubscriptionType"
								method="post">
								<div class="input-group add-on">
									<input type="hidden" name="id" value="${attribs.id}" /> <select
										name="subscription" id="subscription"
										class="form-control input">
										<option value="Life Time Membership">Life Time
											Membership $400</option>
										<option value="Annual Subscription">Annual
											Subscription $100</option>
										<option value="Monthly Subscription">Monthly
											Subscription $35</option>
										<option value="" selected>${attribs.subscription}</option>
									</select>
									<div class="input-group-btn" class="col-md-2">
										<button class="btn btn-success" type="submit"
											title="assign roles">Change</button>
									</div>
								</div>
							</form>

						</td>

						my code    tr = table row  td = table data
					</tr>
					<tr>
						<td>Club Address</td>

						<td>
						<c:if test="${empty attribs.selectClub}">
										<form class="col-md-10" action="addAddress" method="post">
											<div class="input-group add-on">
												<input type="hidden" name="id" value="${attribs.id}" /> 
														<select name="selectClub" class="form-control input">
														<option value="" selected>Select Club</option>
														<c:forEach items="${address}" var="item">
															<option value="${item.bname}">${item.bname}</option>
														</c:forEach>
												</select>
													<div class="input-group-btn" class="col-md-2">
										<button class="btn btn-success" type="submit"
											title="assign roles">Select Club</button>
											</div>
											</div>
										</form>
										<p class="text-danger" >Please update your club</p>
										</c:if>
								${attribs.selectClub}
										</td>

						<td><c:out value="${attribs.selectClub}" /></td>

						<td>
							<form class="col-md-10" action="selectClub"
								method="post">
								<div class="input-group add-on">
									<input type="hidden" name="id" value="${attribs.id}" /> <select
										name="subscription" id="subscription"
										class="form-control input">
										<option value="Swansea">Life Time
											Membership $400</option>
										<option value="Belleville">Annual
											Subscription $100</option>
										<option value="Swansea">Monthly
											Subscription $35</option>
										<option value="" selected>${attribs.bname}</option>
									</select>
									<div class="input-group-btn" class="col-md-2">
										<button class="btn btn-success" type="submit"
											title="assign roles">Change</button>
									</div>
								</div>
							</form>

						</td>


					</tr>  --%>
				</table>
			</div>
		</div>





        <div class="row">
        
        <div class="col-md-2">
        <spring:bind path="tel">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="appName" id='appName' >Application Name *</label>
                <form:input type="text" path="appName" class="form-control" placeholder="Application Name"
                            autofocus="true"></form:input>
                <form:errors class="text-danger" path="appName"></form:errors>
            </div>
        </spring:bind>
        </div>
        
        
        
        <div class="col-md-3">
        <spring:bind path="website">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="website" id='website' > Website*</label>
                <form:input type="text" path="website" class="form-control" placeholder="Website"
                            autofocus="true"></form:input>
                <form:errors class="text-danger" path="website"></form:errors>
            </div>
        </spring:bind>
        </div>
        
        <div class="col-md-2">
        <spring:bind path="city">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="city" id='city' > City*</label>
                <form:input type="text" path="city" class="form-control" placeholder="*Enter City"
                            autofocus="true"></form:input>
                <form:errors class="text-danger" path="city"></form:errors>
            </div>
        </spring:bind>
        </div>
        
        </div>
        <div class="row">       
        
        <div class="col-md-2">
        <spring:bind path="state">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="state" id='state' > State*</label>
            <form:select path="state" name="state" class="form-control input-sm"> 
	     <option value="" >Select State</option>
	<c:forEach items="${states}" var="state"> 
	<option value="${state}">${state.id}</option>
	</c:forEach>
	</form:select> 
	<form:errors class="text-danger" path="state"></form:errors>               
            </div>
        </spring:bind>
        </div>
        
        <div class="col-md-2">
        <spring:bind path="zip">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="zip" id='zip' > ZIP*</label>
                <form:input type="text" path="zip" class="form-control" placeholder="ZIP"
                            autofocus="true"></form:input>
                <form:errors class="text-danger" path="zip"></form:errors>
            </div>
        </spring:bind>
        </div>   
        
        <div class="col-md-2">
        <spring:bind path="tel">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="tel" id='tel' > Telephone*</label>
                <form:input type="text" path="tel" class="form-control" placeholder="Telephone"
                            autofocus="true"></form:input>
                <form:errors class="text-danger" path="tel"></form:errors>
            </div>
        </spring:bind>
        </div>    
        </div> <!-- end row   -->
         
         
        <div class="col-md-4">
        <button class="btn btn-primary" type="submit">Submit</button> 
	</div>
                    

        
    </form:form>
   </c:if>
 
   </div>
   

	<footer  style="background-color: #ff6600; position: relative; bottom:0;width:100%;" > 
	<div class="col-md-5 col-md-offset-5">
	<div class="menu">
	<ul class="nav nav-tabs" role="tablist">
	<li ><a href="index">Home</a></li>
	<li><a href="about">About Us</a></li> 
	<li><a href="contact">Contact Us</a></li> 
	<li><a href="signups">Sign up</a></li>
	<li><a href="login">login</a></li> 
	<li><a href="services">Look-Ups</a></li> 
	        
	</ul>

	</div>
	</div>

	</footer>
  </body>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</html>
