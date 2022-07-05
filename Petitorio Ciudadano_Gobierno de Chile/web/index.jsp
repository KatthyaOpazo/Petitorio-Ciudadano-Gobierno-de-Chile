<%-- 
    Document   : index
    Created on : 08-dic-2021, 23:29:56
    Author     : katthya
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Petitorio Ciudadano</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        
        <%--Acceso a el archivo css (en donde esta todo el contenido visual 
        de la página)--%>
        <link href="css/estilos.css" rel="stylesheet"/>
        <%--Archivo que visualiza el icono de la pagina web--%>
        <link href="ico/favicon.ico" rel="shortcut icon"/>
        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <nav class="col s12 blue darken-2 ">
                    <c:import url="nav.jsp" />
                </nav>
                <section>
                    
                </section>
            </div>
        </div>  

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
            $(function(){
                $(".button-collapse").sideNav();
            });
        </script>
    </body>
</html>
