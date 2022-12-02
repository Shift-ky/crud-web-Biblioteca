<%-- 
    Document   : deletar
    Created on : 1 de dez. de 2022, 20:27:15
    Author     : famil
--%>

<%@page import="Dao.LivroDao"%>
<%@page import="Model.Livros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><span> Livro "<%=request.getParameter("nome")%>" </span> Deletado</h1>
        
        <%
            Livros livro = new Livros();
            livro.setId_livro(Integer.parseInt(request.getParameter("id")));
            
            LivroDao objLivro = new LivroDao();
            
            objLivro.deleteBook(livro);
            
                
        %>
    </body>
</html>
