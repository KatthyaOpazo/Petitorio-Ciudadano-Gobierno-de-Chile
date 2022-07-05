<%-- 
    Document   : registro
    Created on : 08-dic-2021, 23:36:03
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
        <link href="css/estilosregistro.css" rel="stylesheet"/>
        
    </head>
    <body>
        <form action="registro.do" method="POST"><br>

            <%-- Dentro del formulario se encuentran todas las estructuras que permiten ingresar y capturar los datos. --%>
            <h2>Registrese Aqui</h2>
            <hr>
            <label class="nombre">Nombre:</label>
            <input id="txtnombre" type="text"  name="txtnombre" value="${param.txtnombre}" placeholder="Ingrese su nombre" required> 

            <label class="rut" >Rut:</label>
            <input id="txtrut" type="text" name="txtrut" value="${param.txtrut}" placeholder="Ingrese su rut" required>

            <label class="edad" >Edad:</label>
            <input id="txtedad" type="text" name="txtedad" value="${param.txtedad}" placeholder="Ingrese su edad" required> 

            <label class="correo">Correo Electronico:</label>
            <input id="txtcorreo" type="email"  name="txtcorreo" value="${param.txtcorreo}" placeholder="Ingrese su correo" required> 
            
            <hr>

            <label class="usuario">Crear nombre de usuario:</label>
            <input id="txtuser" type="text"  name="txtuser" value="${param.txtuser}" placeholder="Ingrese su usuario" required>

            <label class="pass">Crear contraseña:</label>
            <input id="txtpass" type="password"  name="txtpass" value="${param.txtpass}" placeholder="Ingrese su contraseña" required>

            <div >
                <button  type="submit" name="action">
                    Enviar
                </button>
                <a href="index.jsp"><img src="btn/volver.png" height="30" width="70"></a> 
            </div>
        </form>
        <div class="green-text center-align">
            ${requestScope.msgOK}
        </div>
        <div class="red-text center-align">
            ${requestScope.msgNOK}
        </div>
    </body>
</html>