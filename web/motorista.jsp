<%-- 
    Document   : cadastrarMotorista
    Created on : 29/04/2016, 16:21:34
    Author     : 14luisdias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Motorista</title>
    </head>
    <body>
      <div>
          <table >
              <tr align="buttom">
                <td><h1 size="50">Motoristas</h1></td>
                <td><b>|</b><a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">  Menu Principal<a/></td>
              </tr>
          </table>
      </div>
       <form action="cadatrarMotorista" method="post">
            <table style="width:100%" border="0">
                <tr>
                   <td width=8%> Código</td> <td><input type="text" name="codigo" value="" /><br></td>
                </tr>
                <tr>
                   <td width=8%>Nome</td> <td><input type="text" name="nome" value="" size="70" /> <br></td>
                </tr>
                <tr> <td colspan="2" align="right">
                        <a href="http://localhost:8080/sistTerra/listarMotorista.jsp" style="text-decoration:none">  Listar Todos<a/>
                        <input type="submit" value="Consultar" /> 
                        <input type="reset" value="Limpar" />
                        <a href="http://localhost:8080/sistTerra/cadastrarMotorista.jsp" style="text-decoration:none">  Novo<a/>
                        
                        
                </td></tr>
                
             <table>
         </form>
       </div>
     
    </body>
</html>
