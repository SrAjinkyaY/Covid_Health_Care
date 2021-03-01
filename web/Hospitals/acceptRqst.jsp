<%-- 
    Document   : acceptRqst
    Created on : 13 Dec, 2020, 3:40:15 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>Accepting Request</title>
    </head>
    <body>
        <%
    String rid = request.getParameter("rid");
    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
        Statement uprqst = con.createStatement();
        String acsql = "update requests set st = 'A' where rid = '"+rid+"'";
        uprqst.executeUpdate(acsql);
        %>
        <script type="text/javascript">
            alert("Request Accepted");
            window.location.href("treatRequests.jsp");
        </script>
        <%
            response.sendRedirect("treatRequests.jsp");
    } catch (Exception ex) {
        out.print(ex);
    }
%>
    </body>
</html>
