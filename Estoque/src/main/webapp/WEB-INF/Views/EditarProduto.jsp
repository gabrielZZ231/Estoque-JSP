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

    <title>Editar Produto</title>
</head>
<body style="margin-left: 10px">
	<div>
		<h1>
			Editar Produto		
		</h1>
	</div>
         <form action="Produto" method="POST">
             <div class="mb-3">
                 <label class="form-label" for="nome">Nome</label>
                 <input class="form-control" type="text" name="nome" id="nome" value="${produtos.nome}">
                 <input type="hidden" name="id" id="id" value="${produtos.id}">
             </div>
             <div class="mb-3">
                 <label class="form-label"  for="preco">Preço</label>
                 <input class="form-control" type="number" pattern="[0-9]+([,\.][0-9]+)?" min="0" step="any" name="preco" id="preco" value="${produtos.preco}">
             </div>
             <div class="form-floating">
				<textarea class="form-control" placeholder="Descreva o Produto" name="descricao" id="descricao" style="height: 100px">${produtos.descricao}</textarea>
		  		<label for="descricao">Descrição</label>
			</div>
			<button style="margin-top: 10px" type="submit" class="btn btn-primary">Enviar</button>
           </form>           
	<footer id="rodape">
	<p>Estoque de loja&copy;2022 - Todos os Direitos Reservados.</p>
	</footer>
</body>
</html>