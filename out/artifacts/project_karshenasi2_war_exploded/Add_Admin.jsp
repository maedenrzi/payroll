<%--
  Created by maedenrzi
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<! DOCTYPE html>
<html lang="vi">
<html>
<head>
    <title>Add_Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <%--<link href="resources/css/freelancer.min.css" rel="stylesheet">--%>
    <link href="<c:url value="resources/css/freelancer.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" />" rel="stylesheet" type="text/css"/>

    <link href="<c:url value="resources/styles/bootstrap.min.css" />" rel="stylesheet" type="text/css"/><%-- tag haye fard be in shekl baste mishan /> --%>
    <link href="<c:url value="resources/styles/bootstrap.css" />" rel="stylesheet" type="text/css"/><%-- tage link style haye kharejie yek safaro behesh motasel mikone--%>
    <link href="<c:url value="resources/styles/bootstrap-theme.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="resources/styles/style.css" />" rel="stylesheet" type="text/css"/>
    <script src="<c:url value="resources/javascript/jquery-2.1.4.min.js" />"></script>
    <script src="<c:url value="resources/javascript/bootstrap.min.js" />" ></script>
    <script src="<c:url value="resources/javascript/bootstrap.js"/>" ></script>

</head>
<body>
 .<div class="container">
    <div id="logo">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="topic">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <img src="resources/images/logo.png" width="60" height="60">
                        <h4>MECO</h4>
                    </div>
                </div>
                <div id="menu">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                        <ul class="nav nav-pills">
                            <li id="home"><a href="first.jsp"><b>Home&nbsp;&nbsp;</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main>


        <form action="person/register.do">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputName">name</label>
                    <input type="text" class="form-control" id="inputName" placeholder="name" name="name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputFamily">family</label>
                    <input type="text" class="form-control" id="inputFamily" placeholder="family" name="family">
                </div>

                <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="Email">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPersonalNumber">personal_number</label>
                    <input type="text" class="form-control" id="inputPersonalNumber" placeholder="Personal_number" name="personal_number">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputNational_id">National_id</label>
                    <input type="text" class="form-control" id="inputNational_id" placeholder="National_id" name="national_id">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPhone_number">Phone_number</label>
                    <input type="text" class="form-control" id="inputPhone_number" placeholder="Phone_number" name="phone_number">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputBasicSalary">basic_salary</label>
                    <input type="text" class="form-control" id="inputBasicSalary" placeholder="basic_salary" name ="basic_salary">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputBonus">bonus</label>
                    <input type="text" class="form-control" id="inputBonus" placeholder="bonus" name="bonus">
                </div>

                <div class="form-group col-md-6">
                    <label for="inputFine">Loan</label>
                    <input type="text" class="form-control" id="inputFine" placeholder="Loan" name="Loan">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputOver_time">over_time</label>
                    <input type="text" class="form-control" id="inputOver_time" placeholder="10 12 .." name="over_time">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputRole">Role</label>
                    <input type="text" class="form-control" id="inputRole" name="roleId" value="2">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputReq">Req</label>
                    <input type="text" class="form-control" id="inputReq" name="req" value="req">
                </div>
            </div>
            <div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </div>
        </form>
        <br>
        <br>
        <br>

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
    </main>

</div>
</body>
</html>
