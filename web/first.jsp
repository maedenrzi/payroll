<%--
  Created by maedenrzi
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<! DOCTYPE html>
<html lang="vi">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="<c:url value="resources/css/freelancer.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="resources/styles/bootstrap.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="resources/styles/bootstrap.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="resources/styles/bootstrap-theme.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="resources/styles/style.css" />" rel="stylesheet" type="text/css"/>
    <script src="<c:url value="resources/javascript/jquery-2.1.4.min.js" />"></script>
    <script src="<c:url value="resources/javascript/bootstrap.min.js" />" ></script>
    <script src="<c:url value="resources/javascript/bootstrap.js"/>" ></script>

</head>
<body id="page-top">



<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <h3 class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger">MECO</h3>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#header">Header</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#login">Login</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#News">Meco News</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a>
            </li>

        </ul>
    </div>
</nav>


 <div class="container" id="header">
    <div id="logo">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="topic">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <img src="resources/images/logo.png" width="60" height="60">

                    </div>
                </div>
            </div>
        </div>
    </div>

    <header>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="resources/images/leco1.jpeg" style="height: 400px ; width:1000px" alt="..." >
                        </div>
                        <div class="item">
                            <img src="resources/images/leco2.jpeg" style="height: 400px ; width:1000px" alt="..." >
                        </div>
                        <div class="item">
                            <img src="resources/images/leco3.jpeg" style="height: 400px ; width:1000px" alt="..." >
                        </div>


                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
        </div>
    </header>


    <br id="login">
    <br>
    <br>
    <div>

        <div id="sub">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="col-lg-5">
                    <p id="p1">SALARY</p>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <p id="p2">LOGIN</p>
                    </div>
                </div>
            </div>
        </div>

        <br>
        <br>

        <main class="row"  >
            <div>
                <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                    User
                </a>
                <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                    Admin
                </a>
                <div>
                    <p> &nbsp; </p>
                </div>



                <form action="/person/login.do" >
                    <div class="form-group">
                        <label for="exampleInputPassword1">User name</label>
                        <input type="text" class="form-control" placeholder="user name" name="personal_number">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="national_id">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                <br>
                <br>
                <div id ="News">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Meco News</h4>
                    <br>
                </div>

            </div>





            <div class="card-group">

                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="resources/images/1.jpeg" class="card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail" ><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
                        <div class="card-body">
                            <p class="card-text">The final robotic tournament in Iranian schools in Muscat , Oman
                                you can see more pictures and videos bottom.The final robotic . </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.location.href='3.jsp';" >View</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="resources/images/2.jpeg" class="card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
                        <div class="card-body">
                            <p class="card-text">Visit the Robotic Class, Istanbul Fajr School , Turkey you can see more pictures and videos bottom. Visit the Robotic Class, Istanbul Fajr School.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.location.href='4.jsp';">View</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="resources/images/3.jpeg" class="card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
                        <div class="card-body">
                            <p class="card-text">The second session of abacus semester 1 diwaniah , iraq
                                you can see more pictures and videos bottom The second session of abacus semester 1 .</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.location.href='5.jsp';">View</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <br>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Let's learn. <span class="text-muted">Let's Meco.</span></h2>
                    <p class="lead">The Leco based knowledge group was formed to reach the goals of the field of thought and with the help of committed and professional lecturers.</p>
                </div>
                <div class="col-md-5">
                    <img src="resources/images/4.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"  preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><rect width="100%" height="100%" fill="#eee"/>
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">UAE MECOCUP. <span class="text-muted">MECO KNOWLEDGE BASE MECOCUP.</span></h2>
                    <p class="lead">According to the Public Relations Department of the Knowledge Base of Mecco
                        The Dubai World Mecocup World Campaign was held on October 18-20, in UAE.
                    </p>
                </div>
                <div class="col-md-5 order-md-1">
                    <img src="resources/images/1.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/>
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">MECO <span class="text-muted"> knowledge base mecocup.</span></h2>
                    <p class="lead">On the second day of the World Mecocup Championship
                        In 4 fields of Meco Robo, Meco Bridge , Leco Mas and Meco Q were held
                        And at the end The top honors were appreciated.</p>
                </div>
                <div class="col-md-5">
                    <img src="resources/images/3.png" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/>
                </div>
            </div>

            <hr class="featurette-divider">


        </main>
    </div>


    <footer id="contact">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <h4>Get in touch with us</h4>
                <h4>Moderna company inc</h4>
                <p>Mooderna Building suit v124,AB 01 someplace 16425 Earth</p>
                <p>(123)456-7890-(123)555-7891 maedenrzi@gmail.com</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <h4 class="right">Pages</h4>
                <p class="right">press release</p>
                <p class="right">Term and conditions</p>
                <p class="right">Privacy policy</p>
                <p class="right">Career center</p>
                <p class="right">Contact us</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <h4>Latest posts</h4>
                <p>The second session of abacus semester 1 diwaniah , iraq.</p>
                <p>Visit the Robotic Class, Istanbul Fajr School , Turkey..</p>
                <p>The final robotic tournament in Iranian schools in   ...</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Follow Us</h4>

                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="window.location.href='https://www.instagram.com/maedenrzi/';">Instagram</button>
                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="window.location.href='https://t.me/maedenrzi';">Telegram</button>
                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="window.location.href='https://www.facebook.com';">Facebook</button>
                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="window.location.href='https://www.youtube.com/watch?v=olestQ_Bk3k&t=142s/';">Youtube</button>

            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h6>&#169; Copyright 2019. All Rights Reserved | Crafted with ❤ By Maede</h6>
            </div>
        </div>
    </footer>
</div>
<script>
    function openRegister(registerName) {
        var i;
        var x = document.getElementsByClassName("register");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(registerName).style.display = "block";
    }

</script>
</body>
</html>
