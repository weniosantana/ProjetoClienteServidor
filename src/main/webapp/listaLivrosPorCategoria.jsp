<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form action="/ProjetoWeb/cadastro">
	<label for="cat">Categoria:</label>
		<select name="cat" id="cat">
		  <option value="Arquitetura">Arquitetura</option>
		  <option value="Desgin">Desgin</option>
		  <option value="Infor">Inform�tica</option>
		  <option value="Litbras">Literatura brasileira</option>
		  <option value="Litinf">Literatura infantil</option>
		  <option value="Lituniv">Literatura universal</option>
		  <option value="Musart">M�sica e arte</option>
		</select>
		<input type="submit">
	</form>
</body>
</html>