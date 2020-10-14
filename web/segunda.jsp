<%-- 
    Document   : segunda
    Created on : 06/10/2020, 21:44:02
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
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
        <title>Segunda</title>
    </head>
    <body>
        <jsp:useBean id="cliente" scope="request" class="entidade.Cliente" />
        <jsp:setProperty name="cliente" property="nome" />
        <jsp:setProperty name="cliente" property="id" />
        <h1>Cadastro</h1>
        <%
            em.getTransaction().begin();
            em.persist(cliente);
            em.getTransaction().commit();
            em.close();
        %>
        <p>Id: <jsp:getProperty name="cliente" property="id" /></p>
        <p>Nome: <jsp:getProperty name="cliente" property="nome" /></p>
    </body>
</html>
