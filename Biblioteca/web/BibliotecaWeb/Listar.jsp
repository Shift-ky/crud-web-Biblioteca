<%-- 
    Document   : Listar
    Created on : 30 de nov. de 2022, 18:02:32
    Author     : famil
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Livros"%>
<%@page import="Dao.LivroDao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Livros Cadastrados</title>
    </head>
    <body>
        <h1>Cadastrados</h1>
        
        <%
               LivroDao objLivro = new LivroDao();
               ArrayList<Livros> lista = new LivroDao().readyBook();
               request.setAttribute("list",lista);
        %>
        
        <table border="1">
            <thead>
                <tr>
                    <th>ID LIVRO</th>
                    <th>NOME LIVRO</th>
                    <th>AUTOR</th>
                    <th>EDITORA</th>
                    <th>PAGINAS</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="livro">
                    <tr>
                        <td>${livro.getId_livro()}</td>
                        <td>${livro.getNome()}</td>
                        <td>${livro.getAutor()}</td>
                        <td>${livro.getEditora()}</td>
                        <td>${livro.getPaginas()}</td>
                        <td><input type="submit" value="UPDATE" /> <input type="submit" value="DELETE" /> </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
