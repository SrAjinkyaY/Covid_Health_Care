<%-- 
    Document   : updateStatus
    Created on : 8 Dec, 2020, 11:09:24 PM
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
        String remarkDate = request.getParameter("remarkDate");
        String p_stat = request.getParameter("p_stat");
        String critical_note = request.getParameter("critical_note");
        String treatment = request.getParameter("treatment");
        String diet = request.getParameter("diet");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            String sql ="insert into patient_report (pid, hid, remarkDate, p_stat, critical_note, treatment, diet) values (?,?,?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1,pid);
            st.setString(2, hid);
            st.setString(3, remarkDate);
            st.setString(4, p_stat);
            st.setString(5, critical_note);
            st.setString(6, treatment);
            st.setString(7, diet);
            st.executeUpdate();
            response.sendRedirect("viewPatient.jsp");
        } catch (Exception ex) {

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updating Patient Profile</title>
    </head>
    <body>

    </body>
</html>
<%                
        out.print(ex);
        }
    }


%>
