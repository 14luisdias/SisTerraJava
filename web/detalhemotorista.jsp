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
        <title>Detalhes do Motorista</title>
    </head>
    <body>
         <h1>Detalhes do Motorista</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/motorista.jsp" style="text-decoration:none">Motorista</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/listarMotorista.jsp" style="text-decoration:none">Listar Todos</a>  
        
        <%
            Motorista m = (Motorista) request.getAttribute("motorista");
        %>
        <form action="atualizarMotorista" method="post">
            <table>
            
                <tr> <td colspan="2" height="50"></td></tr>
                <tr>
                     <td>Código: </td>
                     <td><input type="text" name="cod" value="<%= m.getId()%>" disabled="disabled"/></td>
                        
                </tr>
                <tr>
                    <td size="40%">Nome</td>
                    <td><input type="text" name="nome" value="<%= m.getNome()%>" size="70" required/></td>
                    <td><input type="hidden" name="id" value="<%= m.getId()%>"/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Atualizar" />
                    </td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
