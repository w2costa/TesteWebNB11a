<%-- 
    Document   : editar
    Created on : 15/10/2020, 20:58:53
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
        <jsp:useBean id="cliente" scope="request" class="entidade.Cliente" />
        <jsp:setProperty name="cliente" property="id" />
        <jsp:setProperty name="cliente" property="nome" />
        <h1>Formulário de edição do Cliente</h1>
        <form method="get" action="salvar.jsp">
            <input type="hidden" value="<jsp:getProperty name="cliente" property="id" />" name="id" />
            Id: <jsp:getProperty name="cliente" property="id" /> - 
            Nome: <input type="text" name="nome" value="<jsp:getProperty name="cliente" property="nome" />" /> <br>
            <input type="submit" value="Salvar" name="salvar" /><br>
        </form>
    </body>
</html>
