<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.LocalImpl"%>
<%@page import="modelo.Local"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="cabecalho.jsp" />
        <div id="menu">
            <ul class="menu-principal">
                <a href="http://localhost:8080/sistTerra/motorista.jsp" class="url"><li>Motorista</li></a>
                <a href="http://localhost:8080/sistTerra/fornecedor.jsp" class="url"><li>Fornecedor</li></a>
                <a href="http://localhost:8080/sistTerra/material.jsp" class="url"><li>Material</li></a>
                <a href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" class="url"><li>Tipo de Veículo</li></a>
                <a href="http://localhost:8080/sistTerra/veiculo.jsp" class="url"><li>Veículo</li></a>
                <a href="http://localhost:8080/sistTerra/local.jsp" class="url"><li>Locais</li></a>
                <a href="http://localhost:8080/sistTerra/rota.jsp" class="url"><li>Rotas</li></a>
                <a href="http://localhost:8080/sistTerra/viagens.jsp" class="url"><li>Viagens</li></a>
             </ul>
        </div>
            <div id="conteudo">  
         <table>
            <tr><td><h1>Resultado da Busca</h1></td></tr>
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
                
            </table><br /><br /> 
                <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <a class="ico" href="http://localhost:8080/sistTerra/local.jsp" style="text-decoration:none">Local</a>
                <a class="ico" href="http://localhost:8080/sistTerra/listarLocal.jsp" style="text-decoration:none">Listar Todos</a>

        </div>
<jsp:include page="rodape.jsp" />
