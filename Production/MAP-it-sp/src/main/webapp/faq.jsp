<%--
  Created by IntelliJ IDEA.
  User: MJ
  Date: 2/25/2022
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>FAQ</title>

        <!-- Bootstrap Core CSS -->
        <link href="asset/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome CSS -->
        <link href="css/font-awesome.min.css" rel="stylesheet">


        <!-- Animate CSS -->
        <link href="css/animate.css" rel="stylesheet" >

        <!-- Owl-Carousel -->
        <!-- Owl-Carousel is a plugin allowing for the creation of responsive slides with embedded images -->
        <link rel="stylesheet" href="css/owl.carousel.css" >
        <link rel="stylesheet" href="css/owl.theme.css" >
        <link rel="stylesheet" href="css/owl.transitions.css" >

        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!-- Colors CSS -->
        <link rel="stylesheet" type="text/css" href="css/color/green.css">

        <!-- Colors CSS -->
        <link rel="stylesheet" type="text/css" href="css/color/green.css" title="green">
        <link rel="stylesheet" type="text/css" href="css/color/light-green.css" title="light-green">

        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Modernizer js -->
        <script src="js/modernizr.custom.js"></script>


    </head>
</head>

<body class="index">


<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="index.jsp">MAP</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="index.jsp#program">Programs</a>
                </li>
                <li>
                    <a class="page-scroll" href="event-calendar.jsp">Register</a>
                </li>
                <li>
                    <a class="page-scroll" href="media-page.jsp">Media</a>
                </li>
                <li>
                    <a class="page-scroll" href="about-us.jsp">About Us</a>
                </li>
                <li>
                    <a class="page-scroll" href="index.jsp#contact">Contact</a>
                </li>
                <li>
                    <a class="page-scroll" href="faq.jsp">FAQ</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<!-- Start Home Page Slider -->
<section id="page-top">
    <!-- Carousel -->
    <div id="main-slide" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#main-slide" data-slide-to="0" class="active"></li>
            <li data-target="#main-slide" data-slide-to="1"></li>
        </ol>
        <!--/ Indicators end-->

        <!-- Carousel inner -->
        <div class="carousel-inner">
            <div class="item active">
                <img class="img-responsive" src="images/header-bg-1.jpg" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h1 class="animated3">
                            <span><strong>ISB</strong> presents to you <strong>MAP</strong></span>
                        </h1>
                        <p class="animated2">An all encompassing, inviting, and approachable sports program <br> to promote health & competition within our communities</p>
                        <a href="#feature" class="page-scroll btn btn-primary animated1">Read More</a>
                    </div>
                </div>
            </div>
            <!--/ Carousel item end -->

            <div class="item">
                <img class="img-responsive" src="images//galaxy.jpg" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h1 class="animated2">
                            <span><strong>Competition</strong> & <strong>Comradery</strong></span>
                        </h1>
                        <p class="animated1">Through leagues, tournaments, camps, and sporting events<br> ISB MAP aims to improve ethical and athletic abilities</p>
                        <a class="animated3 slider btn btn-primary btn-min-block" href="#">Get Now</a>

                    </div>
                </div>
            </div>
            <!--/ Carousel item end -->
        </div>
        <!-- Carousel inner end-->

        <!-- Controls -->
        <a class="left carousel-control" href="#main-slide" data-slide="prev">
            <span><i class="fa fa-angle-left"></i></span>
        </a>
        <a class="right carousel-control" href="#main-slide" data-slide="next">
            <span><i class="fa fa-angle-right"></i></span>
        </a>
    </div>
    <!-- /carousel -->
</section>
<!-- End Home Page Slider -->

<!-- Start Contact Us Section -->
<footer class="style-1">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-xs-12">
                <span class="copyright">Copyright &copy; <a href="http://guardiantheme.com">GuardinTheme</a> 2015</span>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="footer-social text-center">
                    <ul>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="footer-link">
                    <ul class="pull-right">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                        <li><a href="admin-login.jsp">Admin</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Contact Us & FooterSection -->


<div id="loader">
    <div class="spinner">
        <div class="dot1"></div>
        <div class="dot2"></div>
    </div>
</div>



<!-- jQuery Version 2.1.1 -->
<script src="js/jquery-2.1.1.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="asset/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/classie.js"></script>
<script src="js/count-to.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.fitvids.js"></script>
<script src="js/styleswitcher.js"></script>

<!-- Contact Form JavaScript -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/script.js"></script>

</body>
</html>
