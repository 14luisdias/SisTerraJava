<%-- 
    Document   : cadastrarFornecedor
    Created on : 07/06/2016, 15:46:04
    Author     : 14luisdias
--%>

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
        <form id="formulario" action="cadastrarFornecedor" method="post">
            <fieldset>
                <legend>Cadastrar Fornecedor</legend>

                <hr /><br />
                <label>Nome</label>
                <input type="text" name="nome" value="" size="70" required/>             
                <!-- Limpar Dados -->
                <input type="reset" value="Limpar" />

                <input type="submit" value="Salvar"/><br /><br />
            </fieldset>
        </form>
        <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
        <a class="ico" href="http://localhost:8080/sistTerra/fornecedor.jsp" style="text-decoration:none">Fornecedor</a>
        <a class="ico" href="http://localhost:8080/sistTerra/listarFornecedor.jsp" style="text-decoration:none">Listar Fornecedores</a>
         
            </div>
<jsp:include page="rodape.jsp" />
