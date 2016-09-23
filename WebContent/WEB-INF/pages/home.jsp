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
   
<section id="page-header">
        <div class="container-full absolute">
            <div class="container">
                <div class="section-container">
                    <div class="home-form">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="active">
                                <a href="#tab_01" aria-controls="tab_01" role="tab" data-toggle="tab"><i class="icon-hotel68"></i> RELAX</a></li>
                            <li><a href="#tab_05" aria-controls="tab_05" role="tab" data-toggle="tab"><i class="icon-bicycle12"></i> ADVENTURE</a></li>
                            <li><a href="#tab_04" aria-controls="tab_04" role="tab" data-toggle="tab"><i class="icon-location38"></i> ON THE ROAD</a></li>
                            <li><a href="#tab_02" aria-controls="tab_02" role="tab" data-toggle="tab"><i class="icon-airplane70"></i> INTERNATIONAL</a></li>
                            <li><a href="#tab_03" aria-controls="tab_03" role="tab" data-toggle="tab"><i class="icon-sedan3"></i> LUXURY</a></li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="tab_01">
                                <h6>WHERE WOULD YOU LIKE TO GO?</h6>
                                <form class="bookform form-inline row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <input type="text" class="form-control" placeholder=" Destination: Country, City,Airport,...">
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check in" id="datepicker">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check out" id="datepicker1">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                   
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <button type="submit" class="btn btn-primary btn-block"><i class="icon-search"></i> FIND NOW</button>
                                    </div>
                                </form>
                            </div><!-- end tab-pane -->

                            <div role="tabpanel" class="tab-pane" id="tab_02">
                                <h6>WHO WOULD YOU LIKE TO GO?</h6>
                                <form class="bookform form-inline row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <input type="text" class="form-control" placeholder=" Destination: Country, City,Airport,...">
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check in" id="datepicker2">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check out" id="datepicker3">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                              
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <button type="submit" class="btn btn-primary btn-block"><i class="icon-search"></i> FIND NOW</button>
                                    </div>
                                </form>
                            </div><!-- end tab-pane -->

                            <div role="tabpanel" class="tab-pane" id="tab_03">
                                <h6>HOW WOULD YOU LIKE TO GO?</h6>
                                <form class="bookform form-inline row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <input type="text" class="form-control" placeholder=" Destination: Country, City,Airport,...">
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check in" id="datepicker4">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check out" id="datepicker5">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                 
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <button type="submit" class="btn btn-primary btn-block"><i class="icon-search"></i> FIND NOW</button>
                                    </div>
                                </form>
                            </div><!-- end tab-pane -->

                            <div role="tabpanel" class="tab-pane" id="tab_04">
                                <h6>WHEN  WOULD YOU LIKE TO GO?</h6>
                                <form class="bookform form-inline row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <input type="text" class="form-control" placeholder=" Destination: Country, City,Airport,...">
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check in" id="datepicker6">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check out" id="datepicker7">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                          
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <button type="submit" class="btn btn-primary btn-block"><i class="icon-search"></i> FIND NOW</button>
                                    </div>
                                </form>
                            </div><!-- end tab-pane -->

                            <div role="tabpanel" class="tab-pane" id="tab_05">
                                <h6>WHEN  WOULD YOU LIKE TO GO?</h6>
                                <form class="bookform form-inline row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <input type="text" class="form-control" placeholder=" Destination: Country, City,Airport,...">
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check in" id="datepicker8">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasDatepicker" placeholder="Check out" id="datepicker9">
                                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                              
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                        <button type="submit" class="btn btn-primary btn-block"><i class="icon-search"></i> FIND NOW</button>
                                    </div>
                                </form>
                            </div><!-- end tab-pane -->
                        </div><!-- end tab-content -->
                    </div><!-- end homeform -->
                </div><!-- section-container -->
            </div>
        </div><!-- end container -->
    </section>
   
<section class="section clearfix">
        <div class="container">
            <div class="row">
                <div id="fullwidth" class="col-sm-12">

                    <!-- START CONTENT -->
                    <c:forEach items="${travels}" var="t">
                    <div class="post-wrapper row clearfix border-bottom">
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
                                <a href="/Travel/secured/travel" class="btn btn-primary btn-sm">See More</a>
                            </div><!-- end post-content -->
                        </div><!-- end col -->
                        <div class="col-md-6 col-sm-12">
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
                    </div>
                    </c:forEach>
                      <!-- end post-wrapper -->     
                  
                        <nav class="text-center">
                            <ul class="pagination">
                                <li>
                                  <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                  </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                  <a href="#" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                  </a>
                                </li>
                            </ul>
                        </nav>
                    <!-- END CONTENT -->
                </div><!-- end fullwidth -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
    
<div class="copyrights clearfix">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <p>COPYRIGHT TRENDING TEMPLATES 2015. ALL RIGHT RESERVED</p>
                </div><!-- end col -->

                <div class="col-md-6 text-right">
                    <div class="social-footer">
                        <a href="#" title="Facebook"><i class="icon-facebook"></i></a>
                        <a href="#" title="Twitter"><i class="icon-twitter"></i></a>
                        <a href="#" title="Pinterest"><i class="icon-pinterest"></i></a>
                        <a href="#" title="SU.PR"><i class="icon-stumbleupon"></i></a>
                        <a href="#" title="Instagram"><i class="icon-instagrem"></i></a>
                        <a href="#" title="Dribbble"><i class="icon-dribbble"></i></a>
                        <a href="#" title="Vimeo"><i class="icon-vimeo"></i></a>
                        <a href="#" title="Tumblr"><i class="icon-tumblr"></i></a>
                        <a href="#" title="RSS"><i class="icon-rss"></i></a>
                    </div><!-- end social-footer -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
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

</html>