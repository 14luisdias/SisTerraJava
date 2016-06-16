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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Veiculo</title>
    </head>
    <body>
        <h1>Cadastrar Rota</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/veiculo.jsp" style="text-decoration:none">Veiculo</a>
                                     
        <form action="cadastrarVeiculo" method="post">
            <%
                TipoDeVeiculoImpl tipoImpl = new TipoDeVeiculoImpl();
                List<TipoDeVeiculo> list = tipoImpl.getListAll();
                
                MotoristaImpl motoristaImpl = new MotoristaImpl();
                List <Motorista> list2 = motoristaImpl.getListAll();

            %>
            <table>
                <tr> <td height="50"></td></tr>
                <tr>
                    <td>
                        Tipo de Veiculo<br>
                        <select name="tipo"  style=width:400px>
                        <option value="0">(selecione tipo de veiculo) </option>
                 <%     for (TipoDeVeiculo t : list){ %>
                             <option value="<%=t.getId()%>"><%=t.getNome()%></option>
                 <%     }%>
                    </select><br>
                        
                    </td>
                </tr>
                 <tr>
                   
                    <td>
                        Placa<br>
                        <input type="text" name="placa" value="" size="56" required/>
                    </td>
                </tr>
                 <tr>
                   
                    <td>
                        Capacidade M³<br>
                        <input type="text" name="capacidade" value="" size="56" required/>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        Motorista<br>
                        <select name="motorista"  style=width:400px>
                          <option value="0">(selecione motorista) </option>
                 <%     for (Motorista m : list2){ %>
                             <option value="<%=m.getId()%>"><%=m.getNome()%></option>
                 <%     }%>
                    </select><br>
                        
                    </td>
                </tr>
               
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Salvar" />
                    </td>
                </tr>
            </table>
            
            
        </form>
    </body>
</html>
