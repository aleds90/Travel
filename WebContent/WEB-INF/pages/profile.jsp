<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <li class="active"><a href="#tab_01" aria-controls="tab_01" role="tab" data-toggle="tab" id="tab_all"> My Travels</a></li>
     	       	<li><a href="#tab_02" aria-controls="tab_02" role="tab" data-toggle="tab" id="tab_relax"> Favorite</a></li>
         		<li><a href="#tab_02" aria-controls="tab_03" role="tab" data-toggle="tab" id="tab_relax"> Dreams</a></li>
                <li><a href="#tab_04" aria-controls="tab_04" role="tab" data-toggle="tab" id="tab_ontheroad">  Create Travel</a></li>
                <li><a href="#tab_05" aria-controls="tab_05" role="tab" data-toggle="tab" id="tab_international"> Information</a></li>
                           
            </ul>
         </div>
    </div>


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
</html>