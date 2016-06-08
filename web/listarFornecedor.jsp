<%-- 
    Document   : listarFornecedor
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.FornecedorImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação dos fornecedores</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Fornecedores</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/fornecedor.jsp" style="text-decoration:none">Fornecedores</a>
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
                    FornecedorImpl fornecedorImpl = new FornecedorImpl();
                    List<Fornecedor> list = fornecedorImpl.getListAll();
                    for(Fornecedor f : list){
                %>
                        <tr>
                            <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisafornecedorporid?id=<%= f.getId() %>" style="text-decoration:none"> <%= f.getId()+" - "+f.getNome()%></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirFornecedor?id=<%= f.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
