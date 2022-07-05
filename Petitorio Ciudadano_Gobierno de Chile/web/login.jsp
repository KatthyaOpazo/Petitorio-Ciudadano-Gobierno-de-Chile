<%-- 
    Document   : login
    Created on : 08-dic-2021, 23:31:32
    Author     : katthya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Petitorio Ciudadano</title>
        
        <%--Archivo que visualiza el icono de la pagina web--%>
        <link href="ico/favicon.ico" rel="shortcut icon"/>
        
        <%--Acceso a el archivo css (en donde esta todo el contenido visual 
        de la página)--%>
        <link href="css/estiloslogin.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="login.do" method="get"><br>
            <h2>Ingrese a su cuenta de usuario</h2>
            <hr>
            <label class="usuario">Usuario:</label>
            <input id="txtuser" type="text" name="txtuser" placeholder="Ingrese su usuario" required> <br>

            <label class="pass">Contraseña:</label>
            <input id="txtpass" type="password"  name="txtpass" placeholder="Ingrese su contraseña" required> 
            <hr>
                <button  type="submit" name="action">
                    Ingresar
                </button><br>
            </div>
            <div><a href="index.jsp"><img src="btn/volver.png" height="30" width="70"></a>
        </form>
        <div class="green-text center-align">
            ${requestScope.msgOK}
        </div>
        <div class="red-text center-align">
            ${requestScope.msgNOK}
        </div>
        
    </body>
    
</html>
