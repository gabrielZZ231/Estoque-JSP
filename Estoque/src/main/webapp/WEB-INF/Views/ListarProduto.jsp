<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


    <%@ page import="Produto.Produto" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Lista Estoque</title>
</head>
<body style="margin-left: 10px">
	<div>
		<h1>
			Lista de Produtos
		</h1>
	</div>
	<table class="table table-dark">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Nome</th>
	      <th scope="col">Preço</th>
	      <th scope="col">Descrição</th>      
	      <th scope="col"></th>
	      <th scope="col"></th>
	    </tr>
	  </thead>
	  <tbody>
		  <c:forEach var="produto"  items="${produtos}">
		    <tr>
		        <th scope="row">${produto.id}</th>
		        <td>${produto.nome}</td>
		        <td>${produto.preco}</td>
		        <td>${produto.descricao}</td>
		        <td><button type="button" class="btn btn-primary"><a style="color: #FFFF;text-decoration: none;"href="Produto?acao=editar&id=${produto.id}">Editar</a></button></td>
		        <td><button type="button" class="btn btn-danger"><a style="color: #FFFF;text-decoration: none;"href="Produto?acao=remover&id=${produto.id}">Excluir</a></button></td>
		    </tr>
		</c:forEach>   
	  </tbody>
	</table>
	<button  style="margin-top: 10px" type="button" class="btn btn-success"><a style="color: #FFFF;text-decoration: none;"href="Produto?acao=novo">Adicionar novo item</a></button>
	<footer id="rodape">
		<p>Estoque de loja &copy;2022 - Todos os Direitos Reservados.</p>
	</footer>
</body>
</html>