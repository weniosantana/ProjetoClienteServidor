<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import= "java.sql.Connection"%>
<%@page import=  "java.sql.ResultSet" %>
<%@page import= "java.sql.SQLException" %>
<%@page import= "java.sql.Statement" %>
<%@page import= "db.DB" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.main{
		margin: 0 auto;
		text-align: center;
		background-color: #c7b79f;
		margin-left: 80px;
		margin-right: 80px;
		border-radius: 40px;
		margin-top: 9%;
		padding-top: 10px;
		padding-bottom: 10px;
	}
	.btn{
	  height: 2rem;
	  font-size: 1.1rem;
	  border-radius: 5px;
	  border: none;
	  margin-top: 3px;
	  background-color: #b5915c;
	  color: black;
	}
	body{
		 background-image: url("fundo.jpg");
	
	}
</style>
</head>
<body>
	<div class="main">
	<h1>Projeto Sistema Cliente-Servidor</h1>
	<hr>
	<h2>Nomes e RGM dos Alunos:</h2>
	<h3>Arthur Moutinho Sublime RGM: 26337932</h3>
	<h3>Isaac Lima Monteiro RGM: 27967182</h3>
	<h3>Ronald Borges de Oliveira RGM: 26694298</h3>
	<h3>Vitor Augusto Barros RGM: 26366771</h3>
	<h3>Wenio Sousa Santana RGM: 25831810</h3>
	<hr>
	
	<form ACTION="listaLivrosPorCategoria.jsp">
  	<input class="btn" type="submit" value="LISTA DE LIVROS POR CATEGORIA">
	</form>
	<form ACTION="cadLivros.jsp">
  	<input class="btn" type="submit" value="CADASTRAR/DELETAR/ALTERAR NOVOS LIVROS">
	</form>
	<form ACTION="mostrarLivros.jsp">
  	<input class="btn" type="submit" value="MOSTRAR LIVROS">
	</form>
	</div>
</body>
</html>