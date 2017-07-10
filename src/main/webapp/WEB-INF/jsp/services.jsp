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
    <title>Gettin Hitched - Services Page</title>

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
								<li role="presentation"><a href="services" class="active">Services</a></li>								
								<li role="presentation"><a href="signups">Sign up » </a></li>
								<li role="presentation"><a href="login">Login » </a></li>
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
				<li>Services</li>			
			</div>		
		</div>	
	</div>
	
	<div class="services">
		<div class="container">
			<h3>Company Services</h3>
			<hr>
			<div class="col-md-6">
				<img src="resources/company/images/4.jpg" class="resources/company/img-responsive">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>
			</div>
			

	<div class="container">	
                                  
                                  <div class="text-center">
                                  <h3 class="text-success" style="color: #008000"> 
		                              
                                   ${message} 
                                   
                                   ${fn} 
                                   ${ln} 
                                   ${em}  
                                   
                                   </h3>  
                                   <h3 class="text-danger" >    
                                   ${error}                                   
                                   </h3>  
                                   </div>
                                  
                                   
  <div class="container">	                                 
    <form class="col-md-4" id="email-lookup" method="post"  action="email-lookup">                    
      <div class="contact-form">
              <div class="container">                                
                    
                     <div class="col-md-3">
                           <div class="form-group">
                                <label for="emailAddressInput" >Email Look-Up*</label>									
									    <input type="hidden" name="roles" value="user"/>
										<input type="text" class="form-control" name="emailAddress" id="emailAddressInput" value="${attribs.emailAddress}" placeholder="Email Address" required/>
							    </div>                           
                     </div>
                     
                     <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 		                              
		                             </div>
                                  </div>
                </div>
       </div>         
           
        </form>
        
    <form class="col-md-4" id="LookUpByLastnameOrFirstname" method="post"  action="LookUpByLastnameOrFirstname">                    
      <div class="contact-form">
              <div class="container">                                  
                     <div class="col-md-3" >
                           <div class="form-group">
                              <label for="ln" id='eln' >Name Look-up*</label>
                               <input type=text id="lname" name="lname" value="${attribs.lname}" class="form-control input-sm" placeholder="Enter Last or First Name" required> 
                           </div>                           
                     </div>                       
                          <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 
		                               
		                             </div>
                                  </div> 
              </div>
          </div>
       </form>


			<div class="col-md-6">
				<div class="media">
					<ul>
						<li>
							<div class="media-left">
								<i class="fa fa-pencil"></i>						
							</div>
							<div class="media-body">
								<h4 class="media-heading">Web Development</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
								libero, pulvinar tincidunt leo consectetur eget.</p>
							</div>
						</li>
						<li>
							<div class="media-left">
								<i class="fa fa-book"></i>						
							</div>
							<div class="media-body">
								<h4 class="media-heading">Responsive Design</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
								libero, pulvinar tincidunt leo consectetur eget.</p>
							</div>
						</li>
						<li>
							<div class="media-left">
								<i class="fa fa-rocket"></i>						
							</div>
							<div class="media-body">
								<h4 class="media-heading">Bootstrap Themes</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
								libero, pulvinar tincidunt leo consectetur eget.</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>	
	
	<div class="sub-services">
		<div class="container">
			<div class="col-md-6">
				<div class="media">
					<ul>
						<li>
							<div class="media-left">
								<i class="fa fa-pencil"></i>						
							</div>
							<div class="media-body">
								<h4 class="media-heading">Landing Page</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
								libero, pulvinar tincidunt leo consectetur eget.</p>
							</div>
						</li>
						<li>
							<div class="media-left">
								<i class="fa fa-book"></i>						
							</div>
							<div class="media-body">
								<h4 class="media-heading">Training</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
								libero, pulvinar tincidunt leo consectetur eget.</p>
							</div>
						</li>
						<li>
							<div class="media-left">
								<i class="fa fa-rocket"></i>						
							</div>
							<div class="media-body">
								<h4 class="media-heading">Logo Design</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
								libero, pulvinar tincidunt leo consectetur eget.</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
						
			<div class="col-md-6">
				<img src="resources/company/images/4.jpg" class="resources/company/img-responsive">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>
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
							    <li class="active"><a href="#">Look-Ups</a></li>
								<li ><a href="index">Home</a></li>
								<li><a href="about">About Us</a></li>																
								<li><a href="contact">Contact Us</a></li>	
								<li><a href="signups">Sign up</a></li>
								<li><a href="login">login</a></li>
								<li role="presentation" class="small">
									<form class="navbar-form navbar-right" role="search"  action="lookupArtist" method="post">
										    <div class="input-group add-on">										      
										      <input type="text" class="form-control" placeholder="Search Members" name="lookupArtist" id="lookupArtist" SIZE='13'>
										      <div class="input-group-btn">
										        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
										      </div>
										    </div>
									 </form>									
						        </li>								
															
						        <li class="pull-right">
						        <form class="navbar-form navbar-right" role="search"  action="Lookupcity" method="post">
										    <div class="input-group add-on">										      
										      <input type="text" class="form-control" placeholder="Find Members By City or Zip" name="Lookupcity" id="Lookupcity" SIZE='22'>
										      <input type="hidden" name="id" value="-1">
										      <div class="input-group-btn">
										        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search" title="Lookup Members by City or Zip"></i></button>
										      </div>
										    </div>
									 </form>
						        </li>	
							</ul>
						</div>
					</div>						
				</div>
			</div>	
		
	</header>
	<div class="container">	
                                  
                                  <div class="text-center">
                                  <h3 class="text-success" style="color: #008000"> 
		                              
                                   ${message} 
                                   
                                   ${fn} 
                                   ${ln} 
                                   ${em}  
                                   
                                   </h3>  
                                   <h3 class="text-danger" >    
                                   ${error}                                   
                                   </h3>  
                                   </div>
                                  
                                   
  <div class="container">	                                 
    <form class="col-md-4" id="email-lookup" method="post"  action="email-lookup">                    
      <div class="contact-form">
              <div class="container">                                
                    
                     <div class="col-md-3">
                           <div class="form-group">
                                <label for="emailAddressInput" >Email Look-Up*</label>									
									    <input type="hidden" name="roles" value="user"/>
										<input type="text" class="form-control" name="emailAddress" id="emailAddressInput" value="${attribs.emailAddress}" placeholder="Email Address" required/>
							    </div>                           
                     </div>
                     
                     <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 		                              
		                             </div>
                                  </div>
                </div>
       </div>         
           
        </form>
        
    <form class="col-md-4" id="LookUpByLastnameOrFirstname" method="post"  action="LookUpByLastnameOrFirstname">                    
      <div class="contact-form">
              <div class="container">                                  
                     <div class="col-md-3" >
                           <div class="form-group">
                              <label for="ln" id='eln' >Name Look-up*</label>
                               <input type=text id="lname" name="lname" value="${attribs.lname}" class="form-control input-sm" placeholder="Enter Last or First Name" required> 
                           </div>                           
                     </div>                       
                          <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 
		                               
		                             </div>
                                  </div> 
              </div>
          </div>
       </form>

    <form class="col-md-4" id="lookupname" method="post"  action="lookUpname">                    
      <div class="contact-form">
              <div class="container">                                  
                     <div class="col-md-3" >
                           <div class="form-group">
                              <label for="ln" id='eln' >Name Look-up*</label>
                               <input type=text id="lname" name="lname" value="${attribs.lname}" class="form-control input-sm" placeholder="Enter Name" required> 
                           </div>                           
                     </div>                       
                          <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 
		                               
		                             </div>
                                  </div> 
              </div>
          </div>
       </form>
    </div>       
        
        <div class="container">
        
        				    	
          <div class="col-md-8" >
             <c:if test="${not empty attribs}">       
              <table class="table table-hover table-bordered"> 
						<tr style="background-color: #bce8f1;">
                    	 	<td>
                    	 	
					           User							
						  
						     </td>
						     <td>
						    
						     <span class="fa fa-calendar" style="font-size:18px;color:green; padding-top: 2px;">
					         Details <%= df.format(new java.util.Date()) %>
					         </span>
						     
						      </td>
                    	 </tr>
                    	 <tr>
                    	    <td>Name </td> <td><c:out value="${attribs.fname}"/> <c:out value="${attribs.lname}"/></td>
                    	 </tr>
                    	 <tr>
                    	 	<td>User Email  </td><td><c:out value="${attribs.emailAddress}"/></td>
                    	 </tr>                     	 
                    	 <tr>
                    	    <td>Telephone #</td> <td>${attribs.tel}</td>
                    	 </tr>  
                    	 <tr>
                    	    <td>Address</td> <td>${attribs.address}</td>
                    	 </tr> 
                    	 <tr>
                    	    <td>Subscription</td> <td>${attribs.subscription} </td>
                    	 </tr>   
                    	 <tr>
                    	    <td>Role</td> <td>${attribs.roles} User</td>
                    	 </tr>                    	 
                   </table> 
                    <a class="btn btn-primary" href="services"> <span class="glyphicon glyphicon-refresh"> New Look-Up</span></a>		                           
                                 
                   </c:if>
                   </div>
                   </div>
                   
                   
                   <div class="panel-body">
		
		<c:if test="${not empty users}">
		<table class="table table-hover table-bordered">
                    <thead style="background-color: #ff6600;">
                    <tr > 
                        
                        <th>Name</th>
                        <th>Email</th>                        
                        <th>Address</th>                                               
                        <th>Web site</th>
						                  	
                    </tr>
                    </thead>
                    <tbody  >
                     <c:forEach items="${users}" var="item">
                        <tr class="text-success">
							<th><c:out value="${item.fname}"/> <c:out value="${item.lname}"/></th>
							<th><c:out value="${item.emailAddress}"/></th> 							 
							<th><c:out value="${item.address}"/>, <c:out value="${item.city}"/> <c:out value="${item.state}"/> <c:out value="${item.zip}"/></th>
							<th><c:out value="${item.website}"/></th>				                	
                           </tr>
                      </c:forEach>
                    </tbody>
                </table>
                </c:if>
		  		    
		</div>
    </div>

	<div class="col-md-8">
		<c:if test="${not empty attribs}">
			<table class="table table-hover table-bordered">
				<tr style="background-color: #bce8f1;">
					<td>User</td>
					<td><span class="fa fa-calendar"
						style="font-size: 18px; color: green; padding-top: 2px;">
							Details <%=df.format(new java.util.Date())%>
					</span></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><c:out value="${attribs.fname}" /> <c:out
							value="${attribs.lname}" /></td>
				</tr>
				<tr>
					<td>User Email</td>
					<td><c:out value="${attribs.emailAddress}" /></td>
				</tr>
				<tr>
					<td>Telephone #</td>
					<td>${attribs.tel}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${attribs.address}</td>
				</tr>
				<tr>
					<td>Subscription</td>
					<td>${attribs.subscription}</td>
				</tr>
				<tr>
					<td>Role</td>
					<td>${attribs.roles}User</td>
				</tr>
			</table>
			<a class="btn btn-primary" href="services"> <span
				class="glyphicon glyphicon-refresh"> New Look-Up</span></a>

		</c:if>
	</div>

	<footer  style="background-color: #ff6600; position: fixed; bottom:0;width:100%;" >						
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
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    
 
</html> --%>



