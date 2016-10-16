<%@page import="modelo.Local"%>
<%@page import="controle.LocalImpl"%>
<%@page import="modelo.Rota"%>
<%@page import="java.util.List"%>
<%@page import="controle.RotaImpl"%>
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
            <h1><a href="http://localhost:8080/sistTerra/index.jsp">
                    <img height="120" class="img-logo" src="img/Png/logo/logo.png" />
                    <img height="25" class="img-name" src="img/Png/logo/logo-name.png" />
                </a></h1>
        </div>
        <div id="menu">
            <ul class="menu-principal">
                <a href="http://localhost:8080/sistTerra/motorista.jsp" class="url"><li>Motorista</li></a>
                <a href="http://localhost:8080/sistTerra/fornecedor.jsp" class="url"><li>Fornecedor</li></a>
                <a href="http://localhost:8080/sistTerra/material.jsp" class="url"><li>Material</li></a>
                <a href="http://localhost:8080/sistTerra/tipoDeVeiculo.jsp" class="url"><li>Tipo de Veículo</li></a>
                <a href="http://localhost:8080/sistTerra/veiculo.jsp" class="url"><li>Veículo</li></a>
                <a href="http://localhost:8080/sistTerra/local.jsp" class="url"><li>local</li></a>
                <a href="http://localhost:8080/sistTerra/rota.jsp" class="url"><li>Rotas</li></a>
                <a href="http://localhost:8080/sistTerra/viagens.jsp" class="url"><li>Viagens</li></a>
             </ul>
        </div>
            <div id="conteudo">
            
            <form id="formulario" autocomplete="off" action="pesquisaRotaPorNome" method="get">    
                <fieldset>
                    <legend>Rotas</legend>

                    <hr /><br />
            <%
                LocalImpl localImpl = new LocalImpl();
                List<Local> list = localImpl.getListAll();
            %>
                    <label>Código</label>
                    <input size="25" maxlength="3" type="text" name="codigo"/><br />
                    <label class="campo_nome">Saída</label>
                    <select name="saida"  style=width:400px>
                        <option value="0">(selecione Saida) </option>
                 <%     for (Local l : list){ %>
                             <option value="<%=l.getId()%>"><%=l.getNome()%></option>
                 <%     }%>
                    </select><br>
                    
                    <label class="campo_nome">Destino</label>
                    <select name="destino"  style=width:400px>
                          <option value="0">(selecione Destino) </option>
                 <%     for (Local l : list){ %>
                             <option value="<%=l.getId()%>"><%=l.getNome()%></option>
                 <%     }%>
                    </select><br>         
                    <!-- Limpar Dados -->
                    <input type="reset" value="Restaurar" />
                    <input type="submit" value="Buscar"/><br /><br />
                </fieldset>    
            </form>         
                       <!-- Novo LOCAL -->      
                        <a class="ico" href="http://localhost:8080/sistTerra/cadastrarRota.jsp">
                            <img src="img/Png/Office/add2-32.png" title="Novo" /></a>        
                       <!-- Listar Todos os Cadastros --> 
                        <a class="ico" href="http://localhost:8080/sistTerra/listarRota.jsp">
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
