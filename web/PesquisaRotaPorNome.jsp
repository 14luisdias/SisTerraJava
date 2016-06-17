<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.RotaImpl"%>
<%@page import="modelo.Rota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rota</title>
    </head>
      
    <body>
         <table>
            <tr><td><h1>Resultado da Busca</h1></td>
            </tr>
        </table>
         <div>
            <table>
                <tr> <td colspan="6" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Saida | Destino | Dmt |</b></td>
                    
                </tr>
                <%
                   List<Rota> r = (List<Rota>) request.getAttribute("rota");
                   
                  for(Rota rota: r){
                              
                %>
                   <tr>
                      <td colspan="6" width="94%"><a href="http://localhost:8080/sistTerra/pesquisaRotaporid?id=<%= rota.getId() %>" style="text-decoration:none"> <%= rota.getId()+" - "+rota.getNomeSaida()+ " - "+ rota.getNomeDestino()+" - " +rota.getDmt()+ " mt " %></a></td>
                      <td><a href="http://localhost:8080/sistTerra/excluirExcluir?id=<%= rota.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                    </tr>
                <%
                   }
                %>
                
            </table><br /><br /> 
                <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <a class="ico" href="http://localhost:8080/sistTerra/rota.jsp" style="text-decoration:none">Rotas</a>
                <a class="ico" href="http://localhost:8080/sistTerra/listarRota.jsp" style="text-decoration:none">Listar Rotas</a>
    
         </div>  
<jsp:include page="rodape.jsp" />
