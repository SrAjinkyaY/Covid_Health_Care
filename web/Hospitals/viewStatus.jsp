<%-- 
    Document   : viewStatus
    Created on : 9 Dec, 2020, 12:58:06 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("hid") == null) {
        response.sendRedirect("../login.jsp");
    } else if (request.getParameter("pid") == null) {
        response.sendRedirect("viewPatient.jsp");
    } else {
        String hid = session.getAttribute("hid").toString();
        String pid = request.getParameter("pid");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            String sql = "select * from patient_report where pid='" + pid + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
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
                <center><h1>Patient Status</h1></center>
                <div class="row" style="width: 900px">
                    <%while (rs.next()) { %>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Date: <%=rs.getString(4)%></h5>
                                <div class="row">
                                    <div class="col">
                                        <h6 class="card-title">Patient Status </h6>
                                    </div>
                                    <div class="col">
                                        <p class="card-text">
                                            <%=rs.getString(5)%>
                                        </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <h6 class="card-title">Critical Notes:</h6>
                                    </div>
                                    <div class="col">
                                        <div class="row-4">
                                            <%=rs.getString(6)%>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <h6 class="card-title">Treatment Notes:</h6>
                                    </div>
                                    <div class="col">
                                        <div class="row-4">
                                            <%=rs.getString(7)%>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <h6 class="card-title">Diet Given:</h6>
                                    </div>
                                    <div class="col">
                                        <div class="row-4">
                                            <%=rs.getString(8)%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                        <%}%>
                </div>
            </div>
        </div>
        <div class="dropdown-divider"></div>
    <center>
        <a href="viewPatient.jsp" class="btn btn-primary active" role="button" aria-pressed="true">Back</a>
    </center>
    <script type="text/javascript">
        var preloader = document.getElementById('spinLoader');
        function spinStop() {
            preloader.style.display = 'none';
        }
    </script>
</body>
</html>
<%  
        } catch (Exception ex) {
            out.print(ex);
        }
    }

%>
