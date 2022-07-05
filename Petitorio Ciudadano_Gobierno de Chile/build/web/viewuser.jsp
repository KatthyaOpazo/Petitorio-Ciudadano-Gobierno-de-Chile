<%-- 
    Document   : viewuser
    Created on : 08-dic-2021, 23:36:45
    Author     : katthya
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Petitorio Ciudadano</title>

        <%--Acceso a el archivo css (en donde esta todo el contenido visual 
        de la página)--%>
        <link href="css/estiloslistar.css" rel="stylesheet"/>

        <%--Archivo que visualiza el icono de la pagina web--%>
        <link href="ico/favicon.ico" rel="shortcut icon"/>

        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <nav class="col s15 blue darken-1">
                    <c:import url="nav.jsp" />
                </nav>
                <section class="col s9 offset-m2">
                    <table class="bordered centered">
                        <thead>
                            <tr>
                                <th>Nombre</th><br>
                        <th>Rut</th>
                        <th>Edad</th>
                        <th>Correo</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${applicationScope.lstUsers}" var="u">
                                <tr>
                                    <td>${u.nombre}</td> <!-- una referencia al getUser() -->
                                    <td>${u.rut}</td>
                                    <td>${u.edad}</td>
                                    <td>${u.correo}</td>
                                    <td>${u.usuario}</td>
                                    <td>${u.pass}</td>
                                </tr>
                            </c:forEach>    
                        </tbody>
                    </table>
                    <!--Boton volver hacia la interfaz inicial-->
                    <a href="index.jsp"><img src="btn/btnvolver.png" height="80" width="200"></a>
                </section>
            </div>

        </div>  
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
            $(function () {
                $(".button-collapse").sideNav();
            });
        </script>
    </body>
</html>

