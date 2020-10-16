<%-- 
    Document   : excluir
    Created on : 15/10/2020, 20:17:45
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page import="entidade.Cliente"%>
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
        <title>JSP Page</title>
    </head>
    <body>
       
        <jsp:useBean id="cliente" scope="request" class="entidade.Cliente" />
        <jsp:setProperty name="cliente" property="id" />
        <jsp:setProperty name="cliente" property="nome" />
        
        <h1>Excluir cliente</h1>
        
        <%
            //int id = Integer.parseInt(request.getParameter("id"));
            //Cliente c = em.find(Cliente.class, id);
            Cliente c = em.find(Cliente.class, cliente.getId());
            em.getTransaction().begin();
            em.remove(c);
            em.getTransaction().commit();
        %>
        O cliente id:<%= c.getId() %> - nome: <%= c.getNome() %> foi excluido.


    </body>
</html>
