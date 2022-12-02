<%-- 
    Document   : alterar
    Created on : 1 de dez. de 2022, 21:02:18
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%@page import="Dao.LivroDao, Model.Livros"%>
        
        <%
            String id = request.getParameter("id");
           LivroDao objLivro = new LivroDao();
           
           Livros livro = objLivro.getRegistroById(Integer.parseInt(request.getParameter("id")));
        %>
        
        <form action="update.jsp" method="post">
            <input type="hidden" name="id" value="<%=livro.getId_livro()%>">
            <input type="text" name="nome" value="<%=livro.getNome()%>">
            <input type="text" name="autor" value="<%=livro.getAutor()%>">
            <input type="text" name="editora" value="<%=livro.getEditora()%>">
            <input type="text" name="paginas" value="<%=livro.getPaginas()%>">
        
            <input type="submit" value="ATUALIZAR" onclick="response.sendRedirect("Listar.jsp");">
        </form>
    </body>
    
    
  
</html>
