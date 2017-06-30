<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="model.Diretor"%>
	<%@ page import="java.util.ArrayList"%>
	<%@ page import="model.Filme"%>
    <%@ page import="model.Usuario"%>
    <%@ page import="java.sql.Date"%>
	<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - DetalhaDiretor</title>
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
<body>


<div id="logo" class="container">
	<h1><a href="/LokuraFilmes/homePage">Lokura<span>Filmes</span></a></h1>
	<p>Os melhores filmes estão<a> AQUI!</a></p>
</div>



	<%
    Diretor d = (Diretor) request.getAttribute("diretor");
	ArrayList<Filme> f = (ArrayList<Filme>) request.getAttribute("filmes");
	HttpSession s = (HttpSession) request.getSession(true);
	Usuario u = (Usuario)s.getAttribute("admin");

    if(!(u==null)){%>




<div id="page" class="container">
	<div id="sidebar">
	<h2 style="text-align:center;";>User: <%out.println(u.getNome());%><a href="/LokuraFilmes/logoff">SAIR</a></h2>
	</div>


<%if(!(u==null) && u.getPrivilegio()==1){ %>
	
	<br><br><br>
	
	<div class="container" style="width: 250px;color:black; float: right; padding: 15px; height: auto; width: 150px; text-align: center; word-wrap: break-word; text-overflow: ellipsis;">
			<a href="/LokuraFilmes/paginaEditarDiretor?iddiretor=<%out.println(d.getIdDiretor());%>" style="color:white;">Modificar Diretor</a>
		</div>
	
	<%} }%>


<div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2>
				<%
				out.println(d.getNome());
				%>
			</h2>
		</div>


	<table>
		<tr>
		<td><p font-size:20px; word-wrap:break-word;>
			<%
			out.println(d.getBiografia());
			%>
		</p></td>
		</tr>
	</table>

	<br><br>

	<table>
		<tr>
			<td><b>Filmes Dirigidos</b></td>
			<td><b>Gênero</b></td>
		</tr>
		<%
			for (int i = 0; i < f.size(); i++) {
		%>
		<td>
		<%
		out.println("<a style=color:white href='/LokuraFilmes/detalhaFilme?idfilme=" + f.get(i).getIdFilme() + "&mensagem='>" + f.get(i).getTitulo() + "</a>");
			%>
		</td>
		<td>
		<%
		out.println(f.get(i).getGenero());
		%>
		</td>	
		<% }  %>
		
		
	</table>

<br>
<br>

<a href="/LokuraFilmes/listarDiretores"  class="button">Voltar aos Diretores</a>
<br>
<br>
<a href="/LokuraFilmes/homePage"  class="button">Menu Inicial</a>
</body>
</html>