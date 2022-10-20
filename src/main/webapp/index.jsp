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
</head>
<body>
	<h1>Projeto Sistema Cliente-Servidor</h1>
	<hr>
	<h2>Nomes e RGM dos Alunos:</h2>
	<h3>Arthur Moutinho</h3>
	<h3>Isaac Monteiro</h3>
	<h3>Ronald Borges</h3>
	<h3>Vitor Barros</h3>
	<h3>Wenio Santana</h3>
	<hr>
	
	<form ACTION="listaLivrosPorCategoria.jsp">
  	<input type="submit" value="LISTA DE LIVROS POR CATEGORIA">
	</form>
	<br>
	<form ACTION="cadLivros.jsp">
  	<input type="submit" value="CADASTRAR NOVOS LIVROS">
	</form>
</body>
</html>