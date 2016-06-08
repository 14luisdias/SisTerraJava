<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.FornecedorImpl"%>
<%@page import="modelo.Fornecedor"%>
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
                <b>|</b> <a href="http://localhost:8080/sistTerra/fornecedor.jsp" style="text-decoration:none">Motorista</a>
            </td>
            </tr>
        </table>
         <div>
            <table>
                <tr> <td colspan="3" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Nome</b></td>
                    
                </tr>
                <%
                   List<Fornecedor> f = (List<Fornecedor>) request.getAttribute("fornecedor");
                   
                  for(Fornecedor fornecedor: f){
                              
                %>
                   <tr>
                      <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisafornecedorporid?id=<%= fornecedor.getId() %>" style="text-decoration:none"> <%= fornecedor.getId()+" - "+fornecedor.getNome()%></a></td>
                      <td><a href="http://localhost:8080/sistTerra/excluirFornecedor?id=<%= fornecedor.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                    </tr>
                <%
                   }
                %>
                
            </table>
        </div>
     </body>
</html>
