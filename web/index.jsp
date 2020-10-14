<%-- 
    Document   : index
    Created on : 30/09/2020, 20:23:29
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulário</h1>
        <form method="get" action="segunda.jsp">
            Nome: <input type="text" name="nome"><br>
            <input type="submit" value="Enviar" name="enviar" ><br>
        </form>
        <a href="segunda.jsp">Segunda página</a>
    </body>
</html>
