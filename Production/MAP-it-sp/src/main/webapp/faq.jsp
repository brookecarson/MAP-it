<%--
  Created by IntelliJ IDEA.
  User: MJ
  Date: 2/25/2022
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
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

        <!-- Modernizer js -->
        <script src="js/modernizr.custom.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap Expand and Collapse FAQ Accordion</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,500|Open+Sans">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            background: #fff;
        }
        .accordion .card {
            background: none;
            border: none;
        }
        .accordion .card .card-header {
            background: none;
            border: none;
            padding: .4rem 1rem;
            font-family: "Roboto", sans-serif;
        }
        .accordion .card-header h2 span {
            float: left;
            margin-top: 10px;
        }
        .accordion .card-header .btn {
            color: #2f2f31;
            font-size: 1.04rem;
            text-align: left;
            position: relative;
            font-weight: 500;
            padding-left: 2rem;
        }
        .accordion .card-header i {
            font-size: 1.2rem;
            font-weight: bold;
            position: absolute;
            left: 0;
            top: 9px;
        }
        .accordion .card-header .btn:hover {
            color: #ff8300;
        }
        .accordion .card-body {
            color: #324353;
            padding: 0.5rem 3rem;
        }
        .page-title {
            margin: 3rem 0 3rem 1rem;
            font-family: "Roboto", sans-serif;
            position: relative;
        }
        .page-title::after {
            content: "";
            width: 80px;
            position: absolute;
            height: 3px;
            border-radius: 1px;
            background: #73bb2b;
            left: 0;
            bottom: -15px;
        }
        .accordion .highlight .btn {
            color: #74bd30;
        }
        .accordion .highlight i {
            transform: rotate(180deg);
        }
    </style>
    <script>
        $(document).ready(function(){
            // Add minus icon for collapse element which is open by default
            $(".collapse.show").each(function(){
                $(this).prev(".card-header").addClass("highlight");
            });

            // Highlight open collapsed element
            $(".card-header .btn").click(function(){
                $(".card-header").not($(this).parents()).removeClass("highlight");
                $(this).parents(".card-header").toggleClass("highlight");
            });
        });
    </script>

</head>

<body class = "faq">


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
                        <a href="#" class="page-scroll btn btn-primary animated1">Read More</a>
                    </div>
                </div>
            </div>
            <!--/ Carousel item end -->

            <div class="item">
                <img class="img-responsive" src="images/galaxy.jpg" alt="slider">
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

<!-- Begin FAQ Section -->
<div class="faq_area section_padding_130" id="faq">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-8 col-lg-6">
                <!-- Section Heading-->
                <div class="section_heading text-center wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                    <h3><span>Frequently </span> Asked Questions</h3>
                    <p>View our most frequently asked questions below</p>
                    <div class="line"></div>
                </div>
            </div>
        </div>
        <!-- FAQ Area-->
        <div class="container-lg">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-title">FAQs</h1>
                    <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="clearfix mb-0">
                                    <a class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><i class="fa fa-chevron-circle-down"></i>Question 1</a>
                                </h2>
                            </div>
                            <div class="row justify-content-center">
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">Q1 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-chevron-circle-down"></i>Question 2</a>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">Q2 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-chevron-circle-down"></i>Question 3</a>
                                    </h2>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">Q3 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingFour">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"><i class="fa fa-chevron-circle-down"></i>Question 4</a>
                                    </h2>
                                </div>
                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                    <div class="card-body">Q4 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingFive">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive"><i class="fa fa-chevron-circle-down"></i>Question 5</a>
                                    </h2>
                                </div>
                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                    <div class="card-body">Q5 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingSix">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix"><i class="fa fa-chevron-circle-down"></i>Question 6</a>
                                    </h2>
                                </div>
                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
                                    <div class="card-body">Q6 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingSeven">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSeven"><i class="fa fa-chevron-circle-down"></i>Question 7</a>
                                    </h2>
                                </div>
                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
                                    <div class="card-body">Q7 Answer</div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingEight">
                                    <h2 class="mb-0">
                                        <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight"><i class="fa fa-chevron-circle-down"></i>Question 8</a>
                                    </h2>
                                </div>
                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordionExample">
                                    <div class="card-body">Q8 Answer</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        <script src="js/contact_us.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/script.js"></script>
    </div>
    </div>
</body>
</html>
