<%-- 
    Document   : cadastrarVeiculo
    Created on : 07/06/2016, 15:46:04
    Author     : 14luisdias
--%>

<%@page import="controle.MotoristaImpl"%>
<%@page import="modelo.Motorista"%>
<%@page import="modelo.TipoDeVeiculo"%>
<%@page import="controle.TipoDeVeiculoImpl"%>
<%@page import="modelo.Veiculo"%>
<%@page import="java.util.List"%>
<%@page import="controle.VeiculoImpl"%>
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
        <form id="formulario" action="cadastrarVeiculo" method="post">
            <%
                TipoDeVeiculoImpl tipoImpl = new TipoDeVeiculoImpl();
                List<TipoDeVeiculo> list = tipoImpl.getListAll();
                
                MotoristaImpl motoristaImpl = new MotoristaImpl();
                List <Motorista> list2 = motoristaImpl.getListAll();

            %>
            <fieldset>
                <legend>Cadastrar Veículo</legend>
                    <label>Tipo de Veiculo</label>
                        <select name="tipo"  style=width:400px>
                        <option value="0">(selecione tipo de veiculo) </option>
                 <%     for (TipoDeVeiculo t : list){ %>
                             <option value="<%=t.getId()%>"><%=t.getNome()%></option>
                 <%     }%>
                    </select><br>
                   
                    <label>Placa</label>
                        <input type="text" name="placa" value="" size="56" required/>
                    <label>Capacidade M³</label>
                        <input type="text" name="capacidade" value="" size="56" required/>
                    </td>
                </tr>
                <tr>
                    
                    <label>Motorista</label>
                        <select name="motorista"  style=width:400px>
                          <option value="0">(selecione motorista) </option>
                 <%     for (Motorista m : list2){ %>
                             <option value="<%=m.getId()%>"><%=m.getNome()%></option>
                 <%     }%>
                    </select><br>
                        <input type="submit" value="Salvar" /><br><br>
            </fieldset>
        </form>
        <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
        <a class="ico" href="http://localhost:8080/sistTerra/fornecedor.jsp" style="text-decoration:none">Fornecedor</a>
        <a class="ico" href="http://localhost:8080/sistTerra/listarFornecedor.jsp" style="text-decoration:none">Listar Todos</a>
         
            </div>
<jsp:include page="rodape.jsp" />
