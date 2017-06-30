<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="model.Filme" %>
    <%@ page import="model.Ator" %>
    <%@ page import="model.Diretor" %>
      <%@ page import="model.Usuario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - DetalhaFilmes</title>
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


<%  Filme f = (Filme)request.getAttribute("filme");
	ArrayList<Ator> atores = (ArrayList<Ator>) request.getAttribute("atores");
	ArrayList<Diretor> diretores = (ArrayList<Diretor>) request.getAttribute("diretores");
	HttpSession s = (HttpSession) request.getSession(true);
	Usuario u = (Usuario)s.getAttribute("admin");

if(!(u==null)){%>

	
	<div id="page" class="container">
	<div id="sidebar">
	<h2 style="text-align:center;";>User: <%out.println(u.getNome());%><a href="/LokuraFilmes/logoff">SAIR</a></h2>
	</div>


<%}%>

	<%if(!(u==null) && u.getPrivilegio()==1){ %>
	
	<br><br><br>
	
	<div class="container" style="width: 250px;color:black; float: right; padding: 15px; height: auto; width: 150px; text-align: center; word-wrap: break-word; text-overflow: ellipsis;">
			<a href="/LokuraFilmes/paginaEditarFilme?idfilme=<%out.println(f.getIdFilme());%>" style="color:white;">Modificar Filme</a>
		</div>
	
	<%}%>


<div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2><%out.println(f.getTitulo());%></h2>
		</div>

<table border="0">
	<tr><td><p style="width: 1000px; font-size:20px; word-wrap:break-word;">
		<% out.println(f.getSinopse()); %>
	</p></td></tr>
	</table>

	<br>
	<br>
	
	<table font-size:12px;>
	<tr><td><% out.println(f.getGenero()); %></td></tr>
	</table>
	
	<br>
	
	<table font-size:12px;>
	<tr><td><% out.println(f.getDuracao() + " minutos");%></td></tr>
	</table>
	
	<br>
	
	<table font-size:12px;>
	<tr><td><% out.println("Avaliação: " + f.getAvaliacao());%></td></tr>
	</table>
	
	<br><br>
	
	<table>
	
	<tr><td><b>Atores Participantes</b></td></tr>
	<% for(int i=0; i<atores.size(); i++){%>
		<tr>
		<td><%out.println("<a style=color:white href='/LokuraFilmes/detalhaAtor?idator=" + atores.get(i).getIdAtor() + "&mensagem='>" + atores.get(i).getNome() + "</a>");%></td>
		</tr>
	<%}%>
	
	</table>
	
	<br>
	
	<table>
	
	<tr><td><b>Diretores</b></td></tr>
	<% for(int i=0; i<diretores.size(); i++){%>
		<tr>
		<td><%out.println("<a style=color:white href='/LokuraFilmes/detalhaDiretor?iddiretor=" + diretores.get(i).getIdDiretor() + "&mensagem='>" + diretores.get(i).getNome() + "</a>");%></td>
		</tr>
	<%}%>
	
	</table>
<br>
<a href="/LokuraFilmes/listarFilmes"  class="button">Voltar aos Filmes</a>
<br>
<br>	
<a href="/LokuraFilmes/homePage"  class="button">Menu Inicial</a>
</body>
</html>