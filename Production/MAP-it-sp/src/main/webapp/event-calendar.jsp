<%@ page import="java.util.List" %>
<%@ page import="com.example.mapitsp.dao.eventDAO" %>
<%@ page import="com.example.mapitsp.model.event" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ISB MAP</title>

    <!-- Bootstrap Core CSS -->
    <link href="testast/css/bootstrap.min.css" rel="stylesheet">

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
    <link rel="shortcut icon" href="images/MAP-logo.jpg">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <!-- Modernizer js -->
    <script src="js/modernizr.custom.js"></script>


</head>

<body class="index">

<!-- Navigation -->
<nav class="navbar navbar-expand-sm bg-success navbar-dark">
    <div class="container-fluid">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">MAP</a>
            </li>
            <li>
                <a class="nav-link active" href="index.jsp#program">Programs</a>
            </li>
            <li>
                <a class="nav-link" href="event-calendar.jsp">Register</a>
            </li>
            <li>
                <a class="nav-link" href="media-page.jsp">Media</a>
            </li>
            <li>
                <a class="nav-link" href="index.jsp#about-us">About Us</a>
            </li>
            <li>
                <a class="nav-link" href="index.jsp#contact">Contact</a>
            </li>
            <li>
                <a class="nav-link" href="faq.jsp">FAQ</a>
            </li>
        </ul>
    </div>
</nav>



<!-- Start Home Page Slider -->
<section id="page-top">
    <!-- Carousel -->
    <div id="main-slide" class="carousel slide" data-ride="carousel">

        <!-- Carousel inner -->
        <div class="carousel-inner">
            <div class="item active">
                <img class="img-responsive" src="images/header-bg-1.jpg" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h1 class="animated3">
                            <span><strong>Register</strong> for an event now!</span>
                        </h1>
                        <p class="animated2">We host events throughout the year <br> View and get enrolled into an upcoming event</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Home Page Slider -->


<!-- Start Feature Section -->
<section id="program" class="feature-section">
    <div class="row">
        <div class="container">
            <h3 class="text-center">List of Events</h3>
            <div class="container text-center">
                <a href="#MainForm" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ModalForm">Register Now!</a>
            </div>
            <hr>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Event Title</th>
                    <th>Status</th>
                    <th>Type</th>
                    <th>Sport</th>
                    <th>Location</th>
                    <th>Gender</th>
                    <th>Date</th>
                    <th>Link</th>
                </tr>
                </thead>
                <tbody>
                <%
                    eventDAO eventdao = new eventDAO();
                    List<event> eventList = eventdao.selectAllEvents(); %>
                <% for(event mainEvent : eventList) { %>

                <tr>
                    <td> <%= mainEvent.getTitle() %></td>
                    <td> <%= mainEvent.getStatus() %></td>
                    <td> <%= mainEvent.getType() %></td>
                    <td> <%= mainEvent.getSport() %></td>
                    <td> <%= mainEvent.getLocation() %></td>
                    <td> <%= mainEvent.getGender() %></td>
                    <td> <%= mainEvent.getDate() %></td>
                    <td> <%= mainEvent.getLink() %></td>

                </tr>
                <% } %>
                </tbody>
            </table>

            <%  int id = 0;
                String strId = request.getParameter("id");
                if(strId != null) id = Integer.parseInt(strId);

                event myEvent;

                if(id != 0) myEvent = eventdao.selectEvent(id);
                else {
                    myEvent = new event();
                }
            %>
        </div>
    </div>
</section>
<!-- End Feature Section -->


<!-- Start Contact Us Section -->
<section id="contact" class="contact">
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
</section>
<!-- End Contact Us & FooterSection -->


<div class="modal" id="ModalForm">
    <div class="modal-dialog">
        <div class="modal-content">


            <div class="modal-header">
                <h4 class="modal-title" id="ModalTitle">New Registration</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form method="post" action="userAddRegistration" >
                <div class="modal-body">
                    <div class="container" id="MainForm">


                        <div class="row mb-2" id="div_form_grp_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="grp_name"> Group Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="grp_name" id="grp_name" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_cptn_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_name"> Captain Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_name" id="cptn_name" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_cptn_email" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_email"> Captain Email: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_email" id="cptn_email" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_cptn_number" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_number"> Captain Number: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_number" id="cptn_number" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_one" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_one"> Member One Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_one" id="mem_one" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_two" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_two"> Member Two Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_two" id="mem_two" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_three" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_three"> Member Three Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_three" id="mem_three" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_four" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_four"> Member Four Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_four" id="mem_four" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_five" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_five"> Member Five Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_five" id="mem_five" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_six" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_six"> Member Six Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_six" id="mem_six" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_seven" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_seven"> Member Seven Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_seven" id="mem_seven" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_code" style="display:flex;">
                            <label class="col-form-label col-md-3" for="code"> Code: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="code" id="code" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_date" style="display:flex;">
                            <label class="col-form-label col-md-3" for="date"> Date: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="date" name="date" id="date" autocomplete="off"  />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" value="submit" class="btn btn-success me-2" > Add </button>
                    <button type="reset" class="btn btn-warning me-2" > Clear </button>
                    <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>


<!-- jQuery Version 2.1.1 -->
<script src="js/jquery-2.1.1.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="testast/js/bootstrap.min.js"></script>

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
<script src="js/contact_us.js"></script>
<script src="https://smtpjs.com/v3/smtp.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/script.js"></script>

<script>
    function conf(){
        return window.confirm('Are you sure you want to delete?');
    }

    <% if (id != 0)  {

         %>
    var myModal = new bootstrap.Modal(document.getElementById('EditModalForm'), {})
    myModal.toggle() <% } %>

</script>


</body>

</html>