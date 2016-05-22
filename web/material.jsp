<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SisTerra</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css" />
        <link rel="stylesheet" type="text/css" media="screen and (min-width: 0px)" href="css/small.css" />
        <link rel="stylesheet" type="text/css" media="screen and (min-width: 1000px)" href="css/medium.css" />
        <link rel="stylesheet" type="text/css" media="screen and (min-width: 1350px)" href="css/large.css" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div id="corpo-todo">
            
        <div id="cabecalho">
            <h1><a class="url" href="http://localhost:8080/sistTerra/index.html">SisTerra</a></h1>
        </div>
        <div id="menu">
            <ul class="menu-principal">
                <li><a target="direita" href="http://localhost:8080/sistTerra/motorista.jsp" class="url">Motorista</a></li>
                <li><a href="http://localhost:8080/sistTerra/fornecedor.jsp" class="url">Fornecedor</a></li>
                <li><a href="http://localhost:8080/sistTerra/material.jsp" class="url">Material</a></li>
                <li><a href="http://localhost:8080/sistTerra/tipoVeiculo.jsp" class="url">Tipo de Ve�culo</a></li>
                <li><a href="http://localhost:8080/sistTerra/veiculo.jsp" class="url">Ve�culo</a></li>
                <li><a href="http://localhost:8080/sistTerra/locais.jsp" class="url">Locais</a></li>
                <li><a href="http://localhost:8080/sistTerra/rotas.jsp" class="url">Rotas</a></li>
                <li><a href="http://localhost:8080/sistTerra/viagens.jsp" class="url">Viagens</a></li>
             </ul>
        </div>
            <div id="conteudo">
            
            <form id="formulario" autocomplete="off">    
                <fieldset>
                    <legend>Material</legend>

                    <hr /><br />
                    <label>C�digo</label>
                    <input size="2" maxlength="3" type="text" name="codigo" requerid/><br />
                    <label>Descri��o</label>
                    <input type="text" name="descricao" placeholder="(Barro, Pi�arra, Brita, Areia, etc.)" size="25" required/></br>
                    <label>Preco</label>
                    <input type="text" name="preco" size="25" required/></br>
                    <label>Unidade</label>
                    <input type="text" name="unidade" size="25" required/>
                    <!-- Limpar Dados -->
                    <input type="reset" value="Restaurar" /><br /><br />
                </fieldset>    
            </form>         
                       <!-- Novo Motorista -->      
                        <a href="http://localhost:8080/sistTerra/cadastrarMotorista.jsp">
                            <img src="img/Png/Office/add2-32.png" title="Novo" /></a>        
                       <!-- Listar Todos os Cadastros --> 
                        <a href="http://localhost:8080/sistTerra/listarMotorista.jsp">
                            <img src="img/Png/Retail/brighty_retail_21.png" height="32px" title="Listar Todos" /></a>
                        <!-- Pesquisar Cadastros -->                    
                        <a href="http://localhost:8080/sistTerra/pesquisamotoristaporid?id=">
                            <img src="img/Png/Retail/brighty_retail_16.png" height="32px" title="Pesquisar" /></a>
                        
            </div>
            
    </body>
        </div>
                <div id="rodape">
                    <p>Todos os direitos reservados</p></br>
                    <p>Desenvolvido por: GilmarMH e Luiz BD</p>

                </div>
</html>