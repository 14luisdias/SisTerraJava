<%@page import="modelo.TipoDeVeiculo"%>
<%@page import="modelo.Motorista"%>
<%@page import="controle.MotoristaImpl"%>
<%@page import="java.util.List"%>
<%@page import="controle.TipoDeVeiculoImpl"%>
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
            
            <form id="formulario" autocomplete="off">    
                <fieldset>
                <%
                      TipoDeVeiculoImpl tipoImpl = new TipoDeVeiculoImpl();
                      List<TipoDeVeiculo> list = tipoImpl.getListAll();
                
                      MotoristaImpl motoristaImpl = new MotoristaImpl();
                      List <Motorista> list2 = motoristaImpl.getListAll();

                %>
                    <legend>Veículo</legend>

                    <hr /><br />
                    <label>Código</label>
                    <input size="25" maxlength="3" type="text" name="codigo" requerid/><br />
                    <label>Placa</label>
                    <input type="text" name="descricao" size="25"/></br>
                    <label>Tipo Veículo</label>
                     <select name="tipo"  style=width:400px>
                        <option value="0">(selecione tipo de veiculo) </option>
                 <%     for (TipoDeVeiculo t : list){ %>
                             <option value="<%=t.getId()%>"><%=t.getNome()%></option>
                 <%     }%>
                    </select><br>
                    <label>Cód. Motorista</label>
                     <select name="motorista"  style=width:400px>
                          <option value="0">(selecione motorista) </option>
                 <%     for (Motorista m : list2){ %>
                             <option value="<%=m.getId()%>"><%=m.getNome()%></option>
                 <%     }%>
                    </select><br> <br>
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
            
<jsp:include page="rodape.jsp" />
