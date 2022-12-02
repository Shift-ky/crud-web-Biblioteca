<%-- 
    Document   : update
    Created on : 1 de dez. de 2022, 21:21:53
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
        <h1>Hello World!</h1>
        
        <%
            Livros livro = new Livros();
          
            livro.setAutor(request.getParameter("autor"));
            livro.setEditora(request.getParameter("editora"));
            livro.setNome(request.getParameter("nome"));
            livro.setPaginas(request.getParameter("paginas"));
            
            LivroDao objLivro = new LivroDao();
            objLivro.updateLivro(livro);
        %>
    </body>
</html>
