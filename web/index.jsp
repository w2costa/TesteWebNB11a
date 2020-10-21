<%-- 
    Document   : index
    Created on : 15/10/2020, 19:32:21
    Author     : Wilson Wolf Costa <wilson.w.costa@gmail.com>
--%>

<%@page import="controle.ClienteJpaController"%>
<%@page import="controle.JpaUtil"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.TypedQuery"%>
<%@page import="entidade.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
  
    List<Cliente> clientes = clienteDAO.findClienteEntities();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <h1>Cadastro de Clientes</h1>

        <table border="1">
            <%
                for (Cliente c : clientes) {
            %>
            <tr>
                <td><%= c.getId()%></td>
                <td><%= c.getNome()%></td>
                <td>
                    <form method="get" action="excluir.jsp">
                        <input type="hidden" value="<%= c.getId()%>" name="id" />
                        <input type="submit" value="Excluir" />
                    </form>
                </td>
                <td>
                    <form method="get" action="editar.jsp">
                        <input type="hidden" value="<%= c.getId()%>" name="id" />
                        <input type="hidden" value="<%= c.getNome() %>" name="nome" />
                        <input type="submit" value="Editar" />
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>

        <p><a href="novo.jsp">Novo cliente</a></p>
    </body>
</html>
