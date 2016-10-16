<%-- 
    Document   : listarLocal
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.LocalImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Local"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação dos Locais</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Locais</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
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
                    LocalImpl localImpl = new LocalImpl();
                    List<Local> list = localImpl.getListAll();
                    for(Local l : list){
                %>
                        <tr>
                            <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaLocalporid?id=<%= l.getId() %>" style="text-decoration:none"> <%= l.getId()+" - "+l.getNome()%></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirLocal?id=<%= l.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
