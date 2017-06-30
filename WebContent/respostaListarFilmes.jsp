<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Filme" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - ListarFilmes</title>
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
			<h2>Filmes <span class="byline">Populares</span></h2>
		</div>

<table>
<tr><td><b>Filmes</b></td><td><b>Gênero</b></td></tr>

<%-- <table  style = 'background-color:dark gray' align="center" border=0px>
<tr><td style="color:white">Filmes</td><td style="color:white" >Gênero</td></tr> --%>


<% ArrayList<Filme> filmes = (ArrayList<Filme>) request.getAttribute("filmes"); %>

<%
 for(int i=0; i<filmes.size(); i++){
		out.println("<tr><td><a style=color:white href='/LokuraFilmes/detalhaFilme?idfilme=" + filmes.get(i).getIdFilme() + "&mensagem='>" + filmes.get(i).getTitulo() + "</a></td>");
		out.println("<td>" + filmes.get(i).getGenero()+ "</td></tr>");
	}
%>

</table>
<br>

<a href="/LokuraFilmes/homePage"  class="button">Menu Inicial</a>

</body>
</html>