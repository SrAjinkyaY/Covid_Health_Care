<%-- 
    Document   : addPatient
    Created on : 24 Nov, 2020, 9:29:09 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("hid")== null) {
        response.sendRedirect("../login.jsp");
    } else {
        String hid = session.getAttribute("hid").toString();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from hospital where hid = '" + hid + "'");
            while (rs.next()) {
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
                        <div class="card-header" style="margin-left: 300px; width: 900px;">
                            <h4>
                                Available Beds
                                <table class="table">
                                    <tbody class="thead-light">
                                        <tr>
                                            <th>General</th>
                                            <th>ICU</th>
                                            <th>Special</th>
                                        </tr>
                                        <tr>
                                            <td><%=rs.getString(18)%></td>
                                            <td><%=rs.getString(16)%></td>
                                            <td><%=rs.getString(17)%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </h4>
                        </div>
                        <form action="patientRegi.jsp" method="post" style="margin-left: 300px; border-style: groove; width: 900px;">
                            <div class="card-header">
                                <h3>Patient Admission Form</h3>
                            </div>
                            <br>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-4">
                                    <h6 style="float: left;">Addhar Number</h6>
                                    <input name="adhar_num" type="text" class="form-control" placeholder="Addhar Number">
                                </div>
                                <div class="form-group col-md-0">
                                    &nbsp;
                                </div>
                                <div class="form-group col-md-5">
                                    <h5 style="float: left;">&nbsp;</h5>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-4">
                                    <select name="ward_type" id="inputState" class="form-control">
                                        <option selected>Ward Type...</option>
                                        <option value="gb">General</option>
                                        <option value="ib">ICU</option>
                                        <option value="sb">Special</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <input name="ward_num" type="text" class="form-control" placeholder="Ward Number">
                                </div>
                                <div class="form-group col-md-4">
                                    <input name="bed_num" type="text" class="form-control" placeholder="Bed Number">
                                </div>
                            </div>
                            <div class="card-header">
                                <h5>Patient Details</h5>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Patient Name:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px;  margin-left: 50px">
                                <div class="form-group col-md-4">
                                    <input name="p_fname" type="text" class="form-control" placeholder="First name" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input name="p_mname" type="text" class="form-control" placeholder="Middle name" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input name="p_lname" type="text" class="form-control" placeholder="Last name" required>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-3">
                                    <select name="p_gender" id="inputState" class="form-control">
                                        <option selected>Gender...</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="Transgender">Transgender</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <input name="p_weight" type="text" class="form-control" placeholder="Weight-[Kg]">
                                </div>
                                <div class="form-group col-md-3">
                                    <select name="p_bldgrp" id="bldgrp" class="form-control">
                                        <option selected>Blood Group</option>
                                        <option value="O+ve">O+ve</option>
                                        <option value="O-ve">O-ve</option>
                                        <option value="A+ve">A+ve</option>
                                        <option value="A-ve">A-ve</option>
                                        <option value="B+ve">B+ve</option>
                                        <option value="B-ve">B-ve</option>
                                        <option value="AB+ve">AB+ve</option>
                                        <option value="AB-ve">AB-ve</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                
                                <div class="form-group col-md-4">
                                    <label style="float: left; font-weight: bold;">Date of Birth</label>
                                    <input name="p_dob" type="date" class="form-control md-form md-outline input-with-post-icon datepicker" placeholder="Date of Birth">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Contact Information:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <input name="p_mob_num" type="text" class="form-control" placeholder="Mobile Number">
                                </div>
                                <div class="form-group col-md-6">
                                    <input name="pa_mob_num" type="text" class="form-control" placeholder="Alternate Mobile Number">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <textarea  name="p_address" type="text" class="form-control" id="inputAddress" placeholder="Address"></textarea>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="col-7">
                                    <input name="p_city" type="text" class="form-control" placeholder="City">
                                </div>
                                <div class="col">
                                    <input name="p_state" type="text" class="form-control" placeholder="State">
                                </div>
                                <div class="col">
                                    <input name="p_pin" type="text" class="form-control" placeholder="Pin Code">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Occupation:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <input name="p_occupation" type="text" class="form-control" placeholder="Occupation">
                                </div>
                                <div class="form-group col-md-6">
                                    <%--<input name="p_income" type="text" class="form-control" placeholder="Income in Rs/-">--%>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Treatment Under Doctor</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <input name="und_doc_name" type="text" class="form-control" placeholder="Treatment Under Doctor">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-12">
                                    <h6 style="float: left;">Diagnosis</h6> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <input name="prov_dig" type="text" class="form-control" placeholder="Provisional Diagnosis">
                                </div>
                                <div class="form-group col-md-6">
                                    <input name="fin_dig" type="text" class="form-control" placeholder="Final Diagnosis">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <h5 style="float: left;">Referred by Hospital Name</h5> 
                                </div>
                                <div class="form-group col-md-6">
                                    <h5 style="float: left;">Doctor</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <input name="ref_hosp" type="text" class="form-control" placeholder="Referred by Hospital">
                                </div>
                                <div class="form-group col-md-6">
                                    <input name="ref_doc" type="text" class="form-control" placeholder="Referred Doctor Name">
                                </div>
                            </div>
                            <br/>
                            <div class="card-header">
                                <h5>Kin Details</h5>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Kin Name:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px;  margin-left: 50px">
                                <div class="form-group col-md-4">
                                    <input name="k_fname" type="text" class="form-control" placeholder="First name">
                                </div>
                                <div class="form-group col-md-4">
                                    <input name="k_mname" type="text" class="form-control" placeholder="Middle name">
                                </div>
                                <div class="form-group col-md-4">
                                    <input name="k_lname" type="text" class="form-control" placeholder="Last name">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Kin Contact Information:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <input name="k_mob_num" type="text" class="form-control" placeholder="Mobile Number">
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6" style="margin-top: 5px;">
                                    <textarea name="k_address" type="text" class="form-control" id="inputAddress" rows="4" placeholder="Address"></textarea>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="form-row" style="margin-top: 2px;">
                                        <input name="k_city" type="text" class="form-control" placeholder="City">
                                    </div>
                                    <div class="form-row" style="margin-top: 2px;">
                                        <input name="k_state" type="text" class="form-control" placeholder="State">
                                    </div>
                                    <div class="form-row" style="margin-top: 2px;">
                                        <input name="k_pin" type="text" class="form-control" placeholder="Pin-Code">
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown-divider"></div>
                            <button class="btn btn-primary" type="submit">submit</button>
                            <a class="btn btn-primary" href="Patient.jsp">Cancle</a>
                            <br><br>
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
    <%
                }
            } catch (Exception ex) {

            }

        }
    %>
</html>
