<%-- 
    Document   : excluir
    Created on : 15/10/2020, 20:17:45
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page import="controle.ClienteJpaController"%>
<%@page import="controle.JpaUtil"%>
<%@page import="entidade.Cliente"%>
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
        
        <h1>Excluir cliente</h1>
        
        <%
            clienteDAO.destroy(cliente.getId());
        %>
        O cliente id: ${cliente.id} - nome: ${cliente.nome} foi excluido.
                  

    </body>
</html>
