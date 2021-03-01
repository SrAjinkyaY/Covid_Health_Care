<%-- 
    Document   : viewPatient
    Created on : 24 Nov, 2020, 9:28:44 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("hid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
        String hid = session.getAttribute("hid").toString();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select pid, adhar_num, ward_type, ward_num, bed_num, p_fname, p_mname, p_lname from patients where hid = '" + hid + "' and status='A'");
            
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
                        <div class="table-responsive-sm">
                            <form action="patientProfile.jsp">
                                <table class="table">
                                    <tbody class="thead-light small">
                                        <tr>
                                            <th scope="col">AdharNum</th>
                                            <th scope="col">Ward</th>
                                            <th scope="col">WardNum</th>
                                            <th scope="col">BedNum</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                        <%
                                        while (rs.next()) {
                                        %>
                                        <tr>
                                            <td scope="col"><%=rs.getString(2)%></td>
                                            <td scope="col"><%=rs.getString(3)%></td>
                                            <td scope="col"><%=rs.getString(4)%></td>
                                            <td scope="col"><%=rs.getString(5)%></td>
                                            <td scope="col"><%=rs.getString(6)%> <%=rs.getString(7)%> <%=rs.getString(8)%></td>
                                            <td>
                                                <input name="pid" type="text" class="form-control" style=" display: none;" value="<%=rs.getString(1)%>" readonly>
                                                <button class="btn btn-secondary" type="submit">View</button>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </form>
                        </div>
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
    <%
            } catch (Exception ex) {
                out.print(ex);
            }

        }
    %>
    </body>
</html>
