<%-- 
    Document   : detalheMaterial
    Created on : 14/05/2016, 18:03:42
    Author     : LAB03-22
--%>

<%@page import="modelo.TipoDeVeiculo"%>
<%@page import="controle.TipoDeVeiculoImpl"%>
<%@page import="modelo.Veiculo"%>
<%@page import="java.util.List"%>
<%@page import="controle.VeiculoImpl"%>
<%@page import="modelo.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes de Veiculo</title>
    </head>
    <body>
         <h1>Detalhes de Veiculo</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/veiculo.jsp" style="text-decoration:none">Veiculo</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/listarVeiculo.jsp" style="text-decoration:none">Listar Todos</a>  
        
        <%
                        
            Veiculo v = (Veiculo) request.getAttribute("veiculo");
            
            TipoDeVeiculoImpl tipoImpl = new TipoDeVeiculoImpl();
            List<TipoDeVeiculo> list = tipoImpl.getListAll();
            
        %>
        <form action="atualizarVeiculo" method="post">
            <table>
            
                <tr> <td colspan="4" height="50"></td></tr>
                <tr>
                     
                     <td>
                         Código<br> 
                         <input type="text" name="cod" value="<%= v.getId()%>" disabled="disabled"/>
                     </td>
                </tr>
                <tr>
                    
                    <td>
                        Tipo de Veiculo<br>
                        <select name="saida"  style=width:400px>
                            <option value="<%=v.getCodTipo() %>"><%= t.getNomeTipo()%> </option>
                 <%         for (TipoDeVeiculo t : list){ %>
                                 <option value="<%=t.getId()%>"><%= t.getNomeTipo()%></option>
                 <%         }%>
                        </select><br>
                                                
                    </td>
                </tr> 
                <tr>
                   
                    <td>
                        Destino<br>
                        <select name="destino"  style=width:400px>
                            <option value="<%=r.getDestino() %>"><%= r.getNomeDestino()%> </option>
                 <%         for (Local l : list){ %>
                                 <option value="<%=l.getId()%>"><%=l.getNome()%></option>
                 <%         }%>
                        </select><br>  
                      
                    </td>
                </tr> 
                <tr>
                    
                    <td>
                        DMT<br>
                        <input type="text" name="dmt" value="<%= r.getDmt() %>" size="70" required/>
                    </td>
                </tr> 
                    
                <tr>    
                    <td><input type="hidden" name="id" value="<%= r.getId()%>"/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Atualizar" />
                    </td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
