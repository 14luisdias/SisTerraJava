<%-- 
    Document   : listarMotorista
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Motorista"%>
<%@page import="controle.MotoristaImpl"%>
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
            <tr><td><h1>Motoristas</h1></td> </tr>
        </table>
        <div>
            <table>
                <tr> <td colspan="3" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Nome</b></td>
                    
                </tr>
                <%
                    MotoristaImpl motoristaImpl = new MotoristaImpl();
                    List<Motorista> list = motoristaImpl.getListAll();
                    for(Motorista m : list){
                %>
                        <tr>
                            <td colspan="2" width="90%"><a href="http://localhost:8080/sistTerra/pesquisamotoristaporid?id=<%= m.getId() %>" style="text-decoration:none"> <%= m.getId()+" - "+m.getNome()%></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirMotorista?id=<%= m.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table><br />
        </div>
               
            <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
            <a class="ico" href="http://localhost:8080/sistTerra/motorista.jsp" style="text-decoration:none">Motorista</a>
            <a class="ico" href="http://localhost:8080/sistTerra/listarMotorista.jsp" style="text-decoration:none">Listar Todos</a>  
         </div>   
<jsp:include page="rodape.jsp" />
