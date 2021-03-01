<%-- 
    Document   : loadPlasma
    Created on : 24 Nov, 2020, 9:28:13 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<%

    if (session.getAttribute("hid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
        String hid = session.getAttribute("hid").toString();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from hospital where hid = '" + hid + "'");
            while (rs.next()) {
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Search</title>
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
            <a class="navbar-brand mb-2" href="hospHome.html">
                <b class="h3">🅲🅾🆅🅸🅳 🅷🅴🅰🅻🆃🅷 🅲🅰🆁🅴</b>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active my-lg-0">
                        <a class="nav-link" href="hospHome.jsp">Hospital Home<span class="sr-only">Hospital Home</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="addPatient.jsp">Add Patient<span class="sr-only">Search Patient</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="viewPatient.jsp">View Patient<span class="sr-only">View Patient</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="treatRequests.jsp">Treatment Requests<span class="sr-only">Treatment Requests</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="loadPlasma.jsp">Plasma Database<span class="sr-only">Plasma Database</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="logOut.jsp">&nbsp; LogOut &nbsp;</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="card">
            <div class="card-body">
                <div class="card text-center">
                    <div class="card-body">
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                                Statement plas = con.createStatement();
                                String plSql = "select pdonid, hid, pid, hname, p_fname, p_lname, p_gender, p_weight, p_bldgrp, p_mob_num, p_address, p_city, p_state, p_pin from view_plasma";
                                ResultSet plSet = plas.executeQuery(plSql);
                        %>
                        <div class="card text-center">
                            <div class="card-header text-secondary">
                                <h5>Patients for Plasma Donation</h5>
                            </div>
                            <div class="table-responsive-sm">
                                <table class="table">
                                    <tbody class="thead-light small">
                                        <tr>
                                            <th scope="col">Hospital Name</th>
                                            <th scope="col">Patient Name</th>
                                            <th scope="col">Gender</th>
                                            <th scope="col">Weight</th>
                                            <th scope="col">Blood Group</th>
                                            <th scope="col">Mobile Number</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">City</th>
                                            <th scope="col">State</th>
                                            <th scope="col">Pin-Code</th>
                                        </tr>
                                        <%
                                        while(plSet.next()){
                                        %>
                                        <tr>
                                            <td scope="col"><%=plSet.getString(4)%></td>
                                            <td scope="col"><%=plSet.getString(5)%> <%=plSet.getString(6)%></td>
                                            <td scope="col"><%=plSet.getString(7)%></td>
                                            <td scope="col"><%=plSet.getString(8)%></td>
                                            <td scope="col"><%=plSet.getString(9)%></td>
                                            <td scope="col"><%=plSet.getString(10)%></td>
                                            <td scope="col"><%=plSet.getString(11)%></td>
                                            <td scope="col"><%=plSet.getString(12)%></td>
                                            <td scope="col"><%=plSet.getString(13)%></td>
                                            <td scope="col"><%=plSet.getString(14)%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <%
                        } catch (Exception ex) {
                        %>
                        <script type="text/javascript">
                    var ex = <%=ex%>
                    alert("Error ! " + ex);
                        </script>
                        <%
                                out.print(ex);
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>


        <script type="text/javascript">
            var preloader = document.getElementById('spinLoader');
            function spinStop() {
                preloader.style.display = 'none';
            }
        </script>
    </body>
    <%                }
            } catch (Exception ex) {

            }
        }

    %>
</html>
