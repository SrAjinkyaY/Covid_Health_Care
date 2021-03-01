<%-- 
    Document   : regiRqst
    Created on : 7 Nov, 2020, 1:14:09 PM
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
        <title>Admin Covid Health Care</title>
    </head>
    <body onload="spinStop()">
        <div id="spinLoader" class="container" style=" font-size: 35px; color: olivedrab; height: 700px; margin-top: 300px;"">
            <center>
                <div id="spinLoader" class="spinner-border m-5" style=" margin-top: 300px; font-size: 35px; color: olivedrab; width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </center>
        </div>
        <!-- Image and text -->
        <nav class="navbar navbar-expand-md navbar-dark bg-secondary">
            <img src="../Images/icon-3.png" width="45" height="45" alt="Covid Health Care"/>&nbsp;
            <a class="navbar-brand mb-2" href="admin_index.html">
                <b class="h3">🅲🅾🆅🅸🅳 🅷🅴🅰🅻🆃🅷 🅲🅰🆁🅴</b>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="float: left">
                <ul class="navbar-nav mr-3 mb-0 text-white" style="margin-left: auto; color: #444444;">
                    <li class="nav-item active my-lg-0">
                        <a class="nav-link" href="admin_index.jsp">Admin Home<span class="sr-only">Admin Home</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="addHosp.jsp">Add Hospital<span class="sr-only">Add Hospital</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="viewHosp.jsp">View Hospital<span class="sr-only">View Hospital</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="regiRqst.jsp">Requests<span class="sr-only">Requests</span></a>
                    </li>
                    &nbsp;&nbsp;&nbsp;
                    <li class="nav-item" style=" border-color: chartreuse; color: #ffffff; font-weight: bolder;">
                        <a class="nav-link border border-success rounded-pill bg-danger text-white" href="../login.jsp">&nbsp; Log Out &nbsp;</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="card align-items-center">
            <div class="card-body">
                <div class="row" style="width: 900px">
                    <div class="col-sm-12 text-center">
                        <div class="card-header">
                            Requests
                        </div>
                    </div>
                </div>
                <div class="row" style="width: 900px">
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                            String sql = "select hid, hname, contNum, mail, address, city, states, pin, ib, sb, gb, TotalBed from hospital where status='N'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(sql);
                    %>
                    <div class="col-sm-6">
                        <div class="card">
                            <%
                                if (rs.next() == false) {
                            %>
                            <div class="row" style="width: 900px">
                                <div class="col-sm-12 text-center">
                                    <div class="card-header">
                                        No Requests Yet!
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                                while (rs.next()) {
                            %>
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
                                <h6 class="card-title"></h6>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <form action="accept.jsp" method="post">
                                    <input name="hid" type="text" style=" display: none" value="<%=rs.getString(1)%>" readonly>
                                    <button class="btn btn-warning" type="submit">Accept</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <%
                        }

                    %>
                </div>
                <%                    } catch (Exception EX) {
                        out.print(EX);
                    }

                %>
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
</html>
