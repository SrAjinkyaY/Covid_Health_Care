<%-- 
    Document   : confirmRqst
    Created on : 3 Dec, 2020, 4:20:16 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Request for Call</title>
    </head>
    <%
    String hid = request.getParameter("hid");
    String uid = request.getParameter("uid");
    String hname = request.getParameter("hname");
    String rqstType = request.getParameter("rqstType");
    String age = request.getParameter("age");
    String alt_mobNum = request.getParameter("alt_mobNum");
    String date = request.getParameter("date");
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            String sql = "insert into requests (hid, uid, rqstType, age, date, alt_mobNum, st) values(?,?,?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, hid);
            st.setString(2, uid);
            st.setString(3, rqstType);
            st.setString(4, age);
            st.setString(5, date);   
            st.setString(6, alt_mobNum);
            st.setString(7, "W");
            st.executeUpdate();
            %>
    <script type="text/javascript">
        var rqstType = <%=rqstType%>
        var hname = <%=hname%>
        alert("You Successfully Requested for "+rqstType+" to hospital "+hname);
        window.location.href = "rqstCall.jsp";
    </script>
    <%
        response.sendRedirect("rqstCall.jsp");
    }
    catch(Exception ex){
    %>
    <script type="text/javascript">
        var ex = <%=ex%>
        alert("Error ! "+ex);
    </script>
    <%
        
        out.print(ex);
    }
%>
</html>
