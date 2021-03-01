<%-- 
    Document   : regiHosp
    Created on : 9 Nov, 2020, 11:25:15 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href('addHosp.jsp'));
        }
    </script>
    <%
        String aplname = request.getParameter("applicant");
        String desig = request.getParameter("desig");
        String hname = request.getParameter("hname");
        String prn = request.getParameter("prn");
        String hosptype = request.getParameter("hosptype");
        String contNum = request.getParameter("contNum");
        String mail = request.getParameter("mail");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String states = request.getParameter("state");
        String pin = request.getParameter("pin");
        String moname = request.getParameter("moname");
        String status = request.getParameter("status");
        String numDoc = request.getParameter("numDoc");
        String numNurses = request.getParameter("numNurses");
        String ib = request.getParameter("icuNum");
        String sb = request.getParameter("numSpcl");
        String gb = request.getParameter("numGen");
        String ob = request.getParameter("othNum");
        String confpass = request.getParameter("confpass");
        int totalBed = Integer.parseInt(ib)+Integer.parseInt(sb)+Integer.parseInt(gb)+Integer.parseInt(ob);
        String TotalBed = Integer.toString(totalBed).toString();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            String sql = "insert into hospital (aplname, desig, hname, prn, hosptype, contNum, mail, address, city, states, pin, moname, numDoc, numNurses, ib, sb, gb, ob, password, status, TotalBed) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, aplname);
            st.setString(2, desig);
            st.setString(3, hname);
            st.setString(4, prn);
            st.setString(5, hosptype);
            st.setString(6, contNum);
            st.setString(7, mail);
            st.setString(8, address);
            st.setString(9, city);
            st.setString(10, states);
            st.setString(11, pin);
            st.setString(12, moname);
            st.setString(13, numDoc);
            st.setString(14, numNurses);
            st.setString(15, ib);
            st.setString(16, sb);
            st.setString(17, gb);
            st.setString(18, ob);
            st.setString(19, confpass);
            st.setString(20, status);
            st.setString(21, TotalBed);
            st.executeLargeUpdate();

    %>
    <script type="text/javascript">
        alert("You have Successfully requested for registration ! Please wait for activation of your profile");
        window.location.href = "hospRegistration.jsp";
    </script>
    <%        
    } catch (SQLIntegrityConstraintViolationException ex) {
    %>
    <script type="text/javascript">
        alert("This Registration Number is previously registered !");
        window.location.href = "hospRegistration.jsp";
    </script>
    <%
            out.print(ex);
        }
    %>
</html>