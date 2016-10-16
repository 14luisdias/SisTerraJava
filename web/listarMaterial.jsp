<%-- 
    Document   : listarMaterial
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.MaterialImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Material"%>
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
            <tr><td><h1>Material</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
            </td>
            </tr>
        </table>
        <div>
            <table>
                <tr> <td colspan="4" height="20"></td></tr>
                <tr>
                    <td width="0"><b>Código | Descrição | Uni | Preço |</b></td>
                    
                </tr>
                <%
                    MaterialImpl materialImpl = new MaterialImpl();
                    List<Material> list = materialImpl.getListAll();
                    for(Material m : list){
                %>
                        <tr>
                            <td colspan="4" width="90%"><a href="http://localhost:8080/sistTerra/pesquisaMaterialporid?id=<%= m.getId() %>" style="text-decoration:none"> <%= m.getId()+" - "+m.getNome()+ " - "+ m.getUnidade()+ " - R$ "+ m.getPreco() %></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirMaterial?id=<%= m.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table><br /><br /> 
       
                <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <a class="ico" href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
                <a class="ico" href="http://localhost:8080/sistTerra/listarMaterial.jsp" style="text-decoration:none">Listar Todos</a>
           
         </div>
<jsp:include page="rodape.jsp" />

