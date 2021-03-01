<%-- 
    Document   : logout
    Created on : 3 Nov, 2020, 2:54:47 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.removeAttribute("LoggedUser");
    session.invalidate();
    response.sendRedirect("../index.html");
%>
