<%-- 
    Document   : alterar
    Created on : 1 de dez. de 2022, 21:02:18
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
        <form action="alterar.jsp" method="post">
        <input type="text" name="id" value="<%=request.getParameter("id")%>">
        <input type="text" name="nome" value="<%=request.getParameter("nome")%>">
        <input type="text" name="autor" value="<%=request.getParameter("autor")%>">
        <input type="text" name="editora" value="<%=request.getParameter("editora")%>">
        <input type="text" name="paginas" value="<%=request.getParameter("paginas")%>">
        
        <input type="submit" value="ATUALIZAR" onclick="response.sendRedirect("Listar.jsp");">
        </form>
        
        
        <%
            Livros livro = new Livros();
          livro.setId_livro(Integer.parseInt(request.getParameter("id")));
            livro.setAutor(request.getParameter("autor"));
            livro.setEditora(request.getParameter("editora"));
            livro.setNome(request.getParameter("nome"));
            livro.setPaginas(request.getParameter("paginas"));
            
            LivroDao objLivro = new LivroDao();
            objLivro.updateLivro(livro);
            
            
        %>
    </body>
    
    
  
</html>
