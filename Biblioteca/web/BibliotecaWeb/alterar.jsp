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
        <form action="update.jsp" method="post">
        <input type="text" value="<%=request.getParameter("id")%>">
        <input type="text" value="<%=request.getParameter("nome")%>">
        <input type="text" value="<%=request.getParameter("autor")%>">
        <input type="text" value="<%=request.getParameter("editora")%>">
        <input type="text" value="<%=request.getParameter("paginas")%>">
        
        <input type="submit" value="ATUALIZAR">
        </form>
    </body>
    
    
  
</html>
