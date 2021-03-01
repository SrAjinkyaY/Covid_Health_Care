<%-- 
    Document   : discharge
    Created on : 12 Dec, 2020, 12:40:18 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discharge Patient</title>
    </head>
    <body>
        <%
            if (session.getAttribute("hid") == null) {
                response.sendRedirect("../login.jsp");
            } else {
                String hid = session.getAttribute("hid").toString();
                String pid = request.getParameter("pid");
                int avlbed = 0;
                String ward_type = "";
                String beds = "";
                String rembed = "";
                String upbeds = "";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                    String sql = "insert into plasma (hid, pid) values (?,?)";
                    PreparedStatement st = conn.prepareStatement(sql);
                    st.setString(1, hid);
                    st.setString(2, pid);
                    st.executeUpdate();
                    conn.close();
                    try {
                        String update = "update patients set status = 'D' where pid= '" + pid + "'";
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                        Statement updt = con.createStatement();
                        updt.executeUpdate(update);
                        con.close();
                    } catch (Exception er) {
                        out.print(er);
                    }
                    try {
                        String sel = "select ward_type from patients where pid = '" + pid + "'";
                        Connection selcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                        Statement selrs = selcon.createStatement();
                        ResultSet rs = selrs.executeQuery(sel);
                        if (rs.next()) {
                            ward_type = rs.getString(1);
                        }
                        selcon.close();
                    } catch (Exception ex) {
                        out.print(ex);
                    }
                    if (ward_type.contentEquals("ICU")) {
                        beds = "ib";
                    } else if (ward_type.contentEquals("Special")) {
                        beds = "sb";
                    } else if (ward_type.contentEquals("General")) {
                        beds = "gb";
                    }
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection selcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                        Statement sel = selcon.createStatement();
                        ResultSet selrs = sel.executeQuery("select ib, sb, gb from hospital where hid='" + hid + "'");
                        if (selrs.next()) {
                            if (beds.equals("ib")) {
                                avlbed = Integer.parseInt(selrs.getString(1));
                            } else if (beds.equals("sb")) {
                                avlbed = Integer.parseInt(selrs.getString(2));
                            } else if (beds.equals("gb")) {
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
                        if (beds.equals("ib")) {
                            rembed = Integer.toString(avlbed + 1);
                            upbeds = "update hospital set ib='" + rembed + "'";
                            updbed.executeUpdate(upbeds);
                        } else if (beds.equals("sb")) {
                            rembed = Integer.toString(avlbed + 1);
                            upbeds = "update hospital set sb='" + rembed + "'";
                            updbed.executeUpdate(upbeds);
                        } else if (beds.equals("gb")) {
                            rembed = Integer.toString(avlbed + 1);
                            upbeds = "update hospital set gb='" + rembed + "'";
                            updbed.executeUpdate(upbeds);
                        }
                        upcon.close();
                    } catch (Exception ex) {
                        out.print("Error 3: " + ex);
                    }
                    response.sendRedirect("viewPatient.jsp");
                } catch (Exception ex) {
                    out.print(ex);
                }
            }
        %>
    </body>
</html>
