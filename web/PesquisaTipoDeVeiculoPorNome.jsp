<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.TipoDeVeiculoImpl"%>
<%@page import="modelo.TipoDeVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TipoDeVeiculo</title>
    </head>
      
    <body>
         <table>
            <tr><td><h1>Resultado da Busca</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" style="text-decoration:none">TipoDeVeiculo</a>
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
                   List<TipoDeVeiculo> tV = (List<TipoDeVeiculo>) request.getAttribute("tipoDeVeiculo");
                   
                  for(TipoDeVeiculo tipoDeVeiculo: tV){
                              
                %>
                   <tr>
                      <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaTipoDeVeiculoporid?id=<%= tipoDeVeiculo.getId() %>" style="text-decoration:none"> <%= tipoDeVeiculo.getId()+" - "+tipoDeVeiculo.getNome()%></a></td>
                      <td><a href="http://localhost:8080/sistTerra/excluirTipoDeVeiculo?id=<%= tipoDeVeiculo.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                    </tr>
                <%
                   }
                %>
                
            </table>
        </div>
     </body>
</html>
