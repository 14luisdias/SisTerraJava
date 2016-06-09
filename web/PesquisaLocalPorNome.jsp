<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.LocalImpl"%>
<%@page import="modelo.Local"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedor</title>
    </head>
      
    <body>
         <table>
            <tr><td><h1>Resultado da Busca</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/local.jsp" style="text-decoration:none">Local</a>
            </td>
            </tr>
        </table>
         <div>
            <table>
                <tr> <td colspan="3" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Descrição</b></td>
                    
                </tr>
                <%
                   List<Local> l = (List<Local>) request.getAttribute("local");
                   
                  for(Local local: l){
                              
                %>
                   <tr>
                      <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaLocalporid?id=<%= local.getId() %>" style="text-decoration:none"> <%= local.getId()+" - "+local.getNome()%></a></td>
                      <td><a href="http://localhost:8080/sistTerra/excluirLocal?id=<%= local.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                    </tr>
                <%
                   }
                %>
                
            </table>
        </div>
     </body>
</html>
