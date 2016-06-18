<%-- 
    Document   : cadastrarVeiculo
    Created on : 07/06/2016, 15:46:04
    Author     : 14luisdias
--%>

<%@page import="modelo.Veiculo"%>
<%@page import="java.util.List"%>
<%@page import="controle.VeiculoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Rota</title>
    </head>
    <body>
        <h1>Cadastrar Rota</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/rota.jsp" style="text-decoration:none">Rota</a>
                                     
        <form action="cadastrarRota" method="post">
            <%
                LocalImpl localImpl = new LocalImpl();
                List<Local> list = localImpl.getListAll();
            %>
            <table>
                <tr> <td height="50"></td></tr>
                <tr>
                    <td>
                        Saida<br>
                        <select name="saida"  style=width:400px>
                        <option value="0">(selecione Saida) </option>
                 <%     for (Local l : list){ %>
                             <option value="<%=l.getId()%>"><%=l.getNome()%></option>
                 <%     }%>
                    </select><br>
                        
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        Destino<br>
                        <select name="destino"  style=width:400px>
                          <option value="0">(selecione Destino) </option>
                 <%     for (Local l : list){ %>
                             <option value="<%=l.getId()%>"><%=l.getNome()%></option>
                 <%     }%>
                    </select><br>
                        
                    </td>
                </tr>
                <tr>
                   
                    <td>
                        DMT<br>
                        <input type="text" name="dmt" value="" size="56" required/>
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
