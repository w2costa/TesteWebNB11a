<%-- 
    Document   : segunda
    Created on : 06/10/2020, 21:44:02
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
        <title>Segunda</title>
    </head>
    <body>
        <jsp:useBean id="cliente" scope="request" class="entidade.Cliente" />
        <jsp:setProperty name="cliente" property="nome" />
        <jsp:setProperty name="cliente" property="id" />
        <h1>Cadastro</h1>
        <%
            clienteDAO.create(cliente);
        %>
        <p>Id: <jsp:getProperty name="cliente" property="id" /></p>
        <p>Nome: <jsp:getProperty name="cliente" property="nome" /></p>
    </body>
</html>
