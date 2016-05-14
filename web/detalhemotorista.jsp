<%-- 
    Document   : detalhemotorista
    Created on : 14/05/2016, 18:03:42
    Author     : LAB03-22
--%>

<%@page import="modelo.Motorista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Motorista m = (Motorista) request.getAttribute("motorista");
        %>
        
        Motorista: <input type="text" name="motorista" value="<%= m.getNome()%>" />
    </body>
</html>
