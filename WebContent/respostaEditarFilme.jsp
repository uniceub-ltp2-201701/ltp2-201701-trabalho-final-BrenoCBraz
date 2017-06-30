<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Usuario"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
    <%@ page import="model.Filme" %>
    <%@ page import="model.Categoria" %>
    <%@ page import="model.Ator" %>
    <%@ page import="model.Diretor" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - EditarFilme</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #c12222;
}
local{
	margin:auto;
 	top: 0;
  	right: 0;
  	bottom: 0;
 	left: 0;
 	width: 600px;
 	height:auto;
	border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    border:2px solid #4CAF50;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

</style>
</head>
<body>



<% HttpSession s = (HttpSession) request.getSession(true);
   Usuario u = (Usuario)s.getAttribute("admin"); 
   
   Filme f = (Filme) request.getAttribute("filme");

   if(!(u==null) && u.getPrivilegio()==1){%>

<div id="logo" class="container">
		<h1><a href="/LokuraFilmes/homePage">Lokura<span>Filmes</span></a></h1>
		<p>Os melhores filmes estão<a> AQUI!</a></p>
		</div>

<div id="page" class="container">
	<div id="sidebar">
	<h2 style="text-align:center;";>User: <%out.println(u.getNome());%><a href="/LokuraFilmes/logoff">SAIR</a></h2>
	</div>
	
    <div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2 style="text-align:center;">Modificar <span class="byline">Filme</span></h2>
		</div>

<br><br><br><br>
	
	<div style="width: 250px;color:black; float: right; padding: 15px; height: auto; width: 150px; text-align: center; word-wrap: break-word; text-overflow: ellipsis;">
			<a href="/LokuraFilmes/excluirFilme?idfilme=<%= f.getIdFilme() %>" style="color:White;">Deletar Filme</a>
		</div>
<br>


<div id="local">
  <form action="editarFilme?idfilme=<%out.println(f.getIdFilme());%>" style="height:auto" method="post">
    <label for="titulo">Título</label>
    <input type="text" id="titulo" name="titulo" placeholder="<%= f.getTitulo() %>">

    <label for="sinopse">Sinopse</label>   <textarea name="sinopse" cols="40" rows="5" placeholder="<%= f.getSinopse() %>" style="width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; resize: vertical;"></textarea>
    
    <label for="classificacao">Classificação</label><br>
    <input type="text" id="classificacao" name="classificacao" placeholder="<%= f.getClassificacao() %>"style="width:180px"><br>
    
    <label for="avaliacao">Avaliação</label><br>
    <input type="text" id="avaliacao" name="avaliacao" placeholder="<%= f.getAvaliacao() %>" style="width:180px"><br>
    
    <label for="duracao">Duração</label><br>
    <input type="text" id="duracao" name="duracao" placeholder="<%= f.getDuracao() %>" style="width:180px"><br>
    
    <label for="lancamento">Data de lançamento (AAAA-MM-DD)</label><br>
    <input type="text" id="lancamento" name="lancamento" placeholder="<%= f.getDatalancamento() %>" style="width:180px"><br>

    <input type="submit" value="MODIFICAR">
  </form>
  
</div>
  	
  	<% String m = (String) request.getAttribute("mensagem");
	if(m==null)
		m = "";
		%>
<h1 style="margin-left:850px"><%out.println(m);%></h1>



<%}else{%>
	<div class="title">
	<h2 style= "text-align:center">Somente Administradores!</h2>
	</div>
	<meta http-equiv="refresh" content="2; /LokuraFilmes/homePage" />
<%}%>
</body>
</html>
