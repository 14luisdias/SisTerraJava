<%-- 
    Document   : detalheMaterial
    Created on : 14/05/2016, 18:03:42
    Author     : LAB03-22
--%>

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
         <h1>Detalhes do Material</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/listarMaterial.jsp" style="text-decoration:none">Listar Todos</a>  
        
        <%
            Material m = (Material) request.getAttribute("material");
        %>
        <form id="formulario" action="atualizarMaterial" method="post">
            <table>
            
                <tr> <td colspan="4" height="50"></td></tr>
                <tr>
                     
                     <td>
                         Código<br> 
                         <input type="text" name="cod" value="<%= m.getId()%>" disabled="disabled"/>
                     </td>
                </tr>
                <tr>
                    
                    <td>
                        Descrição<br>
                        <input type="text" name="nome" value="<%= m.getNome()%>" size="70" required/>
                    </td>
                </tr> 
                <tr>
                   
                    <td>
                        Unidade<br>
                        <input type="text" name="unidade" value="<%= m.getUnidade() %>" size="70" required/>
                    </td>
                </tr> 
                <tr>
                    
                    <td>
                        Preço<br>
                        <input type="text" name="preco" value="<%= m.getPreco() %>" size="70" required/>
                    </td>
                </tr> 
                    
                <tr>    
                    <td><input type="hidden" name="id" value="<%= m.getId()%>"/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Atualizar" />
                    </td>
                </tr>
            </table><br /><br /> 
        </form>
                <a class="ico" href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <a class="ico" href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
                <a class="ico" href="http://localhost:8080/sistTerra/listarMaterial.jsp" style="text-decoration:none">Listar Todos</a>
           
         </div>
<jsp:include page="rodape.jsp" />
