<%-- 
    Document   : cadastrarMaterial
    Created on : 07/06/2016, 15:46:04
    Author     : 14luisdias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Material</title>
    </head>
    <body>
        <h1>Cadastrar Material</h1> <b>|</b> <a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">Menu Principal</a>
                            <b>|</b> <a href="http://localhost:8080/sistTerra/material.jsp" style="text-decoration:none">Material</a>
                                     
        <form action="cadastrarMaterial" method="post">
            <table>
                <tr> <td height="50"></td></tr>
                <tr>
                    <td>
                        Descrição<br>
                        <input type="text" name="nome" value="" size="70" required/>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        Preço<br>
                        <input type="text" name="preco" value="" size="70" required/>
                    </td>
                </tr>
                <tr>
                   
                    <td>
                        Unidade<br>
                        <input type="text" name="unidade" value="" size="70" required/>
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
