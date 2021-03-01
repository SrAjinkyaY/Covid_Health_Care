<%-- 
    Document   : addHosp
    Created on : 7 Nov, 2020, 1:13:17 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
        <div class="card">
            <div class="card-body">
                <img src="Images/hospi.jpg" alt="Hospital" style="float: right; position: -webkit-sticky; position: sticky; top: 4rem;">
                <div class="card border-primary mb-3" style="max-width: 800px;">
                    <div class="card-header"><h5 class="card-title">Hospital Registration</h5></div>
                    <div class="card-body text-primary">
                        <form action="regiHosp.jsp" method="post" autocomplete="off">
                            <div class="card-header"><h4 class="card-title text-dark">Applicant Details</h4></div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="applicant">Name of Applicant</label>
                                    <input name="applicant" type="text" class="form-control" id="inputEmail4" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="Designation">Designation of Applicant</label>
                                    <input name="desig" type="text" class="form-control" id="inputEmail4" required>
                                </div>
                            </div>
                            <div class="card-header"><h4 class="card-title text-dark">Hospital Details</h4></div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="inputfname">Hospital Name</label>
                                    <input name="hname" type="text" class="form-control" placeholder="Hospital Name" required>
                                </div>
                                <div class="col">
                                    <label for="inputlname" style=" color: green; font-weight: bolder">Permanent Registration Number</label>
                                    <input name="prn" type="text" class="form-control border-success" placeholder="Permanent Registration Number">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="gender">Hospital Type</label>
                                    <select name="hosptype" id="htype" class="form-control" required>
                                        <option selected>Choose...</option>
                                        <option value="Government">Government</option>
                                        <option value="Semi Government">Semi Government</option>
                                        <option value="Private">Private</option>
                                        <option value="Institute">Institute</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="contNum">Contact Number</label>
                                    <input name="contNum" type="MobileNumber" class="form-control" placeholder="Eg.+9191464XXXXX" required>
                                </div>
                                <div class="col">
                                    <label for="inputEmail4">Email</label>
                                    <input name="mail" type="email" class="form-control" id="inputEmail4" placeholder="Email" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="address">Address</label>
                                    <textarea name="address" class="form-control" id="exampleFormControlTextarea1" rows="3" required></textarea>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col">
                                    <label for="inputCity">City</label>
                                    <input name="city" type="text" class="form-control" id="inputCity" required>
                                </div>
                                <div class="form-group col">
                                    <label for="inputState">State</label>
                                    <input name="state" type="text" class="form-control" id="inputState" required>
                                </div>                                
                                <div class="form-group col-md-4">
                                    <label for="inputZip">Zip</label>
                                    <input name="pin" type="text" class="form-control" id="inputZip" required>
                                </div>
                            </div>
                            <div class="card-header"><h4 class="card-title text-dark">Staff Details</h4></div>
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="medicalOfficer">Name of Medical Officer</label>
                                    <input name="moname" type="text" class="form-control" placeholder="Medical officer Incharge" required>
                                </div>
                                <div class="col-md-6">
                                    <input name="status" type="text" class="form-control" style="display: none" value="Y" readonly>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col">
                                    <label for="numDocs">Number of Doctors</label>
                                    <input name="numDoc" type="text" class="form-control" placeholder="No. of Doctors" required>
                                </div>
                                <div class="form-group col">
                                    <label for="numNurses">Number of Nurses</label>
                                    <input name="numNurses" type="text" class="form-control" placeholder="No. of Nurses" required>
                                </div>
                            </div>
                            <div class="card-header"><h4 class="card-title text-dark">Surgical Facilities</h4></div>
                            <div class="form-row">
                                <div class="form-group col">
                                    <label for="numIcu">ICU Beds</label>
                                    <input id="ib" name="icuNum" type="text" class="form-control" placeholder="No. of ICU Beds" required>
                                </div>
                                <div class="form-group col">
                                    <label for="numSpcl">Special Beds</label>
                                    <input id="sb" name="numSpcl" type="text" class="form-control" placeholder="No. of Special Beds" required>
                                </div>
                                <div class="form-group col">
                                    <label for="numGen">General Beds</label>
                                    <input id="gb" name="numGen" type="text" class="form-control" placeholder="No. of General Beds" required>
                                </div>
                                <div class="form-group col">
                                    <label for="numIcu">Other Beds</label>
                                    <input id="ob" name="othNum" type="text" class="form-control" placeholder="No. of Other Beds" required>
                                </div>
                            </div>
                            <div class="card-header"><h4 class="card-title text-dark">Login Credentials</h4></div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPassword6">Password</label>
                                    <input name="password" type="password" id="pwd" class="form-control" aria-describedby="passwordHelpInline">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword6">Confirm Password</label>
                                    <input name="confpass" type="password" id="cpwd" class="form-control" aria-describedby="passwordHelpInline">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6"></div>
                                <div class="form-group col-md-6" id="showErrorPwd"> </div>
                            </div>
                            <div class="dropdown-divider"></div>
                            <center>
                                <button class="btn btn-success" type="submit">Register! </button> &nbsp;
                            <a class="btn btn-danger" href="admin_index.html" style="width: 85px;">Cancel</a>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function(){
                    $('#cpwd').keyup(function(){
                        var pwd = $('#pwd').val();
                        var cpwd = $('#cpwd').val();
                        if (cpwd!=pwd){
                            $('#showErrorPwd').html('Password Not Matching !');
                            $('#showErrorPwd').css('color','red');
                            return false;
                        } else{
                            $('#showErrorPwd').html('Password Matched');
                            $('#showErrorPwd').css('color','green');
                            return true;
                        }
                    });
            });
        </script>
        <script type="text/javascript">
            var preloader = document.getElementById('spinLoader');
            function spinStop() {
                preloader.style.display = 'none';
            }
        </script>
    </body>
</html>
