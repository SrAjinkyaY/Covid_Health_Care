<%-- 
    Document   : userLogin
    Created on : 2 Nov, 2020, 11:42:57 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>User Login</title>
    </head>
    <%
        String mail = request.getParameter("mail");
        String pass = request.getParameter("pass");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_health_care", "root", "Ajinkya@123");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from users where email = '" + mail + "' and pass = '" + pass + "'");
            out.print("While Starting");
            if (rs.next() == true) {
                if (rs.getString(6).equals(mail)) {
                    if (rs.getString(7).equals(pass)) {
                        String uid = rs.getString(1).toString();
                        session.setAttribute("LoggedUser", uid);
                        out.print("Done!!");
                        response.sendRedirect("userHome.jsp");
                    } else {
                        %>
                        <script type="text/javascript">
                            alert("Password Not Matched!");
                            window.location.href = "../index.html";
                        </script>
                        <%        
                      }
                } else {
                  
                        %>
                        <script type="text/javascript">
                            alert("No such User! ");
                            window.location.href = "../index.html";
                        </script>
                        <%        
                  }
            } else {
                        %>
                        <script type="text/javascript">
                            alert("No User Found");
                            window.location.href = "../index.html";
                        </script>
                        <%
              }

        } catch (Exception ex) {
            out.print(ex.getMessage());
          }
%>
</html>