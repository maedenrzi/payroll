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
                            <li><a href="/Add_User.jsp"><b>&nbsp;&nbsp;Add_User</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <main>

        <form class="" action="/person/showSearch_profile.do">
            <div class="input-group col-md-3" >
                <h4 for="exampleInputPassword1">Search&nbsp;</h4>
                <input  type="text" class="form-control" id="exampleInputPassword1" name="personal_number" placeholder="personal_number">
            </div>
        </form>
        <br>
                <table class="table table-striped" border="1" width="100%">
                    <tr>
                        <th style="display:none">id</th>
                        <th style="display:none">name</th>
                        <th style="display:none">family</th>
                        <th style="display:none">email</th>
                        <th style="display:none">phone_number</th>
                        <th>personal_number</th>
                        <th style="display:none">national_id</th>
                        <th style="display:none">accId</th>
                        <th style="display:none">month</th>
                        <th>bonus</th>
                        <th>basic_salary</th>
                        <th>loan</th>
                        <th>over_time</th>
                        <th>insurance_money</th>
                        <th>toll</th>
                        <th style="display:none">roleId</th>
                        <th style="display:none">req</th>
                        <th>main_salary</th>
                        <th>update</th>
                        <th>delete</th>
                    </tr>
    <%
                        String month = (String) request.getAttribute("month");
                        List<Person> personList = (List<Person>) request.getAttribute("select");
                        for (Person person : personList) {
                            Salary salary=person.getSalary();
    %>
                    <tr>

                        <form class="" action="/person/update.do">
                            <td style="display:none"><input type="text" style=" width: 100%" readonly name="id" value="<%=person.getId()%>"/></td>
                            <td style="display:none"><input type="text" style=" width: 100%" name="name" value="<%=person.getName()%>"/></td>
                            <td style="display:none"><input type="text" style=" width: 100%" name="family" value="<%=person.getFamily()%>"/></td>
                            <td style="display:none"><input type="text" style="width: 100%" name="Email" value="<%=person.getEmail()%>"/></td>
                            <td style="display:none"><input type="text" style="width: 100%" name="phone_number" value="<%=person.getPhone_number()%>"/></td>
                            <td><input type="text" style="width: 100%" name="personal_number" value="<%=person.getPersonal_number()%>"/></td>
                            <td style="display:none"><input type="text" style="width: 100%" name="national_id" value="<%=person.getNational_id()%>"/></td>
                            <td style="display:none"><input type="text" readonly style="width: 100%" name="accId" value="<%=person.getAccId()%>"/></td>
                            <td style="display:none"><input type="text" readonly style="width: 100%" name="month" value="<%=person.getMonth()%>"/></td>
                            <td><input type="text" style="width: 100%" name="bonus" value="<%=salary.getBonus()%>"/></td>
                            <td><input type="text" style="width: 100%" name="basic_salary" value="<%=salary.getBasic_salary()%>"/></td>
                            <td><input type="text" style="width: 100%" name="Loan" value="<%=salary.getLoan()%>"/></td>

                            <%
                                //long over_time=salary.getOver_time()*((salary.getBasic_salary()/30)/8)*14/10;
                                long over_time=salary.getOver_time();
                                long ins=salary.getBasic_salary()*7/100;
                                long toll=0l;
                                if(salary.getBasic_salary()<2000000){
                                    toll=0;
                                }
                                else {
                                    toll=(salary.getBasic_salary()-2000000)/10;
                                }
                            %>

                            <td><input type="text" style="width: 100%" name="over_time" value="<%=over_time%>"/></td>
                            <td><input type="text" style="width: 100%" readonly name="insurance_money" value="<%=ins%>"/></td>
                            <td><input type="text" style="width: 100%" readonly name="toll" value="<%=toll%>"/></td>
                            <td style="display:none"><input type="text"  style="width: 100%" readonly name="roleId" value="<%=person.getRoleId()%>"/></td>
                            <td style="display:none"><input type="text"  style="width: 100%" readonly name="req" value="<%=person.getReq()%>"/></td>
                            <td><input type="text" style="width: 100%" readonly name="main_salary" value="<%=salary.getBasic_salary()+salary.getBonus()+salary.getOver_time()-salary.getLoan()-ins-toll%>"/></td>
                            <td><input type="submit" style=" width: 100%" value=" update "/></td>
                        </form>
                        <td><input type="button" style=" width: 100%" value=" delete" onclick="window.location='/person/remove.do?id=<%=person.getId()%>'"></td>
                    </tr>
                    <%
                        }
                    %>
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
