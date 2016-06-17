<%-- 
    Document   : PesquisaPorNome
    Created on : 22/05/2016, 11:28:30
    Author     : Qualidade
--%>

<%@page import="java.util.List"%>
<%@page import="controle.FornecedorImpl"%>
<%@page import="modelo.Fornecedor"%>
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
            <tr><td><h1>Resultado da Busca</h1></td>
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
                
            </table><br /><br /> 
                <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <a class="ico" href="http://localhost:8080/sistTerra/fornecedor.jsp" style="text-decoration:none">Fornecedor</a>
                <a class="ico" href="http://localhost:8080/sistTerra/listarFornecedor.jsp" style="text-decoration:none">Listar Todos</a>
    
        </div>
<jsp:include page="rodape.jsp" />
