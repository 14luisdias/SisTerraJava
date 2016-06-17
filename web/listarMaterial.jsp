<%-- 
    Document   : listarMaterial
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.MaterialImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Material"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação dos Materiais</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Material</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
            </td>
            </tr>
        </table>
        <div>
            <table>
                <tr> <td colspan="4" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Descrição | Uni | Preço |</b></td>
                    
                </tr>
                <%
                    MaterialImpl materialImpl = new MaterialImpl();
                    List<Material> list = materialImpl.getListAll();
                    for(Material m : list){
                %>
                        <tr>
                            <td colspan="4" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaMaterialporid?id=<%= m.getId() %>" style="text-decoration:none"> <%= m.getId()+" - "+m.getNome()+ " - "+ m.getUnidade()+ " - R$ "+ m.getPreco() %></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirMaterial?id=<%= m.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
