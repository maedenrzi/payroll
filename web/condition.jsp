<%@ page import="org.j2os.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="org.j2os.Salary" %>
<%--
  Created by maedenrzi
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="/resources/styles/bootstrap.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/styles/bootstrap.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/styles/bootstrap-theme.min.css" />" rel="stylesheet" type="text/css"/>
    <script src="<c:url value="/resources/javascript/jquery-2.1.4.min.js" />"></script>
    <script src="<c:url value="/resources/javascript/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/javascript/bootstrap.js"/>"></script>
    <link href="<c:url value="/resources/styles/style.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/vendor/bootstrap/scss/_tables.scss" />" rel="stylesheet" />
</head>
<body>
<div class="container">
    <div id="logo">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="topic">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
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
        <%--<div class="row">--%>

        <table class="table table-striped" border="1" width="100%">
            <tr>


                <th>req</th>

                <th>condition</th>

            </tr>
            <%
                Person person = (Person) request.getAttribute("show");
                System.out.println(person.getAccId());
                String condition="vaay";
                if(person.getAccId()==1)
                {
                    condition="Your request was approved";
                } else if (person.getAccId() == 2)
                {
                    condition="Opposed to your request";
                }else if (person.getAccId() == 4)
                {
                     condition="Your request has been not been seen";
                }else if (person.getAccId() == 3){
                     condition="You have not request";
                }
               %>
            <tr>
                <form class="" action="">
                    <td><input type="text"  style="width: 100%" readonly name="req" value="<%=person.getReq()%>"/></td>
                    <td><input type="text"  style="width: 100%" readonly value="<%=condition%>"/></td>
                </form>

            </tr>

        </table>
        <br>
        <br>
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





