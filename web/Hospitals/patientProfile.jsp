<%-- 
    Document   : patientProfile
    Created on : 8 Dec, 2020, 3:54:21 PM
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
        String pid = request.getParameter("pid");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from patients where pid = '" + pid + "' and status='A'");
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
                        <%
                            while (rs.next()) {
                        %>
                        <div style="margin-left: 300px; border-style: groove; width: 900px;">
                            <div class="card-header">
                                <h3>Patient Admission Form</h3>
                            </div>
                            <br>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-4">
                                    <h6 style="float: left;">Addhar Number</h6>
                                    <input value="<%=rs.getString(3)%>" type="text" class="form-control" readonly>
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
                                    <h6 style="float: left;">Ward Type</h6>
                                    <input value="<%=rs.getString(4)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <h6 style="float: left;">Ward Number</h6>
                                    <input value="<%=rs.getString(5)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <h6 style="float: left;">Bed Number</h6>
                                    <input value="<%=rs.getString(6)%>" type="text" class="form-control" readonly>
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
                                    <input value="<%=rs.getString(7)%> <%=rs.getString(8)%> <%=rs.getString(9)%>" type="text" class="form-control" placeholder="First name" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-3">
                                    <h6 style="float: left;">Gender</h6>
                                    <input value="<%=rs.getString(10)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <h6 style="float: left;">Weight</h6>
                                    <input value="<%=rs.getString(11)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-2">
                                    <h6 style="float: left;">Age</h6>
                                    <input value="<%=rs.getString(12)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <h6 style="float: left;">DOB</h6>
                                    <input value="<%=rs.getString(13)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Contact Information:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Mobile Number</h6>
                                    <input value="<%=rs.getString(14)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Alternate Mobile Number</h6>
                                    <input value="<%=rs.getString(15)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-7">
                                    <h6 style="float: left;">Address</h6>
                                    <input value="<%=rs.getString(16)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="col-7">
                                    <h6 style="float: left;">City</h6>
                                    <input value="<%=rs.getString(17)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="col">
                                    <h6 style="float: left;">States</h6>
                                    <input value="<%=rs.getString(18)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="col">
                                    <h6 style="float: left;">Pin</h6>
                                    <input value="<%=rs.getString(19)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Occupation and Income:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Occupation</h6>
                                    <input value="<%=rs.getString(20)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Treatment Under Doctor</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Occupation</h6>
                                    <input value="<%=rs.getString(21)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-12">
                                    <h6 style="float: left;">Diagnosis</h6> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px;">
                                <div class="form-group col-md-6">
                                    <input value="<%=rs.getString(22)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input value="<%=rs.getString(23)%>" type="text" class="form-control" readonly>
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
                                    <input value="<%=rs.getString(24)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input value="<%=rs.getString(25)%>" type="text" class="form-control" readonly>
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
                                    <input value="<%=rs.getString(26)%> <%=rs.getString(27)%> <%=rs.getString(28)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <h5 style="float: left;">Kin Contact Information:</h5> 
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Mobile Number</h6>
                                    <input value="<%=rs.getString(29)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6" style="margin-top: 5px;">
                                    <h6 style="float: left;">Address</h6>
                                    <input value="<%=rs.getString(30)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-6" style="margin-top: 5px;">
                                    <h6 style="float: left;">City</h6>
                                    <input value="<%=rs.getString(31)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6" style="margin-top: 5px;">
                                    <h6 style="float: left;">State</h6>
                                    <input value="<%=rs.getString(32)%>" type="text" class="form-control" readonly>
                                </div>
                                <div class="form-group col-md-6" style="margin-top: 5px;">
                                    <h6 style="float: left;">Pin-Code</h6>
                                    <input value="<%=rs.getString(33)%>" type="text" class="form-control" readonly>
                                </div>
                            </div>
                        </div>
                        <form method="post" style="margin-left: 300px; border-style: groove; width: 900px;">
                            <div class="card-header">
                                <h5>Update Patient Status</h5>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Remark Date</h6>
                                    <input name="remarkDate" type="date" class="form-control datepicker" placeholder="Remark Date">
                                </div>
                                <div class="form-group col-md-6" style="display: none">
                                    <h6 style="float: left;">PID</h6>
                                    <input name="pid" type="text" class="form-control" value="<%=pid%>" placeholder="pid" readonly>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Patient Status</h6>
                                    <textarea  name="p_stat" class="form-control" rows="3" id="Text"></textarea>
                                </div>
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Critical Note</h6>
                                    <textarea name="critical_note" class="form-control" rows="3" id="Text"></textarea>
                                </div>
                            </div>
                            <div class="form-row" style="width: 800px; margin-left: 50px; margin-top: 10px;">
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Treatment</h6>
                                    <textarea name="treatment" class="form-control" rows="3" id="Text"></textarea>
                                </div>
                                <div class="form-group col-md-6">
                                    <h6 style="float: left;">Diet</h6>
                                    <textarea name="diet" class="form-control" rows="3" id="Text"></textarea>
                                </div>
                            </div>
                            <div class="dropdown-divider"></div>
                            <button formaction="updateStatus.jsp" type="submit" class="btn btn-primary">Update Status</button>
                            <button formaction="viewStatus.jsp" type="submit" class="btn btn-primary">View Updates</button>
                            <button formaction="discharge.jsp" type="submit" class="btn btn-primary">&nbsp;Discharge&nbsp;</button>
                            <br><br>
                        </form>
                    </div> 
                    <%
                        }
                    %>
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
        } catch (Exception ex) {

        }

    }
%>
</html>
