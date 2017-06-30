<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - ListarCategoria</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover{background-color:#000000}

body {
    color: white;
}
</style>
</head>
<body>

<div id="logo" class="container">
	<h1><a href="/LokuraFilmes/homePage">Lokura<span>Filmes</span></a></h1>
	<p>Os melhores filmes estão<a> AQUI!</a></p>
</div>

<div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2>Categorias</h2>
		</div>


	<table>
		<tr>
		<td><b>Gêneros</b></td>
		</tr>

	<% ArrayList<String> s = (ArrayList<String>) request.getAttribute("categorias");
		for(int i=0; i<s.size(); i++){
	%>
	
	<tr>
	<td>
	<a style=color:white href="/LokuraFilmes/detalhaCategoria?categoria=<%out.println(s.get(i)); %>">
		<% out.println(s.get(i)); %> 
		</a></td></tr>
		
<%}%>
	
	</table>
	
<br>
<br>
<a href="/LokuraFilmes/homePage"  class="button">Menu Inicial</a>
</body>
</html>