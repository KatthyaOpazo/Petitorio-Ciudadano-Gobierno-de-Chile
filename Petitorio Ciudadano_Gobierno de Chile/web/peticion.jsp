<%-- 
    Document   : peticion
    Created on : 08-dic-2021, 23:35:37
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
        <link href="css/estilospeticion.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="peticion.do" method="POST"><br>
            <h1>Registro de su petición</h1>
            <hr><br />

            <label>Fecha</label>
            <input type="date" name="txtfecha" value="" id="fecha" />

            <label>Categoria</label>
            <select id="peticion" name="peticion" required
                    <optgroup label="Seleccione una categoria">
                    <option value="afp" >AFP</option>
                    <option value="salud" >Salud</option>
                    <option value="pensiones" >Pensiones</option>
                    <option value="educacion" >Educacion</option>
            </select><br /> <br />

            <label>Petición </label><br /> 
            <textarea name="txtpeticion" rows="15" cols="60" maxlength="2000" id="txtpeticion" value=""
                      placeholder="Ingrese el detalle de su peticion solicitada"></textarea>
            
            <div >
                <button  type="submit" name="action">
                    Enviar
                </button>
                <a href="login.jsp"><img src="btn/volver.png" height="30" width="70"></a>
            </div>
        </form>
    </body>
</html>
