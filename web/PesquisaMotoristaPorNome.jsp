<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.MotoristaImpl"%>
<%@page import="modelo.Motorista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Motoristas</title>
    </head>
      
    <body>
         <table>
            <tr><td><h1>Resultado da Busca</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/motorista.jsp" style="text-decoration:none">Motorista</a>
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
                   List<Motorista> m = (List<Motorista>) request.getAttribute("motorista");
                   
                  for(Motorista motorista : m){
                              
                %>
                   <tr>
                      <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisamotoristaporid?id=<%= motorista.getId() %>" style="text-decoration:none"> <%= motorista.getId()+" - "+motorista.getNome()%></a></td>
                      <td><a href="http://localhost:8080/sistTerra/excluirMotorista?id=<%= motorista.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                    </tr>
                <%
                   }
                %>
                
            </table>
        </div>
     </body>
</html>
