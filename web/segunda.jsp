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
        <jsp:useBean id="cliente" scope="request" class="entidade.Cliente" />
        <jsp:setProperty name="cliente" property="nome" />
        <jsp:setProperty name="cliente" property="endereco" />
        <h1>Cadastro</h1>
        <p>Nome: <jsp:getProperty name="cliente" property="nome" /></p>
        <p>Endereço: <jsp:getProperty name="cliente" property="endereco" /></p>
    </body>
</html>
