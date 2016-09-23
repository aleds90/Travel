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
                                    <li><a href="#">My travels</a></li> 
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

<section id="page-header" class="section background">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">          
                    <h3>Single Details</h3>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
   
<section class="section clearfix">
        <div class="container">
            <div class="row">
                <div id="fullwidth" class="col-sm-12">

                    <!-- START CONTENT -->
                    
                    <div class="row">
                        <div id="content" class="col-md-8 col-sm-12 col-xs-12">
                            <div class="post-wrapper">
                                <div class="post-title clearfix">
                                    <h5>${travel.title}</h5>
                                </div><!-- end ost-title -->

                                <div class="post-meta clearfix">
                                    <span><i class="icon-attach"></i> ${travel.stages.toArray()[0].startDate }</span>
                                    <span><i class="icon-map110"></i> ${travel.stages.toArray()[0].city.country.region }, ${t.stages.toArray()[0].city.country.name }</span>
                                </div><!-- ne dpost-meta -->

                                <div class="post-content clearfix">
                                    <p>${travel.description}</p>

                                    <img src="/Travel/resources/images/upload/single.png" alt="" class="img-responsive"><br>
			  						<div class="post-content clearfix">
			                            <ul class="c1">
			                                <div class="widget-title">
			                                    <h3>ORGANIZER</h3>
			                                </div><!-- end title -->
			                                 <a>${travel.user.profile.name} ${travel.user.profile.surname} </a>
			                                <div class="widget-title">
			                                    <h3>MAX NUMBER ATTENDEES</h3>
			                                </div><!-- end title -->
			                                <p>Available ${travel.maxNumberAttendees} slots</p>
			                                <div class="widget-title">
			                                    <h3>CATEGORY</h3>
			                                </div><!-- end title -->
			                                    <a>Adventure</a>
			                               <div class="widget-title">
			                                    <h3>BUDGET</h3>
			                                </div><!-- end title -->
			                                <p>Low Budget ( max 1000$) </p>
			                                <div class="widget-title">
			                                    <h3>USERS INTERESTED</h3>
			                                </div><!-- end title -->
			                                 <a>Marco Di Stefano</a>, <a>Luca Scafati</a>
			                            	<div class="widget-title">
			                                    <h3>PARTICIPANTS</h3>
			                                </div><!-- end title -->
			                                <a>Marta Lonza</a>, <a>Giovanni Bellocci</a>
			                            </ul>
			                        </div>


                                </div><!-- end post-content -->

                                <div class="tags clearfix">
                                    <h5>TAGS : </h5>
                                    <a href="#" class="btn btn-default btn-normal">THAILANDIA</a>
                                    <a href="#" class="btn btn-default btn-normal">BANGKOK</a>
                                    <a href="#" class="btn btn-default btn-normal">ADVENTURE</a>
                                </div><!-- end tags -->

                                <div class="comments clearfix">
                                    <h5>10 COMMENTS</h5>
                                    <hr>
                                    <ul class="media-list clearfix">
                                        <li class="media clearfix">
                                            <a class="pull-left" href="#">
                                                <img class="media-object" src="/Travel/resources/images/upload/comment_01.png" alt="Generic placeholder image">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Luke Bring</h4>
                                                <p class="comment-meta">
                                                   January 10, 2015 . 11:05 PM . <a href="#"> Reply</a>
                                                </p>
                                                <p>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                            </div>
                                        </li>
                                        
                                        <li class="media comments-answer clearfix">
                                            <a class="pull-left" href="#">
                                                <img class="media-object" src="/Travel/resources/images/upload/comment_02.png" alt="Generic placeholder image">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Jenny DOE</h4>
                                                <p class="comment-meta">
                                                   January 10, 2015 . 11:05 PM . <a href="#">Reply</a>
                                                </p>
                                                <p>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                            </div>
                                        </li>
                                    </ul>

                                    <div class="comments-form clearfix">
                                    <h5>LEAVE A COMMENT</h5>
                                    <hr>
                                    <form id="contactform" class="row" action="#" name="contactform" method="post">
                           
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                        <textarea class="form-control" name="comments" id="comments" rows="8" placeholder="Messages goes here.."></textarea>
                                        <button type="submit" value="SEND" id="submit" class="pull-left btn btn-primary btn-lg border-radius">SUBMIT NOW</button>
                                        </div>
                                    </form>  
                                    </div><!-- end form -->
                                </div><!-- end comments  -->
                            </div><!-- end post-wrapper -->
                        </div><!-- end col -->

                        <div id="sidebar" class="col-md-4 col-sm-12 col-xs-12">
                            <div class="widget clearfix">
                                <div class="widget-title">
                                    <h3>STAGES</h3>
                                </div><!-- end title -->
                                <div class="listwidget">
                                    <ul>
                                        <li><a href="#">Bangkok</a></li>
                                        <li><a href="#">Nonthaburi</a></li>
                                        <li><a href="#">Chiang Mai</a></li>
                                        <li><a href="#">Udon Thani</a></li>
                                        <li><a href="#">Hat Yai</a></li>
                                        <li><a href="#">Songkhla</a></li>
                                        <li><a href="#">Bangkok</a></li>
                                    </ul>
                                </div><!-- end listwidget -->
                            </div><!-- end widget -->

                            <div class="widget clearfix">
                                <div class="widget-title">
                                    <h3>FLICKR GALLERY</h3>
                                </div><!-- end title -->
                                <div class="flickrwidget clearfix">
                                    <ul class="list-inline">
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_01.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_02.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_03.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_04.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_05.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_06.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_07.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_08.png" alt=""></a></li>
                                        <li><a href="#"><img src="/Travel/resources/images/upload/sidebar_09.png" alt=""></a></li>
                                    </ul>
                                </div><!-- end listwidget -->
                            </div><!-- end widget -->

                            <div class="widget clearfix">
                                <div class="widget-title">
                                    <h3>SIMILAR TRAVEL</h3>
                                </div><!-- end title -->
                                <div class="listwidget">
                                    <ul>
                                        <li><a href="#">Thailandia one night</a></li>
                                        <li><a href="#">Visite Bangkok</a></li>
                                        <li><a href="#">Explore Asia</a></li>                               
                                    </ul>
                                </div><!-- end listwidget -->
                            </div><!-- end widget -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                    <!-- END CONTENT -->

                </div><!-- end fullwidth -->
            </div><!-- end row -->
        </div><!-- end container -->
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

</html>