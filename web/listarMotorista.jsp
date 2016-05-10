<%-- 
    Document   : listarMotorista
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Motorista"%>
<%@page import="controle.MotoristaImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação dos Motorista</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Motoristas</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/motorista.jsp">Motorista</a>
            </td>
            </tr>
        </table>
        <div>
            <table>
                <tr> <td colspan="2" height="20"></td></tr>
                <tr>
                    <td width="100"><b>Código</b></td>
                    <td><b>Nome</b></td>
                </tr>
                <%
                    MotoristaImpl motoristaImpl = new MotoristaImpl();
                    List<Motorista> list = motoristaImpl.getListAll();
                    for(Motorista m : list){
                %>
                        <tr>
                            <td><%= m.getId() %></td>
                            <td><%= m.getNome()%></td>
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
