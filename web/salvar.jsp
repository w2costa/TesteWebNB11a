<%-- 
    Document   : salvar
    Created on : 15/10/2020, 21:07:56
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.Persistence"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    EntityManagerFactory emf;
    EntityManager em;
%>
<%
    emf = Persistence.createEntityManagerFactory("default");
    em = emf.createEntityManager();
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
            em.getTransaction().begin();
            em.merge(cliente);
            em.getTransaction().commit();
            em.close();
        %>

        <h1>Alteração feita</h1>
        <p>Id: <jsp:getProperty name="cliente" property="id" /></p>
        <p>Nome: <jsp:getProperty name="cliente" property="nome" /></p>

    </body>
</html>
