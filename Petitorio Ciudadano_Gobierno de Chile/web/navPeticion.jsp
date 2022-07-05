<%-- 
    Document   : navPeticion
    Created on : 08-dic-2021, 23:33:57
    Author     : katthya
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a href="#!" class="brand-logo">&nbsp;¡Bienvenid@ ${sessionScope.usuario.nombre}! </a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="peticion.jsp">Peticion</a></li>
                
                    <c:if test="${not empty sessionScope.listaPeticiones}">
                        <li><a href="listaPeticiones.jsp">Total de Peticiones <i class="material-icons right"></i></a></li>
                    </c:if>
                    <c:if test="${ empty sessionScope.listaPeticiones}">
                    <li><a href="listaPeticiones.jsp">Total de Peticiones </a></li>
                    </c:if>
                <li><a href="cerrar.jsp">Cerrar Sesion</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="peticion.jsp">Peticion</a></li>
                <li><a href="listaPeticiones.jsp">Total de Peticiones</a></li>
                <li><a href="cerrar.jsp">Cerrar Sesion</a></li>
            </ul>
        </div>
    </body>
</html>

