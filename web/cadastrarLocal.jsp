<%-- 
    Document   : cadastrarLocal
    Created on : 07/06/2016, 15:46:04
    Author     : 14luisdias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Local</title>
    </head>
    <body>
        <h1>Cadastrar Local</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/local.jsp" style="text-decoration:none">Local</a>
                                     
        <form action="cadastrarLocal" method="post">
            <table>
                <tr> <td colspan="2" height="50"></td></tr>
                <tr>
                    <td size="40%">Descrição</td>
                    <td><input type="text" name="nome" value="" size="70" required/></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Salvar" />
                    </td>
                </tr>
            </table>
            
            
        </form>
    </body>
</html>
