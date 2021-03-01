<%-- 
    Document   : netridiet
    Created on : 2 Dec, 2020, 2:57:26 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nutrition & Diet</title>
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
                    <img src="Images/Nutrition.jpg" class="img-fluid" alt="Responsive image">
                    <div class="card-body">
                        <h5 class="card-title"> Nutrition & Diet</h5>
                        <p class="card-text">Food and beverages provide the energy and nutrients you need to improve health, manage disease, and reduce the risk of disease.
                            Diet can also refer to the food and drink a person consumes daily and the mental and physical circumstances connected to eating. Nutrition involves more than simply eating a “good” diet—it is about nourishment on every level.</p>
                        <p class="card-text"><small class="text-muted"><a class="nav-link text-primary" href="#age_distribution">Age Groupwise Nutrition & Diet</a></small></p>
                    </div>

                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="card-group">
                    <div class="card">
                        <img class="card-img-top" src="Images/Immunity Booster.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Immunity Booster</h5>
                            <p class="card-text">
                                •A number of nutrients have been associated with improved outcomes for patients with COVID-19.
                                •Vitamin D is associated with both decreased rates of infection and improved outcomes for patients.
                                •Vitamin C may shorten the course of the disease and decrease the severity of the symptoms.
                                •Vitamin E, zinc and selenium are known to assist with recovery from viral infection, and may have efficacy in COVID-19.
                            </p>
                            <p class="card-text"><small class="text-muted"></small></p>
                        </div>
                    </div>
                    &nbsp; &nbsp;
                    <div class="card">
                        <img class="card-img-top" src="Images/Kadha.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Kadha Recipe</h5>
                            <p class="card-text">The humble Kadha, a traditional recipe prepared from an extract of herbs and spices that is packed with natural goodness has emerged as the favourite drink during the COVID-19 pandemic because of its immunity-boosting properties. With the onset of the coronavirus, there has been a rise in consumption of Ayurvedic remedies and herbal immunity boosters in India.</p>
                            <p class="card-text"><small class="text-muted"></small></p>
                        </div>
                    </div>
                    &nbsp; &nbsp;
                    <div class="card">
                        <img class="card-img-top" src="Images/warm_water.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Warm Water</h5>
                            <p class="card-text"> Warm Water,hot drink can offer comfort,especially on a chilly day. It can act as a salve for a troubled mind, and can make us feel closer to other people.one thing a hot drink won’t do is protect you from Covid-19.</p>
                            <p class="card-text"><small class="text-muted"></small></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        &nbsp;
        &nbsp;
        <div class="card text-center">
            <div class="card-body">
                <div class="card bg-dark text-white">
                    <img src="Images/kadha recipe.png" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                        <center>
                            <h2 class="card-title bg-light rounded-lg" style="color: #121416; font-family: cursive;font-weight: bold; width: 300px;">Kadha Recipe </h2>
                            <br/>
                            <a href="Kadha_Recipe.jsp" class="btn btn-primary text-white" style=" font-weight: bold">
                                View
                            </a>
                        </center>
                        <p class="card-text">&nbsp;</p>
                        <p class="card-text">&nbsp;</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card text-center">
            <div class="card-body">
                <h5 id="age_distribution" class="card-title">Age Groupwise Nutrition & Diet</h5>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <a href="Images/kadha recipe.jfif"></a>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card mb-3" style="max-width: 540px;">
                                    <div class="row no-gutters">
                                        <div class="col-md-4">
                                            <img src="Images/6monthchild.jpg" class="card-img" alt="Card image cap">
                                        </div>
                                        <div class="col-md-8  text-right">
                                            <div class="card-body">
                                                <h5 class="0 TO 6 Months">0 To 6 Months Nutrition & Diet</h5>
                                                <br/>
                                                <br/>
                                                <div class="card" style=" width: 150px; float: right;">
                                                    <a href="0_6_months.jsp" class="btn btn-primary">
                                                        View Details
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>   
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card mb-3" style="max-width: 540px;">
                                    <div class="row no-gutters">
                                        <div class="col-md-4">
                                            <img src="Images/6 to 12.jpg" class="card-img" alt="Card image cap">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="6 Month To 12Yr">6 Months To 12Yr. Nutrition & Diet</h5>
                                                <br/>
                                                <br/>
                                                <div class="card" style=" width: 150px; float: right;">
                                                    <a href="6_months_12_yr.jsp" class="btn btn-primary">
                                                        View Details
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card mb-3" style="max-width: 540px;">
                                        <div class="row no-gutters">
                                            <div class="col-md-4">
                                                <img src="Images/12 to 25year.jpg" class="card-img" alt="Card image cap">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h5 class="12 Yr To 25 Yr">12Yr. To 25Yr. Nutrition & Diet</h5>
                                                    <br/>
                                                    <br/>
                                                    <div class="card" style=" width: 150px; float: right;">
                                                        <a href="12_25_Years.jsp" class="btn btn-primary">
                                                            View Details
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card mb-3" style="max-width: 540px;">
                                        <div class="row no-gutters">
                                            <div class="col-md-4">
                                                <img src="Images/25-60yr.jpg" class="card-img" alt="Card image cap">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h5 class="25 Yr. To 60 Yr.">25Yr. To 60Yr. Nutrition & Diet</h5>
                                                    <br/>
                                                    <br/>
                                                    <div class="card" style=" width: 150px; float: right;">
                                                        <a href="25_60_Years.jsp" class="btn btn-primary">
                                                            View Details
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card mb-3" style="max-width: 540px;">
                                            <div class="row no-gutters">
                                                <div class="col-md-4">
                                                    <img src="Images/60 onwards.jpg" class="card-img" alt="Card image cap">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="card-body">
                                                        <h5 class="60 Yr Onwards">60Yr. Onwards Nutrition & Diet</h5>
                                                        <br/>
                                                        <br/>
                                                        <div class="card" style=" width: 150px; float: right;">
                                                            <a href="60_onwards.jsp" class="btn btn-primary">
                                                                View Details
                                                            </a>
                                                        </div>
                                                    </div>
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