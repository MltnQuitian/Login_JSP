<%-- 
    Document   : index
    Created on : 18-mar-2018, 13:08:29
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Iniciar Sesión</h1>
        <form method="post" action="Inicio">
            <label>Usuario</label>
            <p><input type="text" name="user" id="user"/></p>
            <label>Contraseña</label>
            <p><input type="password" name="pass" id="pass"/></p>
            <p><input type="submit" value="Iniciar Sesion"/></p>
        </form>
        <p>No tienes una cuenta <a href="Registro.jsp">Registrarse</a></p>
    </body>
</html>
