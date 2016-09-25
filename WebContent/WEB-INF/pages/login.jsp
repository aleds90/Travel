<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                <a id="brand" class="clearfix navbar-brand" href="index.html"><img src="resources/images/logo.png" alt="Trips"></a>
                            </div><!-- end navbar-header -->
                            <div id="navbar-collapse" class="navbar-right navbar-collapse collapse clearfix">
                                <ul class="nav navbar-nav yamm">
                                    <li class="dropdown">
                                        <a href="#">HOME</a>
                                     
                                    </li><!-- end yamm-fw -->                                                             
                                    <li><a href="#">About</a></li>
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
                <img src="resources/images/logo.png" alt="Trips">
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
                    <h3>Login &amp; Register</h3>
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
                        <div id="content" class="col-md-12 col-sm-12 col-xs-12">
                            <div class="post-wrapper row clearfix">
                                <div class="col-md-6">
                                    <h5>NEW COSTUMER</h5>
                                    <p>By creating an account you will be able to travel, be up to date other people, and keep track of the trips.</p>
                                    <hr>
                                    <a href="/Travel/registration" class="btn btn-primary btn-normal border-radius">REGISTER NOW</a>
                                </div><!-- end col -->

                                <div class="col-md-6">
                                    <h5>RETURN COSTUMER</h5>
                                    <p>I am a returning customer</p>
                                    <br>

                                    <form class="form-horizontal" action="<c:url value='j_spring_security_check' />" method='POST'>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Username:</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name='j_username' >
                                        </div>
                                            <label for="inputPassword3" class="col-sm-2 control-label">Password:</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name='j_password'>
                                        </div>
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <hr>
                                            <button type="submit" class="btn btn-primary btn-normal border-radius pull-right" name="submit">Sign in</button>
                                        </div>
                                        </div>
                                    </form>

                                </div><!-- end col -->


                            </div><!-- end post-wrapper -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                    <!-- END CONTENT -->

                </div><!-- end fullwidth -->
            </div><!-- end row -->
        </div><!-- end container -->
        
        <footer class="footer clearfix">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-6 col-xs-12 text-center">
                    <div class="flogo">
                        <img src="resources/images/flogo.png" alt="">
                    </div><!-- end logo -->
                </div><!-- end col -->
                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="widget">
                        <div class="widget-title">
                            <h3>ABOUT</h3>
                        </div><!-- end title -->
                        <div class="textwidget">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aut dignissimos ea est, impedit incidunt, laboriosam maxime molestias numquam odio officiis, possimus quo rem. </p>
                            <p>Ab aut dignissimos ea est, impedit incidunt, laboriosam maxime molestias numquam odio officiis.</p>
                        </div><!-- end textwidget -->
                    </div><!-- end widget -->
                </div><!-- end col -->
                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="widget">
                        <div class="widget-title">
                            <h3>NEWSLETTER</h3>
                        </div><!-- end title -->
                        <div class="newsletterwidget">
                            <p>Subscribe to our newsletter to receive news &amp; updates. We promise not spamming you, super promise! </p>
                            <form id="newsletter" class="form-inline">
                                <div class="form-group">
                                    <input type="text" class="form-control border-radius" placeholder="Your email here">
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg border-radius">Send</button>
                            </form>
                        </div><!-- end newsletter widget -->
                    </div><!-- end widget -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </footer>
    
   

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