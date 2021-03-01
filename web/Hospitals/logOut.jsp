<%-- 
    Document   : logOut
    Created on : 24 Nov, 2020, 9:35:20 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging you out...</title>
    </head>
    <%
        session.removeAttribute("hid");
        session.invalidate();
        response.sendRedirect("../login.jsp");
    %>
</html>
