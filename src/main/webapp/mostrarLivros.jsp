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

</style>
</head>
<body>
	<div class="main">
	<form action="/ProjetoWeb/mostrarLiv">
		<label>Codigo do Livro:</label><br>
		<input class="textarea" type="text" name="codlivroMos"><br>
		<input class="btn" type="submit" value="MOSTRAR">
	</form>
	</div>
</body>
</html>