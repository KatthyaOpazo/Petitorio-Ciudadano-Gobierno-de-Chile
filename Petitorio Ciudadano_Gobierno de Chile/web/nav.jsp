<%-- 
    Document   : nav
    Created on : 08-dic-2021, 23:33:15
    Author     : anais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Petitorio Ciudadano</title>
        
        <%--Archivo que visualiza el icono de la pagina web--%>
        <link href="ico/favicon.ico" rel="shortcut icon"/>
    </head>
    <body>
        <div class="nav-wrapper">
            <a href="#!" class="brand-logo">Gestión de Usuario</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="registro.jsp">Registro</a></li>
                <li><a href="login.jsp">Acceder</a></li>
                <li><a href="viewuser.jsp">Listar</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="registro.jsp">Registro</a></li>
                <li><a href="login.jsp">Acceder</a></li>
                <li><a href="viewuser.jsp">Listar</a></li>
            </ul>
        </div>
    </body>
</html>