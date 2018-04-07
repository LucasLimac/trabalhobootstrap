<%-- 
    Document   : form
    Created on : 03/04/2018, 17:34:43
    Author     : Lucas Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="selects" uri="WEB-INF/teste.tld"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Portal do Aluno CEFET/RJ</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>
  
  <body class="text-center">
      
      <form class="form-signin" action="Servidortrab" method="POST">
      <img class="mb-4" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Bras%C3%A3o_transparente.png/220px-Bras%C3%A3o_transparente.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Portal do Aluno</h1>
      
      <label for="inputAluno" class="sr-only">Aluno</label>
      <input type="text" id="inputAluno" class="form-control" name="aluno" value="${aluno}" placeholder="Nome do aluno" required autofocus>
      
      <label for="inputFrequencia" class="sr-only">Frequência</label>
      <input type="text" id="inputFrequencia" class="form-control" name="frequencia" value="${frequencia}" placeholder="Frequência" required> 
      
      <label for="inputNota1" class="sr-only has-sucess">Nota da P1</label>
      <input type="text" id="inputNota1" class="form-control" name="nota1" value="${nota1}" placeholder="Nota da P1" required> 
      
      <label for="inputTrabalho" class="sr-only">Trabalho</label>
      <input type="text" id="inputTrabalho" class="form-control" name="trabalho" value="${trabalho}" placeholder="Nota do Trabalho" required> 
      
      <label for="inputProjeto" class="sr-only">Projeto</label>
      <input type="text" id="inputProjeto" class="form-control" name="projeto" value="${projeto}" placeholder="Nota do Projeto" required> 
      
      
      <label for="inputProvafinal" class="sr-only">Prova Final</label>
      <input type="text" id="inputProvafinal" class="form-control" name="notafinal" value="${notafinal}" placeholder="Nota da Prova Final" required> 
      
      <div class="checkbox mb-3">
          <br>
                <h8>${erronota1}</h8>
                <h8>${erroTrabalho}</h8>
                <h8>${erroProjeto}</h8>
                <h8>${erroNotafinal}</h8> 
                <h8>${erroFrequencia}</h8>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit" data-toggle="tooltip" title="Clique para enviar">Enviar</button>
      <p class="mt-5 mb-3 text-muted">&copy; Lucas Lima - 2018</p>
    </form>
  </body>
</html>