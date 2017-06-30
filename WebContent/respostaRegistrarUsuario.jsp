<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="/respostaRegistrarUsuario.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - RegistrarUsuario</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<div id="logo" class="container">
	<h1><a>Lokura<span>Filmes</span></a></h1>
	<p>Os melhores filmes estão<a> AQUI!</a></p>
</div>

<%  
	boolean resultado = (boolean) request.getAttribute("resultado");
%>

<% if(resultado){ %>
<meta http-equiv="refresh" content="2; /LokuraFilmes/homePage" />
	<h1 style="text-align:center; color:white; margin-top:40px;">Usuário registrado com Sucesso!</h1>
	<%--<h2 style="text-align:center; color:white;">Um Momento!</h2> --%>
<%}else{%>
	<h2 style="text-align:center; margin-top:40px;">Erro ao registrar usuário!</h2>
<%}%>
</body>
</html>