<%-- 
    Document   : UserRegistration
    Created on : 24 Oct, 2020, 11:02:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
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
            <div class="card-body">
                <div class="card align-self-center" style=" top: 30px;  right: 50px; float: right;">
                    <img src="Images/uRegiPage.png" style="top: 5px;" alt=""/>
                </div>
                <div class="card border-primary mb-3" style="max-width: 700px; left: 90px;">
                    <div class="card-header"><h5 class="card-title">Register here for COVID-19 Home Treatment </h5></div>
                    <div class="card-body text-primary">
                        <form action="regiUser.jsp" method="post">
                            <div class="form-row">
                                <div class="col">
                                    <label for="inputfname">First Name</label>
                                    <input name="fname" type="text" class="form-control" placeholder="First name">
                                </div>
                                <div class="col">
                                    <label for="inputlname">Last Name</label>
                                    <input name="lname" type="text" class="form-control" placeholder="Last name">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="gender">Gender</label>
                                    <select name="gender" id="gender" class="form-control">
                                        <option selected>Choose...</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="mobNumber">Mobile Number</label>
                                    <input name="mobNum" type="MobileNumber" class="form-control" placeholder="Eg.+9191464XXXXX">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Email</label>
                                    <input name="mail" type="email" class="form-control" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="inputPassword6">Password</label>
                                    <input name="password" type="password" id="inputPassword6" class="form-control" aria-describedby="passwordHelpInline">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Address</label>
                                <input name="address" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputState">State</label>
                                    <input name="state" type="text" class="form-control" id="inputState">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputCity">City</label>
                                    <input name="city" type="text" class="form-control" id="inputCity">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputZip">Zip</label>
                                    <input name="pin" type="text" class="form-control" id="inputZip">
                                </div>
                            </div>
                            <div class="dropdown-divider"></div>
                            <button class="btn btn-primary" type="submit">Submit form</button>
                        </form>
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
</html>
