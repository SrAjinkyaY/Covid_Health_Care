<%-- 
    Document   : 6months_12yr
    Created on : 3 Dec, 2020, 9:01:16 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <img src="../Images/icon-3.png" width="55" height="55" alt="Covid Health Care"/>&nbsp;
            <a class="navbar-brand mb-2" href="index.html">
                <b class="h3">🅲🅾🆅🅸🅳 🅷🅴🅰🅻🆃🅷 🅲🅰🆁🅴</b>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active my-lg-0">
                        <a class="nav-link" href="../index.html">Home<span class="sr-only">Home</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="../viewHospital.jsp">View Covid Hospitals<span class="sr-only">View Covid Hospitals</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="netridiet.jsp">Nutrition and Diet<span class="sr-only">Nutrition and Diet</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="../medi_yoga.jsp">Meditation & Yoga<span class="sr-only">Meditation & Yoga</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active" style="">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="../login.jsp">&nbsp; Sign In / Sign Up &nbsp;</a>
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
                <div class="card mb-3">
                    <img class="card-img-top" src="Images/backgroung img 6-12yr.jpg" alt="Card image cap">
                    <h5 class="card-title"> 6 Months To 12Yr Nutrition & Diet</h5>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <img class="card-img-top" src="Images/6 months to 12yr 2nd pick.jpg" alt="Card image cap">
                                <p class="card-text">Nutrition for kids is based on the same principles as nutrition for adults. Everyone needs the same types of nutrients — such as vitamins, minerals, carbohydrates, protein and fat. Children, however, need different amounts of specific nutrients at different ages. Protein. Choose seafood, lean meat and poultry, eggs, beans, peas, soy products, and unsalted nuts and seeds.
Fruits. Encourage your child to eat a variety of fresh, canned, frozen or dried fruits — rather than fruit juice. ...
Vegetables. ...
Grains. ...
Dairy.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <img class="card-img-top" src="Images/6_12 food plan.jpg" alt="Card image cap">
                            </div>
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
    </body>
</html>
