<%-- 
    Document   : segunda
    Created on : 06/10/2020, 21:44:02
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segunda</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <p>Nome: <%= request.getParameter("nome") %></p>
        <p>Endereço: <%= request.getParameter("endereco") %></p>
    </body>
</html>
