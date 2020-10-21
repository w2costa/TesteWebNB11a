<%-- 
    Document   : salvar
    Created on : 15/10/2020, 21:07:56
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page import="controle.ClienteJpaController"%>
<%@page import="controle.JpaUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
%>
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
        <%
            clienteDAO.edit(cliente);
        %>

        <h1>Alteração feita</h1>
        <p>Id: <jsp:getProperty name="cliente" property="id" /></p>
        <p>Nome: <jsp:getProperty name="cliente" property="nome" /></p>

    </body>
</html>
