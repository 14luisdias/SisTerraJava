<%-- 
    Document   : listarLocal
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.RotaImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Rota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação das Rotas</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Rotas</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/rota.jsp" style="text-decoration:none">Rota</a>
            </td>
            </tr>
        </table>
        <div>
            <table>
                <tr> <td colspan="6" height="20"></td></tr>
                <tr>
                    <td width="0" colspan="6"><b>Código | Saida | Destino | DMT </b></td>
                    
                </tr>
                <%
                    RotaImpl rotaImpl = new RotaImpl();
                    List<Rota> list = rotaImpl.getListAll();
                    for(Rota r : list){
                %>
                        <tr>
                            <td colspan="6" width="94%"><a href="http://localhost:8080/sistTerra/pesquisaRotaporid?id=<%= r.getId() %>" style="text-decoration:none"> <%= r.getId()+" - "+r.getNomeSaida()+" / "+r.getNomeDestino()+" - "+r.getDmt()+" mt" %></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirRota?id=<%= r.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
