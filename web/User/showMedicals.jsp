<%-- 
    Document   : showMedicals
    Created on : 3 Nov, 2020, 2:50:58 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    String uid = session.getAttribute("LoggedUser").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from users where uid = '" + uid + "'");
        while (rs.next()) {
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Medicals</title>
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
                    <li class="nav-item active my-lg-0">
                        <a class="nav-link" href="userHome.jsp"><%=rs.getString(2)%>'s Home<span class="sr-only">Home</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="hospSearch.jsp">Search Hospitals<span class="sr-only">Search Hospitals</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="showMedicals.jsp">Show Medicals<span class="sr-only">Show Medicals</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="rqstCall.jsp">Request For Call<span class="sr-only">Request For Call</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="logout.jsp">&nbsp; LogOut &nbsp;</a>
                    </li>
                </ul>
            </div>
        </nav>


        <script type="text/javascript">
            var preloader = document.getElementById('spinLoader');
            function spinStop() {
                preloader.style.display = 'none';
            }
        </script>
    </body>
    <%
            }
        } catch (Exception ex) {

        }
    %>
</html>