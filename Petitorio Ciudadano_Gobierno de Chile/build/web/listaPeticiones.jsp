<%-- 
    Document   : listaPeticiones
    Created on : 08-dic-2021, 23:31:01
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
        <table id="tabla" border="1">
            <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Categoria</th>
                    <th>Peticion</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${applicationScope.lstPeticiones}" var="a">
                    <tr>
                        <td>${a.fecha}</td> <!-- una referencia al getUser() -->
                        <td>${a.categoria}</td>
                        <td>${a.peticion}</td>
                        
                    </tr>
                </c:forEach>  
            </tbody>
        </table>
    </body>
</html>
