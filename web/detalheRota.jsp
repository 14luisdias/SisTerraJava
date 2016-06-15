<%-- 
    Document   : detalheMaterial
    Created on : 14/05/2016, 18:03:42
    Author     : LAB03-22
--%>

<%@page import="modelo.Local"%>
<%@page import="java.util.List"%>
<%@page import="controle.LocalImpl"%>
<%@page import="modelo.Rota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes da Rota</title>
    </head>
    <body>
         <h1>Detalhes da Rota</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/rota.jsp" style="text-decoration:none">Rota</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/listarRota.jsp" style="text-decoration:none">Listar Todos</a>  
        
        <%
                        
            Rota r = (Rota) request.getAttribute("rota");
            
            LocalImpl localImpl = new LocalImpl();
            List<Local> list = localImpl.getListAll();
            
        %>
        <form action="atualizarRota" method="post">
            <table>
            
                <tr> <td colspan="4" height="50"></td></tr>
                <tr>
                     
                     <td>
                         Código<br> 
                         <input type="text" name="cod" value="<%= r.getId()%>" disabled="disabled"/>
                     </td>
                </tr>
                <tr>
                    
                    <td>
                        Saída<br>
                        <select name="saida"  style=width:400px>
                            <option value="<%=r.getSaida() %>"><%= r.getNomeSaida()%> </option>
                 <%         for (Local l : list){ %>
                                 <option value="<%=l.getId()%>"><%=l.getNome()%></option>
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
