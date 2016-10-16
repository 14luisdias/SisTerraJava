<%-- 
    Document   : detalheFornecedor
    Created on : 14/05/2016, 18:03:42
    Author     : LAB03-22
--%>

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
        
        <%
            Fornecedor f = (Fornecedor) request.getAttribute("fornecedor");
        %>
        <form id="formulario" action="atualizarFornecedor" method="post">
            <fieldset>
                <legend>Cadastrar Fornecedor</legend>

                <hr /><br />
                <label>Código</label>
                    <input type="text" name="cod" value="<%= f.getId()%>" disabled="disabled"/>
                <label>Nome</label>
                    <input type="text" name="nome" value="<%= f.getNome()%>" size="70" required/>
                    <input type="hidden" name="id" value="<%= f.getId()%>"/>
                    <input type="submit" value="Atualizar" /><br/><br/>
            </fieldset>
        </form>
            <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
            <a class="ico" href="http://localhost:8080/sistTerra/fornecedor.jsp" style="text-decoration:none">Fornecedor</a>
            <a class="ico" href="http://localhost:8080/sistTerra/listarFornecedor.jsp" style="text-decoration:none">Listar Todos</a>  
            </div>
        
        
<jsp:include page="rodape.jsp" />