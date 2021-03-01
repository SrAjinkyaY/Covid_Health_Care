<%-- 
    Document   : accept
    Created on : 13 Nov, 2020, 9:48:20 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String hid = request.getParameter("hid");
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            String sql = "update hospital set status = 'Y' where hid = '"+hid+"'";
            Statement st = conn.createStatement();
            st.executeUpdate(sql);
            %>
                <script type="text/javascript">
                    alert("Request Accepted Successfully !");
                    window.location.href = "regiRqst.jsp";
                </script>
            <%
    }
    catch(Exception ex){
    %>
    <script type="text/javascript">
        var ex = <%=ex%>;
        alert("Error !"+ex);
        window.location.href = "hospRegistration.jsp";
    </script>
    <%
            out.print(ex);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
