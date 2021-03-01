<%-- 
    Document   : addMedical
    Created on : 7 Nov, 2020, 1:14:26 PM
    Author     : hp
--%>

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
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="addMedical.jsp">Add Medicals<span class="sr-only">Add Medicals</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="viewMedical.jsp">View Medicals<span class="sr-only">View Medicals</span></a>
                    </li>
                    &nbsp;&nbsp;&nbsp;
                    <li class="nav-item" style=" border-color: chartreuse; color: #ffffff; font-weight: bolder;">
                        <a class="nav-link border border-success rounded-pill bg-danger text-white" href="../login.jsp">&nbsp; Log Out &nbsp;</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Add Medicals!</h1>


        <script type="text/javascript">
            var preloader = document.getElementById('spinLoader');
            function spinStop() {
                preloader.style.display = 'none';
            }
        </script>
    </body>
</html>
