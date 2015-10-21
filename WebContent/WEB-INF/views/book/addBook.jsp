<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro</title>

<style  type="text/css">
	table, td, th, tfoot {border:solid 1px #000; padding:5px;}
	th {background-color:#999;}
	caption {font-size:x-large;}
	colgroup {background:#F60;}
	.coluna1 {background:#F66;}
	.coluna2  {background:#F33;}
	.coluna3  {background:#F99;}
</style>
</head>
<body>

<table >
<caption>Catálogo de livros</caption>
	<thead>
		<tr><th colspan="5">Tabela de livros</th></tr>
	</thead>
	<tfoot>
		<tr><td colspan="5"><a href="/SpringMvc/new">Voltar</a></td></tr>
	</tfoot>
	<tbody>
		<tr>
			<td>Código</td>
			<td>Nome</td>
			<td>Autor</td>
			<td>Descrição</td>
			<td>Páginas</td>
		</tr>
		<tr>
			<td>${Book.bookId}</td>
			<td>${Book.bookName}</td>
			<td>${Book.bookAuthor}</td>
			<td>${Book.bookDescription}</td>
			<td>${Book.bookPages}</td>
		</tr>
	</tbody>
</table>
</body>
</html>