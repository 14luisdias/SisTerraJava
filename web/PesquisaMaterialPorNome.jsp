<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.MaterialImpl"%>
<%@page import="modelo.Material"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Material</title>
    </head>
      
    <body>
         <table>
            <tr><td><h1>Resultado da Busca</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
            </td>
            </tr>
        </table>
         <div>
            <table>
                <tr> <td colspan="3" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Descrição | Uni | Preço |</b></td>
                    
                </tr>
                <%
                   List<Material> m = (List<Material>) request.getAttribute("material");
                   
                  for(Material material: m){
                              
                %>
                   <tr>
                      <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaMaterialporid?id=<%= material.getId() %>" style="text-decoration:none"> <%= material.getId()+" - "+material.getNome()+ " - "+ material.getUnidade()+ " - R$ "+ material.getPreco()%></a></td>
                      <td><a href="http://localhost:8080/sistTerra/excluirMaterial?id=<%= material.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                    </tr>
                <%
                   }
                %>
                
            </table>
        </div>
     </body>
</html>
