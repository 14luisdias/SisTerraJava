<%-- 
    Document   : cadastrarMotorista
    Created on : 06/05/2016, 15:46:04
    Author     : 14luisdias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Motorista</title>
    </head>
    <body>
        Cadastrar Motorista <b>|</b> <a href="http://localhost:8080/sistTerra/index.html">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/motorista.jsp">Motorista</a>
        <form action="cadastrarMotorista" method="post">
            <table>
                <tr>
                    <td size="40%">Nome
                    <td><input type="text" name="nome" value="" size="70" /></td>
                </tr>
                <tr><td colspan="2" align="right">
                        <input type="submit" value="Salvar" />
                    </td>
                </tr>
            </table>
            
            
        </form>
    </body>
</html>