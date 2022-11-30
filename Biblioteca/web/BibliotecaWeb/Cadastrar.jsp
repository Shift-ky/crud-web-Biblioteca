<%-- 
    Document   : Cadastrar
    Created on : 30 de nov. de 2022, 18:02:21
    Author     : famil
--%>

<%@page import="Dao.LivroDao"%>
<%@page import="Model.Livros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrado com Sucesso</title>
    </head>
    <body>
        <h1>Cadastrado com sucesso</h1>


        <%
            Livros livro = new Livros();
      
            livro.setNome(request.getParameter("nome"));
            livro.setAutor(request.getParameter("autor"));
            livro.setEditora(request.getParameter("editora"));
            livro.setPaginas(request.getParameter("paginas"));
            
            LivroDao objLivro = new LivroDao();
            objLivro.createBook(livro);
        %>
    </body>
</html>
