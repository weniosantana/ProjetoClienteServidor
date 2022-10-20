<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/ProjetoWeb/livrosCad">
		<label>Codigo do Livro:</label>
		<input type="text" name="codlivro"><br>
		<label>Titulo:</label>
		<input type="text" name="titulo"><br>
		<label>Autor:</label>
		<input type="text" name="autor"><br>
		<label>Categoria:</label>
		<select Name="categoria">  
  		  <option value="Arquitetura">Arquitetura</option>
		  <option value="Desgin">Desgin</option>
		  <option value="Informatica">Informática</option>
		  <option value="Literatura brasileira">Literatura brasileira</option>
		  <option value="Literatura infantil">Literatura infantil</option>
		  <option value="Literatura universal">Literatura universal</option>
		  <option value="Música e arte">Música e arte</option>
		</select> <br>
		<label>Valor:</label>
		<input type="text" name="valor"><br>
		<input type="submit" value="CADASTRAR">
	</form>
</body>
</html>