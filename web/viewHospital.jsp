<%-- 
    Document   : viewHospital
    Created on : 25 Oct, 2020, 5:54:27 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Hospitals</title>
    </head>
    <body onload="spinStop()">
        <div id="spinLoader" class="container" style=" font-size: 35px; color: olivedrab; height: 700px; margin-top: 300px;">
            <center>
                <div id="spinLoader" class="spinner-border m-5" style=" margin-top: 300px; font-size: 35px; color: olivedrab; width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </center>
        </div>
        <!-- Image and text -->
        <nav class="navbar navbar-expand-md navbar-light">
            <img src="Images/icon-3.png" width="55" height="55" alt="Covid Health Care"/>&nbsp;
            <a class="navbar-brand mb-2" href="index.html">
                <b class="h3">🅲🅾🆅🅸🅳 🅷🅴🅰🅻🆃🅷 🅲🅰🆁🅴</b>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="index.html">Home<span class="sr-only">Home</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="viewHospital.jsp">View Covid Hospitals<span class="sr-only">View Covid Hospitals</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="Nutrition and diet/netridiet.jsp">Nutrition and Diet<span class="sr-only">Nutrition and Diet</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="medi_yoga.jsp">Meditation & Yoga<span class="sr-only">Meditation & Yoga</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active" style="">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="login.jsp">&nbsp; Sign In / Sign Up &nbsp;</a>
                    </li>
                    &nbsp; &nbsp;
                    <li class="nav-item active">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="#">&nbsp; Contact Us &nbsp;</a>
                    </li>
                </ul>
            </div>
        </nav>
    <div class="card align-items-center">
        <div class="card-body">
            <center><h1>Covid Hospitals</h1></center>
            <div class="row" style="width: 900px">
                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                        String sql = "select hid, hname, contNum, mail, address, city, states, pin, ib, sb, gb, TotalBed from hospital where status='Y'";
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%=rs.getString(2)%></h5>
                            <div class="row">
                                <div class="col">
                                    <h6 class="card-title">Availability of Beds </h6>
                                </div>
                                <div class="col">
                                    <p class="card-text">
                                        ICU : <%=rs.getString(9)%><br/>
                                        Special Ward Beds : <%=rs.getString(10)%><br/>
                                        General Ward Beds : <%=rs.getString(11)%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h6 class="card-title"></h6>
                                </div>
                                <div class="col">
                                    <h6 class="card-title">Total : <%=rs.getString(12)%></h6>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp;<h6 class="card-title">Address </h6>
                                <div class="col">
                                    <p class="card-text">
                                        <%=rs.getString(5)%><br/>
                                        <%=rs.getString(6)%>, <%=rs.getString(7)%><br/>
                                        Pin Code - <%=rs.getString(8)%><br/>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp;<h6 class="card-title">Contact </h6>
                                <div class="col">
                                    <p class="card-text">
                                        Mobile Number : <a href="tel:+91<%=rs.getString(3)%>">+91 <%=rs.getString(3)%></a><br/>
                                        Email : <a href="mailto:<%=rs.getString(4)%>"><%=rs.getString(4)%></a>
                                    </p>
                                </div>
                            </div>
                                    <div class="row">
                                    </div>
                            <h6 class="card-title"></h6>
                        </div>
                    </div>
                </div>
                <%
                        }
                    } catch (Exception Ex) {
                        out.print(Ex);
                    }


                %>
            </div>
        </div>
    </div>
    <center><p><h5>Please <a  href="index.html">login</a> to place a request for call facility.</h5></p></center>

    <br>
    <script type="text/javascript">
        var preloader = document.getElementById('spinLoader');
        function spinStop() {
            preloader.style.display = 'none';
        }
    </script>
</body>
</html>
