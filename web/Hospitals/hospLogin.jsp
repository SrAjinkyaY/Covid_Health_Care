<%-- 
    Document   : hospLogin
    Created on : 24 Nov, 2020, 1:39:48 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging you in...</title>
    </head>
    <%@page import="java.sql.*"%>
    <%
        session = request.getSession(false);
        if (session.getAttribute("hid") != null) {
            String uid = session.getAttribute("uid").toString();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                Statement stt = conn.createStatement();
                ResultSet rs = stt.executeQuery("select * from hospital where hid = '" + uid + "' ");
                if (rs.next()) {
                    String hid = rs.getString(1).toString();
                    session = request.getSession();
                    session.setAttribute("hid", hid);
                    response.sendRedirect("hospHome.jsp");

                }
            } catch (Exception ex) {
                out.print(ex);
            }
        }
            if (request.getParameter("prn") != null) {
                String prn = request.getParameter("prn");
                String psw = request.getParameter("psw");
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
                    Statement stt = conn.createStatement();
                    ResultSet rs = stt.executeQuery("select * from hospital where prn = '" + prn + "' and password='" + psw + "' and status='Y'");
                    if (rs.next()) {
                        if (rs.getString(20).equals(psw)) {
                            String hid = rs.getString(1).toString();
                            session = request.getSession();
                            session.setAttribute("hid", hid);
                            response.sendRedirect("hospHome.jsp");
                        }
                    } else {
    %>
    <script type="text/javascript">
        alert("Please check Registration Number or Password and try again !");
        window.location.href("../login.jsp");
    </script>
    <%
                    }
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
            }
        
    %> 
        

</html>
