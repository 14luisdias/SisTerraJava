<%-- 
    Document   : listarTipoDeVeiculo
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.TipoDeVeiculoImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.TipoDeVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação dos Tipos dde Veículos</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Tipos de Veículos</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" style="text-decoration:none">Tipo De Veiculo</a>
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
                    TipoDeVeiculoImpl tipoDeVeiculoImpl = new TipoDeVeiculoImpl();
                    List<TipoDeVeiculo> list = tipoDeVeiculoImpl.getListAll();
                    for(TipoDeVeiculo tV : list){
                %>
                        <tr>
                            <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaTipoDeVeiculoporid?id=<%= tV.getId() %>" style="text-decoration:none"> <%= tV.getId()+" - "+tV.getNome()%></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirTipoDeVeiculo?id=<%= tV.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
