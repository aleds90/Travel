<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/settings.css" />" rel="stylesheet">

<link href="<c:url value="/resources/tags/jquery.tagit.css" />" rel="stylesheet">
<link href="<c:url value="/resources/tags/tagit.ui-zendesk.css" />" rel="stylesheet">


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
                    <h3>SUCCESSFUL REGISTRATION</h3>
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
                            <div class="post-wrapper text-center clearfix">
                                <div class="successful">
                                    <img src="/Travel/resources/images/successful.png" alt="">
                                </div>
                                <h6>Dear client,</h6>
                                <p>Thank you very much for ordering our product. You will be receiving an e-mail within next 72 hours, with the attachment or instructions to download.<br>
                                For any problems please <a href="mailto:mail@yoursite.com">mail@yoursite.com</a> </p>
                                <a href="/Travel" class="btn btn-primary btn-normal btn-lg">CONTINUE TO LOGIN</a>
                            </div><!-- end post-wrapper -->
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

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<c:url value="/resources/tags/tag-it.js" />"></script>

<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script src="<c:url value="/resources/js/validator.js" />"></script>


</html>