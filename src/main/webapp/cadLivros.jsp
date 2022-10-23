<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		margin-top: 1%;
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

	.textarea{
		border-radius: 0.4rem;
	   position: relative; /* Helps to keep label top on input */
	 
	  	background-color: #fcffff; /* Match the background */
	  	border: black 0.1rem solid;
	  	width: 20rem;
	  	height: 2rem;
	  	padding: 0rem 1rem;
	  	font-size: 1.4rem;
		margin-top:5px;
		margin-bottom:5px;	 	  
	
	}
	label{
		
	
	}
	.btn{
		  height: 2rem;
		  font-size: 1.1rem;
		  border-radius: 5px;
		  border: none;
		  margin-top: 3px;
		  background-color: #b5915c;
		  color: black;
		  margin-top:5px;
		margin-bottom:5px;
	}
	body{
		 background-image: url("fundo.jpg");
	
	}
</style>
</head>
<body>
	<div class="main">
	<form action="/ProjetoWeb/livrosCad">
		<label>Codigo do Livro:</label><br>
		<input class="textarea" type="text" name="codlivro"><br>
		<label>Titulo:</label><br>
		<input class="textarea" type="text" name="titulo"><br>
		<label>Autor:</label><br>
		<input  class="textarea" type="text" name="autor"><br>
		<label>Categoria:</label><br>
		<select  class="textarea"  Name="categoria">  <br>
  		  <option value="Arquitetura">Arquitetura</option>
		  <option value="Desgin">Desgin</option>
		  <option value="Informatica">Informática</option>
		  <option value="Literatura brasileira">Literatura brasileira</option>
		  <option value="Literatura infantil">Literatura infantil</option>
		  <option value="Literatura universal">Literatura universal</option>
		  <option value="Música e arte">Música e arte</option>
		</select> <br>
		<label>Valor:</label><br>
		<input  class="textarea"  type="text" name="valor"><br>
		<input class="btn" type="submit" value="CADASTRAR">
	</form>
	<hr>
	<form action="/ProjetoWeb/deletarLiv">
		<label>Codigo do Livro:</label><br>
		<input class="textarea"  type="text" name="codlivroDel"><br>
		<input class="btn" type="submit" value="DELETAR">
	</form>
	<hr>
	<form action="/ProjetoWeb/alterLiv">
		<label>Codigo do Livro:</label><br>
		<input  class="textarea" type="text" name="codlivroUpd"><br>
		<label>Titulo:</label><br>
		<input  class="textarea" type="text" name="tituloUpd"><br>
		<label>Autor:</label><br>
		<input  class="textarea" type="text" name="autorUpd"><br>
		<label>Categoria:</label><br>
		<select  class="textarea"  Name="categoriaUpd">  
  		  <option value="Arquitetura">Arquitetura</option>
		  <option value="Desgin">Desgin</option>
		  <option value="Informatica">Informática</option>
		  <option value="Literatura brasileira">Literatura brasileira</option>
		  <option value="Literatura infantil">Literatura infantil</option>
		  <option value="Literatura universal">Literatura universal</option>
		  <option value="Música e arte">Música e arte</option>
		</select> <br>
		<label>Valor:</label><br>
		<input  class="textarea" type="text" name="valorUpd"><br>
		<input class="btn"  type="submit" value="ALTERAR">
	</form>
	
	</div>
</body>
</html>