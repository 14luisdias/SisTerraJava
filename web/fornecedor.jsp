<jsp:include page="cabecalho.jsp" />
        <div id="menu">
            <ul class="menu-principal">
                <a href="http://localhost:8080/sistTerra/motorista.jsp" class="url"><li>Motorista</li></a>
                <a href="http://localhost:8080/sistTerra/fornecedor.jsp" class="url"><li>Fornecedor</li></a>
                <a href="http://localhost:8080/sistTerra/material.jsp" class="url"><li>Material</li></a>
                <a href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" class="url"><li>Tipo de Ve�culo</li></a>
                <a href="http://localhost:8080/sistTerra/veiculo.jsp" class="url"><li>Ve�culo</li></a>
                <a href="http://localhost:8080/sistTerra/local.jsp" class="url"><li>Locais</li></a>
                <a href="http://localhost:8080/sistTerra/rota.jsp" class="url"><li>Rotas</li></a>
                <a href="http://localhost:8080/sistTerra/viagens.jsp" class="url"><li>Viagens</li></a>
             </ul>
        </div>
            <div id="conteudo">
            
            <form id="formulario" autocomplete="off" action="pesquisaFornecedorPorNome" method="get">    
                <fieldset>
                    <legend>Fornecedor</legend>

                    <hr /><br />
                    <label>C�digo</label>
                    <input size="25" maxlength="3" type="text" name="codigo"/><br />
                    <label class="campo_nome">Nome</label>
                    <input type="text" name="nome" placeholder=" Digite seu nome..." size="25"/>
                    <!-- Limpar Dados -->
                    <input type="reset" value="Restaurar" />
                    <!--  Buscar -->
                    <input type="submit" value="Buscar"/><br /><br />
                </fieldset>    
            </form>         
                       <!-- Novo Motorista -->      
                        <a class="ico" href="http://localhost:8080/sistTerra/cadastrarFornecedor.jsp">
                            <img src="img/Png/Office/add2-32.png" title="Novo" /></a>        
                       <!-- Listar Todos os Cadastros --> 
                        <a class="ico" href="http://localhost:8080/sistTerra/listarFornecedor.jsp">
                            <img src="img/Png/Retail/brighty_retail_21.png" height="32px" title="Listar Todos" /></a>
                        <!-- Pesquisar Cadastros -->                    
                        
            </div>
            
    </body>
        </div>
                <div id="rodape">
                    <p>Todos os direitos reservados</p></br>
                    <p>Desenvolvido por: GilmarMH e Luis SD</p>

                </div>
</html>
