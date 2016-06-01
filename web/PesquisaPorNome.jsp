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
        <title>JSP Page</title>
    </head>
    <%
            //Motorista m = (Motorista) request.getAttribute("motorista");
    %>
    
    <body>
         <div>
            <table>
                <tr> <td colspan="3" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Nome</b></td>
                    
                </tr>
                <%
                   Motorista m = (Motorista) request.getAttribute("motorista");
                  
                MotoristaImpl motoristaImpl = new MotoristaImpl();
                List<Motorista> list = motoristaImpl.getListAll();
                   
                for(Motorista mot : list){
                   
              
                %>
                        <tr>
                            <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisamotoristaporid?id=<%= m.getId() %>" style="text-decoration:none"> <%= m.getId()+" - "+m.getNome()%></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirMotorista?id=<%= m.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                   }
                %>
                
            </table>
        </div>
     </body>
</html>
