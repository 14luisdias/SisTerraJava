<%-- 
    Document   : detalheMaterial
    Created on : 14/05/2016, 18:03:42
    Author     : LAB03-22
--%>

<%@page import="controle.MotoristaImpl"%>
<%@page import="modelo.Motorista"%>
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
         <h1>Detalhes de Veiculo</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/veiculo.jsp" style="text-decoration:none">Veiculo</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/listarVeiculo.jsp" style="text-decoration:none">Listar Todos</a>  
        
        <%
                        
            Veiculo v = (Veiculo) request.getAttribute("veiculo");
            
            int tipo = v.getId();
            String placa = v.getPlaca();
           
            
            TipoDeVeiculoImpl tipoImpl = new TipoDeVeiculoImpl();
            List<TipoDeVeiculo> list = tipoImpl.getListAll();
            
            MotoristaImpl motoristaImpl = new MotoristaImpl();
            List<Motorista> list2 = motoristaImpl.getListAll();
            
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
                        <select name="tipoVeiculo"  style=width:400px>
                            <option value="<%=v.getCodTipo() %>"><%= v.getNomeTipo()%> </option>
                 
                 <%         for (TipoDeVeiculo t : list){ %>
                                 <option value="<%= t.getId()%>"><%= t.getNome()%></option>
                 <%         }%>
                        </select><br>
                                                
                    </td>
                </tr> 
                <tr>
                   
                    <td>
                        Motorista<br>
                        <select name="motorista"  style=width:400px>
                            <option value="<%=v.getCodMotorista() %>"><%= v.getNomeMotorista() %> </option>
                 <%         for (Motorista m : list2){ %>
                                 <option value="<%=m.getId()%>"><%=m.getNome()%></option>
                 <%         }%>
                        </select><br>  
                      
                    </td>
                </tr> 
                <tr>
                    
                    <td>
                        Placa<br>
                        <input type="text" name="placa" value="<%= v.getPlaca() %>" size="70" required/>
                    </td>
                </tr> 
                <tr>
                    
                    <td>
                        M³<br>
                        <input type="text" name="capacidade" value="<%= v.getCapacidade() %>" size="70" required/>
                    </td>
                </tr> 
                    
                <tr>    
                    <td><input type="hidden" name="id" value="<%= v.getId()%>"/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Atualizar" />
                    </td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
