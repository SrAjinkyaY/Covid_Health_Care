<%-- 
    Document   : patientRegi
    Created on : 5 Dec, 2020, 6:08:09 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registering Patient</title>
    </head>
    <body>
        <%
            if (session.getAttribute("hid") == null) {
                response.sendRedirect("../login.jsp");
            } else {
                String hid = session.getAttribute("hid").toString();
                String adhar_num = request.getParameter("adhar_num");
                String ward_type = request.getParameter("ward_type");
                String ward_num = request.getParameter("ward_num");
                String bed_num = request.getParameter("ward_num");
                String p_fname = request.getParameter("p_fname");
                String p_mname = request.getParameter("p_mname");
                String p_lname = request.getParameter("p_lname");
                String p_gender = request.getParameter("p_gender");
                String p_weight = request.getParameter("p_weight");
                String p_bldgrp = request.getParameter("p_bldgrp");
                String p_dob = request.getParameter("p_dob");
                String p_mob_num = request.getParameter("p_mob_num");
                String pa_mob_num = request.getParameter("pa_mob_num");
                String p_address = request.getParameter("p_address");
                String p_city = request.getParameter("p_city");
                String p_state = request.getParameter("p_state");
                String p_pin = request.getParameter("p_pin");
                String p_occupation = request.getParameter("p_occupation");
                //String p_income = request.getParameter("p_income");
                String und_doc_name = request.getParameter("und_doc_name");
                String prov_dig = request.getParameter("prov_dig");
                String fin_dig = request.getParameter("fin_dig");
                String ref_hosp = request.getParameter("ref_hosp");
                String ref_doc = request.getParameter("ref_doc");
                String k_fname = request.getParameter("k_fname");
                String k_mname = request.getParameter("k_mname");
                String k_lname = request.getParameter("k_lname");
                String k_mob_num = request.getParameter("k_mob_num");
                String k_address = request.getParameter("k_address");
                String k_city = request.getParameter("k_city");
                String k_state = request.getParameter("k_state");
                String k_pin = request.getParameter("k_pin");
                String beds = "";
                String upbeds = "";
                int avlbed = 0;
                String rembed = "";

                if (ward_type.contentEquals("ib")) {
                    beds = "ICU";
                } else if (ward_type.contentEquals("sb")) {
                    beds = "Special";
                } else if (ward_type.contentEquals("gb")) {
                    beds = "General";
                }
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                    String sql = "insert into patients (hid, adhar_num, ward_type, ward_num, bed_num, p_fname, p_mname, p_lname, p_gender, p_weight, p_bldgrp, p_dob, p_mob_num, pa_mob_num, p_address, p_city, p_state, p_pin, p_occupation, und_doc_name, prov_dig, fin_dig, ref_hosp, ref_doc, k_fname, k_mname, k_lname, k_mob_num, k_address, k_city, k_state, k_pin, status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement st = conn.prepareStatement(sql);
                    st.setString(1, hid);
                    st.setString(2, adhar_num);
                    st.setString(3, beds);
                    st.setString(4, ward_num);
                    st.setString(5, bed_num);
                    st.setString(6, p_fname);
                    st.setString(7, p_mname);
                    st.setString(8, p_lname);
                    st.setString(9, p_gender);
                    st.setString(10, p_weight);
                    st.setString(11, p_bldgrp);
                    st.setString(12, p_dob);
                    st.setString(13, p_mob_num);
                    st.setString(14, pa_mob_num);
                    st.setString(15, p_address);
                    st.setString(16, p_city);
                    st.setString(17, p_state);
                    st.setString(18, p_pin);
                    st.setString(19, p_occupation);
                    //st.setString(20, p_income);
                    st.setString(20, und_doc_name);
                    st.setString(21, prov_dig);
                    st.setString(22, fin_dig);
                    st.setString(23, ref_hosp);
                    st.setString(24, ref_doc);
                    st.setString(25, k_fname);
                    st.setString(26, k_mname);
                    st.setString(27, k_lname);
                    st.setString(28, k_mob_num);
                    st.setString(29, k_address);
                    st.setString(30, k_city);
                    st.setString(31, k_state);
                    st.setString(32, k_pin);
                    st.setString(33, "A");
                    st.executeUpdate();
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection selcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                        Statement sel = selcon.createStatement();
                        ResultSet selrs = sel.executeQuery("select ib, sb, gb from hospital where hid='" + hid + "'");
                        if (selrs.next()) {
                            if (ward_type.equals("ib")) {
                                avlbed = Integer.parseInt(selrs.getString(1));
                            } else if (ward_type.equals("sb")) {
                                avlbed = Integer.parseInt(selrs.getString(2));
                            } else if (ward_type.equals("gb")) {
                                avlbed = Integer.parseInt(selrs.getString(3));
                            }
                        }
                        selcon.close();
                    } catch (Exception ex) {
                        out.print("Error 2: " + ex);
                    }
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection upcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                        Statement updbed = upcon.createStatement();
                        if (ward_type.equals("ib")) {
                            rembed = Integer.toString(avlbed - 1);
                            upbeds = "update hospital set ib='" + rembed + "'";
                            updbed.executeUpdate(upbeds);
                        } else if (ward_type.equals("sb")) {
                            rembed = Integer.toString(avlbed - 1);
                            upbeds = "update hospital set sb='" + rembed + "'";
                            updbed.executeUpdate(upbeds);
                        } else if (ward_type.equals("gb")) {
                            rembed = Integer.toString(avlbed - 1);
                            upbeds = "update hospital set gb='" + rembed + "'";
                            updbed.executeUpdate(upbeds);
                        }
                        upcon.close();
                    } catch (Exception ex) {
                        out.print("Error 3: " + ex);
                    }
                    conn.close();
        %>
        <script>
            alert("Patient added Successfully");
        </script>
        <%
                    response.sendRedirect("addPatient.jsp");
                } catch (Exception ex) {
                    out.print("Error 1: " + ex);
                }
            }
        %>
    </body>
</html>
