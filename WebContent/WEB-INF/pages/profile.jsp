<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/settings.css" />" rel="stylesheet">

<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon">
<link rel="apple-touch-icon" href="<c:url value="/resources/images/apple-touch-icon.png" />">
<link rel="apple-touch-icon" sizes="72x72"  href="<c:url value="/resources/images/apple-touch-icon-72x72.png" />">
<link rel="apple-touch-icon"  sizes="114x114"  href="<c:url value="/resources/images/apple-touch-icon-114x114.png" />">

<style>
    
</style>
    
</head>
<body>
<header class="header">
        <div class="menu-container">
            <div class="container">
                <div class="menu-wrapper">
                    <nav id="navigation" class="navbar" role="navigation">
                        <div class="navbar-inner">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <i class="icon-menu27"></i>
                                </button>
                                <a id="brand" class="clearfix navbar-brand" href="/Travel/secured/home"><img src="/Travel/resources/images/logo.png" alt="Trips"></a>
                            </div><!-- end navbar-header -->
                            <div id="navbar-collapse" class="navbar-right navbar-collapse collapse clearfix">
                                <ul class="nav navbar-nav yamm">
                                    <li class="dropdown">
                                        <a href="#">Welcome ${username}, </a>
                                    </li><!-- end yamm-fw -->      
                                    <li><a href="/Travel/secured/profile">Profile</a></li>     
                                    <li><a href="<c:url value="/logout" />">Logout</a></li>
                                    <li></li>
                                    <li class="sidebar-dropper"><a data-toggle="sidebar" data-target=".sidebar-right" class="noborder" href="#"><i class="icon-menu27"></i></a></li>
                                </ul><!-- end navbar-right -->
                            </div><!-- end navbar-callopse -->
                        </div><!-- end navbar-inner -->
                    </nav><!-- end navigation -->
                </div><!-- menu wrapper -->
            </div><!-- end container -->
        </div><!-- end menu-container -->
        <div class="sidebar-menu-container">
            <div class="col-sm-2 col-md-2 sidebar sidebar-right sidebar-animate">
                <a data-toggle="sidebar" data-target=".sidebar-right" class="text-right" href="#"><i class="icon-wrong6-1"></i></a>
                <img src="/Travel//resources/images/logo.png" alt="Trips">
                <ul class="nav navbar-stacked">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Terms Usage</a></li>
                </ul>
            </div>
        </div><!-- end sidebar menu -->
    </header>
   
    <div id="container2">
       <div id="map">
       </div>
        <div id="container" class="home-form">
	        <ul class="nav nav-tabs" >
                <li class="active"><a href="#tab_01" aria-controls="tab_01" role="tab" data-toggle="tab" id="tab_myTravel"> My Travels</a></li>
     	       	<li><a href="#tab_02" aria-controls="tab_02" role="tab" data-toggle="tab" id="tab_favorite"> Favorite</a></li>
         		<li><a href="#tab_02" aria-controls="tab_03" role="tab" data-toggle="tab" id="tab_dreams"> Dreams</a></li>
                <li><a href="#tab_04" aria-controls="tab_04" role="tab" data-toggle="tab" id="tab_createTravel">  Create Travel</a></li>
                <li><a href="#tab_05" aria-controls="tab_05" role="tab" data-toggle="tab" id="tab_information"> Information</a></li>
                           
            </ul>
         </div>
    </div>

  
<section class="section clearfix" id="my-travel-section">
        <div class="container">
            <div class="row">
                <div id="fullwidth" class="col-sm-12">

                    <!-- START CONTENT -->
                    <c:forEach items="${my_travels}" var="t" varStatus="loop">
				    <c:choose>
				        <c:when test="${loop.index mod 2 == 0}">
				          <div class="col-md-6 col-sm-12" id="${t.category.slug}">
                            <div class="post-media clearfix">
                                <a href="deal-single.html"><img src="/Travel/resources/images/upload/blog_03.png" alt="" class="img-responsive"></a>
                                <div id="countdown_01" class="deals-count">
                                    <div class="dash days_dash">
                                        <span class="dash_title">days</span>
                                        <div class="digit"><div class="top" style="display: none;">7</div><div class="bottom" style="display: block;">7</div></div>
                                        <div class="digit"><div class="top" style="display: none;">2</div><div class="bottom" style="display: block;">2</div></div>
                                        <div class="digit"><div class="top" style="display: none;">9</div><div class="bottom" style="display: block;">9</div></div>
                                    </div>
                                    <div class="dash hours_dash">
                                        <span class="dash_title">hours</span>
                                        <div class="digit"><div class="top" style="display: none;">2</div><div class="bottom" style="display: block;">2</div></div>
                                        <div class="digit"><div class="top" style="display: none;">3</div><div class="bottom" style="display: block;">3</div></div>
                                    </div>
                                    <div class="dash minutes_dash">
                                        <span class="dash_title">min</span>
                                        <div class="digit"><div class="top" style="display: none;">5</div><div class="bottom" style="display: block;">5</div></div>
                                        <div class="digit"><div class="top" style="display: none;">9</div><div class="bottom" style="display: block;">9</div></div>
                                    </div>
                                    <div class="dash seconds_dash">
                                        <span class="dash_title">sec</span>
                                        <div class="digit"><div class="top" style="display: none;">4</div><div class="bottom" style="display: block;">4</div></div>
                                        <div class="digit"><div class="top" style="display: none;">0</div><div class="bottom" style="display: block; overflow: hidden; height: 59.6307px;">1</div></div>
                                    </div>
                                </div> <!-- end of countdown -->
                            </div><!-- end post-media -->
                        </div><!-- end col -->
				        </c:when>		  
			    	</c:choose>
                   
                    <div class="post-wrapper row clearfix border-bottom" id="${t.category.slug}">
                        <div class="col-md-6 col-sm-12">
                            <div class="post-title clearfix">
                                <h5><a href="deal-single.html">${t.title }</a></h5>
                            </div><!-- end ost-title -->
                            <div class="post-meta clearfix">
                                <span><i class="icon-attach"></i> ${t.stages.toArray()[0].startDate }</span>
                                <span><i class="icon-map110"></i> ${t.stages.toArray()[0].city.country.region }, ${t.stages.toArray()[0].city.country.name }</span>
                                <span class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </span><!-- end rating -->
                            </div><!-- ne dpost-meta -->
                            <div class="post-content clearfix">
                                <p>${t.description } </p>
                                <a href="/Travel/secured/travel?id=${t.id }" class="btn btn-primary btn-sm">See More</a>
                            </div><!-- end post-content -->
                        </div><!-- end col -->
                       	    <c:choose>
				        <c:when test="${loop.index mod 2 != 0}">
				              <div class="col-md-6 col-sm-12" id="${t.category.slug}">
                            <div class="post-media clearfix">
                                <a href="deal-single.html"><img src="/Travel/resources/images/upload/blog_03.png" alt="" class="img-responsive"></a>
                                <div id="countdown_01" class="deals-count">
                                    <div class="dash days_dash">
                                        <span class="dash_title">days</span>
                                        <div class="digit"><div class="top" style="display: none;">7</div><div class="bottom" style="display: block;">7</div></div>
                                        <div class="digit"><div class="top" style="display: none;">2</div><div class="bottom" style="display: block;">2</div></div>
                                        <div class="digit"><div class="top" style="display: none;">9</div><div class="bottom" style="display: block;">9</div></div>
                                    </div>
                                    <div class="dash hours_dash">
                                        <span class="dash_title">hours</span>
                                        <div class="digit"><div class="top" style="display: none;">2</div><div class="bottom" style="display: block;">2</div></div>
                                        <div class="digit"><div class="top" style="display: none;">3</div><div class="bottom" style="display: block;">3</div></div>
                                    </div>
                                    <div class="dash minutes_dash">
                                        <span class="dash_title">min</span>
                                        <div class="digit"><div class="top" style="display: none;">5</div><div class="bottom" style="display: block;">5</div></div>
                                        <div class="digit"><div class="top" style="display: none;">9</div><div class="bottom" style="display: block;">9</div></div>
                                    </div>
                                    <div class="dash seconds_dash">
                                        <span class="dash_title">sec</span>
                                        <div class="digit"><div class="top" style="display: none;">4</div><div class="bottom" style="display: block;">4</div></div>
                                        <div class="digit"><div class="top" style="display: none;">0</div><div class="bottom" style="display: block; overflow: hidden; height: 59.6307px;">1</div></div>
                                    </div>
                                </div> <!-- end of countdown -->
                            </div><!-- end post-media -->
                        </div><!-- end col -->
				        </c:when>		  
			    	</c:choose>
                   
                    </div>
                    </c:forEach>
                      <!-- end post-wrapper -->     
                </div><!-- end fullwidth -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
<section class="section clearfix" id="create-travel-section" style="display:none">
        <div class="container">
                    <!-- START CONTENT -->
                    <div class="row">
                        <div id="content" class="col-md-12 col-sm-12 col-xs-12">
                            <br>
                            <hr>
                            <br>
                            <form:form method="post" action="/Travel/secured/addTravel" modelAttribute="contactForm">
                           
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="hotel-title">
                                            <h5>TRAVEL INFORMATION</h5>
                                        </div>

                                        <div class="row">
                                           
                                            <div class="col-md-12 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Title *" name="title" id="title"> 
                                            </div>
                                           <div class="col-md-12 col-sm-12 col-xs-12">
                                       		 	<textarea class="form-control" name="description" id="description" rows="8" placeholder="Description *"></textarea>
                                        	</div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Duration *" name="duration" id="duration"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Max number attendees *" name="maxNumberAttendees" id="maxNumberAttendees"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Target budget *" name="budget" id="budget"> 
                                            </div>
                                              <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Category *" name="category" id="category"> 
                                            </div>
                                               <div class="col-md-12 col-sm-12 col-xs-12">
                                              	  <p>Tags</p>
                                                <input type="text" class="form-control" id="removeConfirmationTags" value="Italy" name="countriesVisited" id="countriesVisited">
                                            </div> 
                                        </div>
                                    </div><!-- end col -->
                                      <div class="col-sm-6">
                                        <div class="hotel-title">
                                            <h5>TELL ME WHAT YOU WILL VISIT</h5>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                               <div class="panel panel-default">
		                                        <div class="panel-heading">
		                                            <div class="panel-title">
		                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
		                                                    <h3>STOPS</h3>
		                                                </a><i class="indicator icon-plus pull-right"  id="add-stage"></i>
		                                            </div>
		                                        </div>
		                                    </div>
                                            </div>
                                            <div id="stages" style="margin-top: 85px;" >
	                                           	<div class="col-md-12 col-sm-12 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="First Save Point *" name="stages[0].city.name" id="city">  
	                                            </div>
	                                             <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Start at *" name="stages[0].startDate" id="datepicker"> 
	                                            </div>
	                                            <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Finish at *" name="stages[0].endDate" id="datepicker1"> 
	                                            </div>
	                                               	<div class="col-md-12 col-sm-12 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Second Save Point *" name="stages[1].city.name" id="city">  
	                                            </div>
	                                             <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Start at *" name="stages[1].startDate" id="datepicker2"> 
	                                            </div>
	                                            <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Finish at *" name="stages[1].endDate" id="datepicker3"> 
	                                            </div>
	                                               	<div class="col-md-12 col-sm-12 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Third Save Point *" name="stages[2].city.name" id="city">  
	                                            </div>
	                                             <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Start at *" name="stages[2].startDate" id="datepicker4"> 
	                                            </div>
	                                            <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Finish at *" name="stages[2].endDate" id="datepicker5"> 
	                                            </div>
	                                               	<div class="col-md-12 col-sm-12 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Fourth Save Point *" name="stages[3].city.name" id="city">  
	                                            </div>
	                                             <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Start at *" name="stages[3].startDate" id="datepicker6"> 
	                                            </div>
	                                            <div class="col-md-6 col-sm-6 col-xs-12">
	                                                <input type="text" class="form-control" placeholder="Finish at *" name="stages[3].endDate" id="datepicker7"> 
	                                            </div>
											</div>
                                        </div>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                                <br>
                                <hr>
                                <br>
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <br>
                                         <button type="submit" class="btn btn-primary btn-normal btn-lg" >Confirm creation</button>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                           		</form:form><!-- end form -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                    <!-- END CONTENT -->

                </div><!-- end fullwidth -->
         </section>
</body>

<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery-ui.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/retina.js" />"></script>
<script src="<c:url value="/resources/js/sidebar.js" />"></script>
<script src="<c:url value="/resources/js/circle.js" />"></script>
<script src="<c:url value="/resources/js/progress.js" />"></script>
<script src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"></script>
<script src="<c:url value="/resources/js/contact.js" />"></script>
<script src="<c:url value="/resources/js/parallax.js" />"></script>
<script src="<c:url value="/resources/js/owl.carousel.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-select.js" />"></script>
<script src="<c:url value="/resources/js/custom.js" />"></script>
<script src="<c:url value="/resources/js/jquery.themepunch.tools.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.themepunch.revolution.min.js" />"></script>
<script src="<c:url value="/resources/js/revslider.js" />"></script>
 <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat:  28.613459424004418, lng: -10.898437500000004},
          zoom: 2,
          minZoom: 2,
          maxZoom: 2
        });
      
        var geocoder = new google.maps.Geocoder;
        geocoder.geocode({'address': 'Stati Uniti'}, function(results, status) {
          if (status === 'OK') {
         
            new google.maps.Marker({
              map: map,
              animation: google.maps.Animation.DROP,
              position: results[0].geometry.location
            });
          } else {
            window.alert('Geocode was not successful for the following reason: ' +
                status);
          }
        });
        var geocoder = new google.maps.Geocoder;
        geocoder.geocode({'address': 'Italy'}, function(results, status) {
          if (status === 'OK') {
          
            new google.maps.Marker({
              map: map,
              animation: google.maps.Animation.DROP,
              position: results[0].geometry.location
            });
          } else {
            window.alert('Geocode was not successful for the following reason: ' +
                status);
          }
        });
        var geocoder = new google.maps.Geocoder;
        geocoder.geocode({'address': 'Argentina'}, function(results, status) {
          if (status === 'OK') {
         
            new google.maps.Marker({
              map: map,
              animation: google.maps.Animation.DROP,
              position: results[0].geometry.location
            });
          } else {
            window.alert('Geocode was not successful for the following reason: ' +
                status);
          }
        });
        var geocoder = new google.maps.Geocoder;
        geocoder.geocode({'address': 'El Salvador'}, function(results, status) {
          if (status === 'OK') {
            new google.maps.Marker({
              map: map,
              animation: google.maps.Animation.DROP,
              position: results[0].geometry.location
            });
          } else {
            window.alert('Geocode was not successful for the following reason: ' +
                status);
          }
        });
        var geocoder = new google.maps.Geocoder;
        geocoder.geocode({'address': 'Australia'}, function(results, status) {
          if (status === 'OK') {
            new google.maps.Marker({
              map: map,
              animation: google.maps.Animation.DROP,
              position: results[0].geometry.location
            });
          } else {
            window.alert('Geocode was not successful for the following reason: ' +
                status);
          }
        });
        var geocoder = new google.maps.Geocoder;
        geocoder.geocode({'address': 'Germania'}, function(results, status) {
          if (status === 'OK') {
            new google.maps.Marker({
              map: map,
              animation: google.maps.Animation.DROP,
              position: results[0].geometry.location
            });
          } else {
            window.alert('Geocode was not successful for the following reason: ' +
                status);
          }
        });
      }
      
      
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdr4H1jBU8zz1M_6pyyUfSp6N7HTsgMEc&callback=initMap"
    async defer></script>

<script>
$( "#tab_myTravel" ).click(function() {
	$("#create-travel-section").hide();
	$("#my-travel-section").show();
	});
	
$( "#tab_createTravel" ).click(function() {
	$('#my-travel-section').hide();
	$("#create-travel-section").show();
	});
$("#add-stage").click(function(){
    $("#stages").append('<div class="col-md-12 col-sm-12 col-xs-12"> <input type="text" class="form-control" placeholder="Extra Save Point *" name="city" id="city">  </div><div class="col-md-6 col-sm-6 col-xs-12"><input type="text" class="form-control" placeholder="Start at *" name="startDate" id="startDate"> </div><div class="col-md-6 col-sm-6 col-xs-12"><input type="text" class="form-control" placeholder="Finish at *" name="endDate" id="endDate"> </div>');
});
	
</script>
</html>