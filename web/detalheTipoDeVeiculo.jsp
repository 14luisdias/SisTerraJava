<%-- 
    Document   : detalheTipoDeVeiculo
    Created on : 08/06/2016, 18:03:42
    Author     : 14luisdias
--%>

<%@page import="modelo.TipoDeVeiculo"%>
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
         <h1>Detalhes do Tipo de Veículo</h1>     
        <%
            TipoDeVeiculo tV = (TipoDeVeiculo) request.getAttribute("tipoDeVeiculo");
        %>
        <form id="formulario" action="atualizarTipoDeVeiculo" method="post">
            <table>
            
                <tr> <td colspan="2" height="50"></td></tr>
                <tr>
                     <td>Código: </td>
                     <td><input type="text" name="cod" value="<%= tV.getId()%>" disabled="disabled"/></td>
                        
                </tr>
                <tr>
                    <td size="40%">Descrição</td>
                    <td><input type="text" name="nome" value="<%= tV.getNome()%>" size="70" required/></td>
                    <td><input type="hidden" name="id" value="<%= tV.getId()%>"/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Atualizar" />
                    </td>
                </tr>
            </table><br /><br />
                <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <a class="ico" href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" style="text-decoration:none">Tipo de Veiculo</a>
                <a class="ico" href="http://localhost:8080/sistTerra/listarTipoDeVeiculo.jsp" style="text-decoration:none">Listar Todos</a>
           
        </div>
<jsp:include page="rodape.jsp" />
