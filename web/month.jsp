<%@ page import="org.j2os.Person" %>
<%@ page import="org.j2os.Salary" %>
<%--
  Created by maedenrzi
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>
<div class="container">
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
                            <li id="home"><a href="/first.jsp"><b>Home</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main>

          <form class="" action="/person/user_info.do">

            <div class="form-group col-md-4" >
                <label for="inputState">Please select your desired month</label>
                <select name="month" id="inputState" class="form-control" name="month">
                    <option selected>January</option>
                    <option>February</option>
                    <option>March</option>
                    <option>April</option>
                    <option>May</option>
                    <option>June</option>
                    <option>July</option>
                    <option>August</option>
                    <option>September</option>
                    <option>October</option>
                    <option>November</option>
                    <option>December</option>
                </select>
            </div>
            <%

                String userName = (String) request.getSession().getAttribute("username");
                System.out.println(userName);

                String password = (String) request.getSession().getAttribute("password");
            %>
            <div style="display:none" class="form-group">
                <label for="exampleInputUsername">User name</label>
                <input type="text" style="width: 100%"  id="exampleInputUsername" readonly name="personal_number" value="<%=userName%>"/>
            </div>
            <div style="display:none" class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="text" style="width: 100%" id="exampleInputPassword1" readonly name="national_id" value="<%=password%>"/>
            </div>
            <div class="form-group col-md-4">
            <input type="submit" class="btn btn-primary" value=" payroll "/>
            </div>
          </form>
              <form class="" action="/person/condition.do">
                  <div style="display:none" class="form-group">
                      <label for="exampleInputUsername1">User name</label>
                      <input type="text" style="width: 100%"  id="exampleInputUsername1" readonly name="personal_number" value="<%=userName%>"/>
                  </div>
                  <div style="display:none" class="form-group">
                      <label for="exampleInputPassword12">Password</label>
                      <input type="text" style="width: 100%" id="exampleInputPassword12" readonly name="national_id" value="<%=password%>"/>
                  </div>
            <br>
            <br>
            <br>
            <button type="submit" onclick="window.location.href='/person/condition.do';" class="btn btn-primary">Result Requests</button>
            <br>
            <br>
            <br>
        </form>
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
<script>
    function x() {
        alert("request sent successfully")
    }

</script>
</body>
</html>

