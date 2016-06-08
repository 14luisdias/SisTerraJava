<%-- 
    Document   : detalheTipoDeVeiculo
    Created on : 08/06/2016, 18:03:42
    Author     : 14luisdias
--%>

<%@page import="modelo.TipoDeVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes do Tipo de Veículo</title>
    </head>
    <body>
         <h1>Detalhes do Tipo de Veículo</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" style="text-decoration:none">Tipo de Veículo</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/listarTipoDeVeiculo.jsp" style="text-decoration:none">Listar Todos</a>  
        
        <%
            TipoDeVeiculo tV = (TipoDeVeiculo) request.getAttribute("tipoDeVeiculo");
        %>
        <form action="atualizarTipoDeVeiculo" method="post">
            <table>
            
                <tr> <td colspan="2" height="50"></td></tr>
                <tr>
                     <td>Código: </td>
                     <td><input type="text" name="cod" value="<%= tV.getId()%>" disabled="disabled"/></td>
                        
                </tr>
                <tr>
                    <td size="40%">Descrição</td>
                    <td><input type="text" name="nome" value="<%= tV.getNome()%>" size="70" required/></td>
                    <td><input type="hidden" name="id" value="<%= tV.getId()%>"/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Atualizar" />
                    </td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
