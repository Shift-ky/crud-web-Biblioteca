<%-- 
    Document   : Listar
    Created on : 30 de nov. de 2022, 18:02:32
    Author     : robsonPaiva
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Livros"%>
<%@page import="Dao.LivroDao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <style>
        *{
    margin: 0;
    padding: 0;
    border: none;
    overflow: hidden;
}
body{
    background-image:url(https://github.com/Shift-ky/imagens/blob/main/sites-pequenos/books-g749120191_1920.jpg?raw=true);
}

.container-itens{
    background-color: aliceblue;
    margin-top: 8%;
    width: 100%;
    height: 100%;
    border-radius: 10px;
    box-shadow: 1px 1px 5px rgb(170, 54, 54);
}
.table tr{
    text-align: center;
}

.container .deletar{
    text-align: center;
    background-color: rgb(154, 128, 178);
    padding: 6px;
    border-radius: 10px;
    text-decoration: none;
    color: rgb(247, 11, 11);

}
.container .deletar:hover{
    background-color: red;
    color: rgb(221,213,228);
    transition: 1s;
}

.container .atualizar{
    margin-left: 5px;
    margin-top: 2px;
    margin-bottom: 2px;
    text-align: center;
    background-color: rgb(154, 128, 178);
    padding: 6px;
    border-radius: 10px;
    text-decoration: none;
    color: rgb(12, 242, 39);

}
.container .atualizar:hover{
    background-color: greenyellow;
    color: aliceblue;
    transition: 1s;
}

#links a{
    margin-top: 10px;
    text-align: center;
    width: 100px;
    background-color: blueviolet;
    padding: 5px;
    border-radius: 10px;
    text-decoration: none;
    color: black;
    float: right;
    margin-left: 5px;

}
#links a:hover{
    background-color: black;
    color: blueviolet;
    transition:1s;
}
#texto{
    font-size: 1.6em;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    color: antiquewhite;

    margin-top: 50px;
}


/*Formatação da página cadastrar*/

#container-cadastrar{
    margin: auto;
    min-width: 400px;
    max-width: 600px;
    
}
.cadastrar{
    border-radius: 10px;
    margin-top: 80px;
    background-color: aliceblue;
    box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.478);
}

#container-cadastrar label{
    margin-top: 15px;
    margin-left: 15px;
    margin-bottom: -5px;
}
#container-cadastrar input{
    margin-left: 10px;
    width: 96%;
    
}
#container-cadastrar button{
    background-color: blueviolet;
    color: black;
    margin-right: 20px;
    margin-bottom: 10px;
    float: right;
    border-radius: 10px;
    padding: 5px;
}
#container-cadastrar button:hover{
    background-color: green;
    color: black;
    transition: 0.9s;
}


    </style>
 
</head>
<body>
    <%
        LivroDao objLivro = new LivroDao();
        ArrayList<Livros> lista = new LivroDao().readyBook();
        request.setAttribute("list",lista);
    %>

    <div class="container">
        <div id="texto">
            Livros Cadastrados
        </div>
        
        <div class="container-itens">
            
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NOME</th>
                    <th scope="col">AUTOR</th>
                    <th scope="col">EDITORA</th>
                    <th scope="col">PAGINAS</th>
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
                        <td class="ultimo"><a class="deletar" href="deletar.jsp?id=${livro.getId_livro()}&nome=${livro.getNome()}</td>">DELETAR</a> <a class="atualizar" href="alterar.jsp?id=${livro.getId_livro()}&nome=${livro.getNome()}&autor=${livro.getAutor()}&editora=${livro.getEditora()}&paginas=${livro.getPaginas()} ">ATUALIZAR</a></td>
                  </tr>
                  </c:forEach>
                </tbody>

              </table>
              
        </div>

        <div id="links">
            <a href="Cadastrar.html">CADASTRAR</a>
        </div>
        
        
    </div>
    
</body>
</html>