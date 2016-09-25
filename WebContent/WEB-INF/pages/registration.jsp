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
                    <h3>Register</h3>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
<section class="section clearfix">
        <div class="container">
                    <!-- START CONTENT -->
                    <div class="row">
                        <div id="content" class="col-md-12 col-sm-12 col-xs-12">
                            <br>
                            <hr>
                            <br>
                            <form id="infoform">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="hotel-title">
                                            <h5>CREATE PROFILE</h5>
                                        </div>

                                        <div class="row">
                                           
                                            <div class="col-md-12 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Username"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Email *"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Confirm Email *"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Phone Number"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Password *"> 
                                            </div>
                                           <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Confirm Password *"> 
                                            </div>                
                                        </div>
                                    </div><!-- end col -->

                                      <div class="col-sm-6">
                                        <div class="hotel-title">
                                            <h5>TELL ME SOMETHING ABOUT YOUR TRAVEL</h5>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="First *"> 
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Last *"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Birthday *"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Country of Passport"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="Avatar"> 
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="text" class="form-control" placeholder="How many years in terms of travel experience do you have?"> 
                                            </div>
                                        
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                              	  <p>Select all the country that you visited...like in the example</p>
                                                <input type="text" class="form-control" id="removeConfirmationTags" value="Italy">
                                            </div>                   
                                        </div>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                                <br>
                                <hr>
                                <br>
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <p>By selecting to complete this registration I acknowledge that I have read and accept <a href="#">the rules</a> &amp; <a href="#">restrictions terms</a> &amp; <a href="#">conditions</a>, and <a href="#">privacy policy</a>.</p>
                                        <br>
                                        <a href="#" class="btn btn-primary btn-normal btn-lg">Confirm Register</a>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                            </form><!-- end form -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                    <!-- END CONTENT -->

                </div><!-- end fullwidth -->
                
             
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
<script>
        $(function(){
            var sampleTags = ['Aruba', 'Afghanistan', 'Angola', 'Anguilla', 'Albania', 'Andorra', 'Netherlands Antilles', 'United Arab Emirates', 'Argentina', 'Armenia', 'American Samoa', 'Antarctica', 'French Southern territories', 'Antigua and Barbuda', 'Australia', 'Austria', 'Azerbaijan', 'Burundi', 'Belgium', 'Benin', 'Burkina Faso', 'Bangladesh', 'Bulgaria', 'Bahrain', 'Bahamas', 'Bosnia and Herzegovina', 'Belarus', 'Belize', 'Bermuda', 'Bolivia', 'Brazil', 'Barbados', 'Brunei', 'Bhutan', 'Bouvet Island', 'Botswana', 'Central African Republic', 'Canada', 'Cocos (Keeling) Islands', 'Switzerland', 'Chile', 'China', 'Côte d�?Ivoire', 'Cameroon', 'Congo, The Democratic Republic of the', 'Congo', 'Cook Islands', 'Colombia', 'Comoros', 'Cape Verde', 'Costa Rica', 'Cuba', 'Christmas Island', 'Cayman Islands', 'Cyprus', 'Czech Republic', 'Germany', 'Djibouti', 'Dominica', 'Denmark', 'Dominican Republic', 'Algeria', 'Ecuador', 'Egypt', 'Eritrea', 'Western Sahara', 'Spain', 'Estonia', 'Ethiopia', 'Finland', 'Fiji Islands', 'Falkland Islands', 'France', 'Faroe Islands', 'Micronesia, Federated States of', 'Gabon', 'United Kingdom', 'Georgia', 'Ghana', 'Gibraltar', 'Guinea', 'Guadeloupe', 'Gambia', 'Guinea-Bissau', 'Equatorial Guinea', 'Greece', 'Grenada', 'Greenland', 'Guatemala', 'French Guiana', 'Guam', 'Guyana', 'Hong Kong', 'Heard Island and McDonald Islands', 'Honduras', 'Croatia', 'Haiti', 'Hungary', 'Indonesia', 'India', 'British Indian Ocean Territory', 'Ireland', 'Iran', 'Iraq', 'Iceland', 'Israel', 'Italy', 'Jamaica', 'Jordan', 'Japan', 'Kazakstan', 'Kenya', 'Kyrgyzstan', 'Cambodia', 'Kiribati', 'Saint Kitts and Nevis', 'South Korea', 'Kuwait', 'Laos', 'Lebanon', 'Liberia', 'Libyan Arab Jamahiriya', 'Saint Lucia', 'Liechtenstein', 'Sri Lanka', 'Lesotho', 'Lithuania', 'Luxembourg', 'Latvia', 'Macao', 'Morocco', 'Monaco', 'Moldova', 'Madagascar', 'Maldives', 'Mexico', 'Marshall Islands', 'Macedonia', 'Mali', 'Malta', 'Myanmar', 'Mongolia', 'Northern Mariana Islands', 'Mozambique', 'Mauritania', 'Montserrat', 'Martinique', 'Mauritius', 'Malawi', 'Malaysia', 'Mayotte', 'Namibia', 'New Caledonia', 'Niger', 'Norfolk Island', 'Nigeria', 'Nicaragua', 'Niue', 'Netherlands', 'Norway', 'Nepal', 'Nauru', 'New Zealand', 'Oman', 'Pakistan', 'Panama', 'Pitcairn', 'Peru', 'Philippines', 'Palau', 'Papua New Guinea', 'Poland', 'Puerto Rico', 'North Korea', 'Portugal', 'Paraguay', 'Palestine', 'French Polynesia', 'Qatar', 'Réunion', 'Romania', 'Russian Federation', 'Rwanda', 'Saudi Arabia', 'Sudan', 'Senegal', 'Singapore', 'South Georgia and the South Sandwich Islands', 'Saint Helena', 'Svalbard and Jan Mayen', 'Solomon Islands', 'Sierra Leone', 'El Salvador', 'San Marino', 'Somalia', 'Saint Pierre and Miquelon', 'Sao Tome and Principe', 'Suriname', 'Slovakia', 'Slovenia', 'Sweden', 'Swaziland', 'Seychelles', 'Syria', 'Turks and Caicos Islands', 'Chad', 'Togo', 'Thailand', 'Tajikistan', 'Tokelau', 'Turkmenistan', 'East Timor', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Tuvalu', 'Taiwan', 'Tanzania', 'Uganda', 'Ukraine', 'United States Minor Outlying Islands', 'Uruguay', 'United States', 'Uzbekistan', 'Holy See (Vatican City State)', 'Saint Vincent and the Grenadines', 'Venezuela', 'Virgin Islands, British', 'Virgin Islands, U.S.', 'Vietnam', 'Vanuatu', 'Wallis and Futuna', 'Samoa', 'Yemen', 'Yugoslavia', 'South Africa', 'Zambia', 'Zimbabwe'];
            var eventTags = $('#eventTags');
            var addEvent = function(text) {
                $('#events_container').append(text + '<br>');
            };
            eventTags.tagit({
                availableTags: sampleTags,
                beforeTagAdded: function(evt, ui) {
                    if (!ui.duringInitialization) {
                        addEvent('beforeTagAdded: ' + eventTags.tagit('tagLabel', ui.tag));
                    }
                },
                afterTagAdded: function(evt, ui) {
                    if (!ui.duringInitialization) {
                        addEvent('afterTagAdded: ' + eventTags.tagit('tagLabel', ui.tag));
                    }
                },
                beforeTagRemoved: function(evt, ui) {
                    addEvent('beforeTagRemoved: ' + eventTags.tagit('tagLabel', ui.tag));
                },
                afterTagRemoved: function(evt, ui) {
                    addEvent('afterTagRemoved: ' + eventTags.tagit('tagLabel', ui.tag));
                },
                onTagClicked: function(evt, ui) {
                    addEvent('onTagClicked: ' + eventTags.tagit('tagLabel', ui.tag));
                },
                onTagExists: function(evt, ui) {
                    addEvent('onTagExists: ' + eventTags.tagit('tagLabel', ui.existingTag));
                }
            });
           
            $('#removeConfirmationTags').tagit({
                availableTags: sampleTags,
                removeConfirmation: true,
                allowSpaces: true
            });
            
        });
    </script>


</html>