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
            
            <form id="formulario" autocomplete="off">    
                <fieldset>
                    <legend>Ve�culo</legend>

                    <hr /><br />
                    <label>C�digo</label>
                    <input size="25" maxlength="3" type="text" name="codigo" requerid/><br />
                    <label>Placa</label>
                    <input type="text" name="descricao" size="25" required/></br>
                    <label>Capacidade</label>
                    <input type="text" name="preco" size="25" required/></br>
                    <label>C�d. Tipo Ve�culo</label>
                    <input type="text" name="unidade" size="25" required/></br>
                    <label>C�d. Motorista</label>
                    <input type="text" name="unidade" placeholder="Trucada, Toco, Carreta, etc." size="25" required/>
                    <!-- Limpar Dados -->
                    <input type="reset" value="Restaurar" /><br /><br />
                </fieldset>    
            </form>         
                       <!-- Novo Motorista -->      
                        <a class="ico" href="http://localhost:8080/sistTerra/cadastrarVeiculo.jsp">
                            <img src="img/Png/Office/add2-32.png" title="Novo" /></a>        
                       <!-- Listar Todos os Cadastros --> 
                        <a class="ico" href="http://localhost:8080/sistTerra/listarVeiculo.jsp">
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
