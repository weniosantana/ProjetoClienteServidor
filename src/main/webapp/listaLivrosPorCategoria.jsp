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
		margin-top: 10%;
		padding-top: 60px;
		padding-bottom: 50px;
		height: 100px;
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
		font-size:20px
	}
	body{
		 background-image: url("fundo.jpg");
	
	}
</style>
</head>
<body>

<div class="main">
	<form action="/ProjetoWeb/cadastro">
	<label for="cat">Categoria:</label><br>
		<select class="textarea" name="cat" id="cat">
		  <option value="Arquitetura">Arquitetura</option>
		  <option value="Desgin">Desgin</option>
		  <option value="Infor">Informática</option>
		  <option value="Litbras">Literatura brasileira</option>
		  <option value="Litinf">Literatura infantil</option>
		  <option value="Lituniv">Literatura universal</option>
		  <option value="Musart">Música e arte</option>
		</select><br>
		<input class="btn" type="submit" value="CONSULTAR">
	</form>
</div>
</body>
</html>