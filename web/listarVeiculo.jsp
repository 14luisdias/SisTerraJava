<%-- 
    Document   : listar
    Created on : 09/05/2016, 14:53:15
    Author     : 14luisdias
--%>

<%@page import="controle.VeiculoImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relação dos Veículos</title>
    </head>
    <body>
        <table>
            <tr><td><h1>Veiculo</h1></td>
            <td>    
                <b>|</b> <a href="http://localhost:8080/sistTerra/index.jsp" style="text-decoration:none">Menu Principal</a>
                <b>|</b> <a href="http://localhost:8080/sistTerra/veiculo.jsp" style="text-decoration:none">Veiculo</a>
            </td>
            </tr>
        </table>
        <div>
            <table>
                <tr> <td colspan="6" height="20"></td></tr>
                <tr>
                    <td width="0" colspan="6"><b>Código | Tipo de Veículo | Placa | Capacidade | Motorista </b></td>
                    
                </tr>
                <%
                    VeiculoImpl veiculoImpl = new VeiculoImpl();
                    List<Veiculo> list = veiculoImpl.getListAll();
                    for(Veiculo v : list){
                %>
                        <tr>
                            <td colspan="6" width="94%"><a href="http://localhost:8080/sistTerra/pesquisaVeiculoporid?id=<%= v.getId() %>" style="text-decoration:none"> <%= v.getId()+" - "+ v.getNomeTipo() +" - "+ v.getPlaca()+" - "+v.getCapacidade()+" m³ - " + v.getNomeMotorista()%></a></td>
                            <td><a href="http://localhost:8080/sistTerra/excluirVeiculo?id=<%= v.getId() %>" style="text-decoration:none">Excluir</a></td>                                                              
                        </tr>
                <%
                    }
                %>
                
            </table>
        </div>
        
    </body>
</html>
