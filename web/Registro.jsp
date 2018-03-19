<%-- 
    Document   : Registro
    Created on : 18-mar-2018, 13:20:39
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form method="post" action="NuevoUsuario">
            <label>Usuario</label>
            <p><input type="text" name="usuario"/></p>
            <label>Nombre</label>
            <p><input type="text" name="nombre"/></p>
            <label>Apellido</label>
            <p><input type="text" name="apellido"/></p>
            <label>Contraseña</label>
            <p><input type="password" name="pass"/></p>
            <input type="submit" value="Registrar"/>
        </form>
        
    </body>
</html>
