<%-- 
    Document   : cadastrarMotorista
    Created on : 29/04/2016, 16:21:34
    Author     : 14luisdias
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Motorista</title>
    </head>
    <body>
     <form action="pesquisaMotorista" method="post">
      <div>
          <table>
              <tr align="buttom">
                <td><h1 size="50">Motoristas</h1></td>
                <td><b>|</b><a href="http://localhost:8080/sistTerra/index.html" style="text-decoration:none">  Menu Principal<a/></td>
              </tr>
          </table>
      </div>
            <table style="width:100%" border="0">
                <tr>
                   <td width=2%>  <input type="radio" name="pesquisa" value="cod" onclick="nome.disabled=true, codigo.disabled=false" checked="checked" /></td>
                   <td width=5%> Código</td> 
                   <td><input type="text" name="codigo" value="" requerid/></td>
                
                </tr>
                <tr>
                    <td><input type="radio" name="pesquisa" value="nom" onclick="nome.disabled=false, codigo.disabled=true"/></td>
                    <td width=5%>Nome</td>
                    <td><input type="text" name="nome" value="" size="70" disabled="disabled" required/> </td>
                </tr>
               
                
                <tr> <td colspan="3" align="right">
                                       
                        <a href="http://localhost:8080/sistTerra/listarMotorista.jsp" style="text-decoration:none">  Listar Todos<a/>
                                           
                            <input type="submit" value="Consultar" />
                                                             
                        
                      
                        <input type="reset" value="Limpar" />
                        <a href="http://localhost:8080/sistTerra/cadastrarMotorista.jsp" style="text-decoration:none">  Novo<a/>
                        
                        
                </td></tr>
                
             <table>
       </div>
    </form> 
    </body>
</html>
