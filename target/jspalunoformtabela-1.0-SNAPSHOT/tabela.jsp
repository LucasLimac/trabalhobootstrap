<%-- 
    Document   : tabela
    Created on : 05/04/2018, 20:40:39
    Author     : Lucas Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.cefetrj.psw.jspalunoformtabela.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <table class="table table-striped " >
        <thead>
          <tr>
            <th scope="col">Aluno</th>
            <th scope="col">Frequência</th>
            <th scope="col">P1</th>
            <th scope="col">Trabalho</th>
            <th scope="col">Projeto</th>
            <th scope="col">Média</th>
            <th scope="col">Prova Final</th>
            <th scope="col">Situação</th>
          </tr>
        </thead>
        <tbody>
          <c:if test="${not empty a}">
                <c:forEach items="${ a}" var="b" >

                <tr>
                    <td>${b.nome}</td>
                    <td>${b.frequencia}</td>
                    <td>${b.nota1}</td>
                    <td>${b.trabalho}</td>
                    <td>${b.projeto}</td>
                    <td>${b.m1}</td>
                    <td>${b.notafinal}</td>
                    <td>${b.situacao}</td>



                </tr>
                </c:forEach>
           </c:if>
         
          
        </tbody>
        
      </table>
        <br>
            <div class=" col offset-md-5">
                <input type="submit" class="btn btn-primary small col-sm-1" id="botao" value="Novo Aluno"  onclick="location.href='http://localhost:8080/jspalunoformtabela/form.jsp/form.jsp'">
            </div>
    </body>
</html>
