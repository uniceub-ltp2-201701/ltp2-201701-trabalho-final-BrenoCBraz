<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Usuario"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - LogON</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<style>
.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #26bc12;} /* Green */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */
</style>
</head>
<body>

<div id="logo" class="container">
	<h1><a href="/LokuraFilmes/homePage">Lokura<span>Filmes</span></a></h1>
	<p>Os melhores filmes estão<a> AQUI!</a></p>
</div>


<%	HttpSession s = (HttpSession) request.getSession(true);
	Usuario u = (Usuario)s.getAttribute("admin");

if(!(u==null)){%>
	
	<div id="page" class="container">
	<div id="sidebar">
	<h2 style="text-align:center;";>User: <%out.println(u.getNome());%><a href="/LokuraFilmes/logoff">SAIR</a></h2>
		</div>
	
		<div class="title">
		<h2 font-size:25px;>Olá <span class="byline"><%out.println(u.getNome());%>!</span></h2>
		</div></div>
	
		
	<% if(u.getPrivilegio()==1){%>
	
	<div id="page" class="container">
	    <div class="title">
		<h2 style="text-align:center; font-size:50px;">Olá Mestre! <span class="byline">Selecione uma opção</span></h2>
		</div> </div> 
	
		
		<br><br>
		<div class="container" style="color:black; text-align: center">
		<a href="/LokuraFilmes/paginaAdicionarFilme" <button class="button button2"></button>>Adicionar Filme</a>
		</div>
		
		<br><br>
		<div class="container" style="color:black;text-align: center">
		<a href="/LokuraFilmes/paginaAdicionarAtor" <button class="button button2"></button>>Adicionar Ator</a>
		</div>
		
		<br><br>
		<div class="container" style="color:black;text-align: center">
		<a href="/LokuraFilmes/paginaAdicionarDiretor" <button class="button button2"></button>>Adicionar Diretor</a>
		</div>
		
		<br><br>
		<div class="container" style="color:black;text-align: center">
		<a href="/LokuraFilmes/listarFilmes" <button class="button button3"></button>>Editar Filme</a>
		</div>
		
		<br><br>
		<div class="container" style="color:black;text-align: center">
		<a href="/LokuraFilmes/listarAtores" <button class="button button3"></button>>Editar Ator</a>
		</div>
		
		<br><br>
		<div class="container" style="color:black;text-align: center">
		<a href="/LokuraFilmes/listarDiretores" <button class="button button3"></button>>Editar Diretor</a>
		</div>
		
		<br><br>
		<br><br>
			
	<%}%>
	<% if(u.getPrivilegio()==0){%>

		<br><br>
		
		<div class="container" style="color:white; text-align:center; margin:auto;">
		<a href="/LokuraFilmes/listarFilmes"  class="button">Ver Filmes Populares</a>
		</div>
		
		<br><br>
		
		<div class="container" style="color:white; text-align:center; margin:auto;">
		<a href="/LokuraFilmes/listarAtores" class="button">Ver Atores</a>
		</div>
		
		<br><br>
		
		<div class="container" style="color:white; text-align:center; margin:auto;">
		<a href="/LokuraFilmes/listarDiretores" class="button">Ver Diretores</a>
		</div>
	
	<%}%>
	<%}else{%>
 
 	<h2 style="margin-top:100px; color:white; font-size: 35px; text-align:center;">Senha/Usuario Errado! Tente denovo!</h2>
 	<div style="text-align:center;">
 	<meta http-equiv="refresh" content="2; /LokuraFilmes/homePage" />
 	<a href="/LokuraFilmes/homePage" style="border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block;
    font-size: 30px; align:center;"></a>
    </div>
<%}%>
</body>
</html>