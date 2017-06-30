<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - HomePage</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>

<div id="logo" class="container">
	<h1><a href="/LokuraFilmes/homePage">Lokura<span>Filmes</span></a></h1>
	<p>Os melhores filmes estão<a> AQUI!</a></p>
</div>


	<div id="menu" class="container">
	<ul>
		<li class="current_page_item"><a href="/LokuraFilmes/homePage" accesskey="1" title="">Homepage</a></li>
		<li><a href="/LokuraFilmes/listarFilmes" accesskey="1" title="">Filmes Populares</a></li>
		<li><a href="/LokuraFilmes/listarAtores" accesskey="2" title="">Atores</a></li>
		<li><a href="/LokuraFilmes/listarDiretores" accesskey="3" title="">Diretores</a></li>
		<li><a href="/LokuraFilmes/listarCategoria" accesskey="4" title="">Categorias</a></li>
	</ul>
</div>
	
	<%-- <div id="banner" class="container"> <img src="movies.jpg" width="1000" height="500" alt="" /></div> --%>
	
		
	<div class="login">
  
  <div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2>Login</h2>
		</div>

  <form action="usuario" class="login-container" method="post">
  	<br>
  	<p><input type="text" placeholder="Usuario" name="loginUsuario"></p>
    <p><input type="password" placeholder="Senha" name="loginSenha"></p>
    <p><input class="button" type="submit" value="Login"></p>
  </form>
</div>

<div class="register">
  
  
  <div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2>Sing-in</h2>
		</div>

  <form action="registrarUsuario" class="register-container" method="post">
  	<br>
  	<p><input type="text" placeholder="Usuario" name="registerUsuario"></p>
    <p><input type="password" placeholder="Senha" name="registerSenha"></p>
    <p><input class="button" type="submit" value="Sing-in"></p>
  </form>
</div>
	
	
</body>
</html>