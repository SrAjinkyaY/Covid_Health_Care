<%-- 
    Document   : login
    Created on : 16 Oct, 2020, 2:58:28 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if ((request.getParameter("userId") != null) && (request.getParameter("passWord") != null)) {
        String uid = request.getParameter("userId");
        String psw = request.getParameter("passWord");
        if ((uid.equals("CHCADMIN") && psw.equals("Admin@123"))) {
            response.sendRedirect("Admin/admin_index.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    } else {
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Covid Health Care Log In</title>
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
        <div class="card">
            <div class="card-body row mx-auto">
                <div class="col-2" style="width: 360px; margin-left: 100px; top: 20px;">
                    <div class="mx-auto border container" style="width: 400px;">
                        <br>
                        <center>
                            <div class="mx-auto border rounded-pill" style="width: 250px; font-size: 30px; font-weight: bolder;">
                                <img src="Images/doctor.png" style=" width: 200px; height: 200px;" alt=""/>Hospital</div>
                                <form action="Hospitals/hospLogin.jsp" class="px-4 py-3">
                                <div class="form-group">
                                    <label for="exampleDropdownFormEmail1" style="float: left;">Registration Number</label>
                                    <input name="prn" type="text" class="form-control" id="exampleDropdownFormEmail1" placeholder="Permanent Registration Number">
                                </div>
                                <div class="form-group">
                                    <label for="exampleDropdownFormPassword1" style="float: left;">Password</label>
                                    <input name="psw" type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
                                </div>
                                <div class="dropdown-divider"></div>
                                <button type="submit" class="btn btn-primary float-lg-right">Sign in</button>
                            </form>
                        </center>
                        <a class="dropdown-item" href="hospRegistration.jsp">New around here? Sign up</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Forgot password?</a>
                    </div>
                </div>
                <div class="col-2" style="width: 360px; margin-left: 500px; top: 20px;">
                    <div class="mx-auto border container" style="width: 400px;">
                        <br>
                        <center>
                            <div class="mx-auto border rounded-pill" style="width: 250px; font-size: 30px; font-weight: bolder;">
                                <img src="Images/admin.png" style="margin-left: 50px; width: 200px; height: 200px;" alt=""/>Admin</div>
                            <form action="login.jsp" method="post" class="px-4 py-3">
                                <div class="form-group">
                                    <label for="exampleDropdownFormEmail1" style="float: left;">Admin ID</label>
                                    <input name="userId" type="text" class="form-control" id="exampleDropdownFormEmail1" placeholder="@AdminUserName">
                                </div>
                                <div class="form-group">
                                    <label for="exampleDropdownFormPassword1" style="float: left;">Password</label>
                                    <input name="passWord" type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-primary float-lg-right">Sign in</button>
                                <br><br>
                            </form>
                        </center>
                    </div>
                </div>
            </div>
            &nbsp;
            <div class="card-footer text-muted">
                2 days ago
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
<%
    }
%>
