<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Usuario"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="model.Filme" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LokuraFilmes - PageAdicionarDiretor</title>
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

	<div id="logo" class="container">
	<h1><a href="/LokuraFilmes/homePage">Lokura<span>Filmes</span></a></h1>
	<p>Os melhores filmes estão<a> AQUI!</a></p>
	</div>

<% HttpSession s = (HttpSession) request.getSession(true);
   Usuario u = (Usuario)s.getAttribute("admin"); 
   
   if(!(u==null) && u.getPrivilegio()==1){%>


	<div id="page" class="container">
	<div id="sidebar">
		<h2 style="text-align:center;";>User: <%out.println(u.getNome());%><a href="/LokuraFilmes/logoff">SAIR</a></h2>
		</div>


	<div id="page" class="container">
		<div id="content">
		<div class="title">
		<h2 style="text-align:center;">Adicionar <span class="byline">Diretor</span></h2>
		</div>
	
   
<div id="local">
  <form action="adicionarDiretor" style="height:auto" method="post">
    <label for="nome">Nome</label>
    <input type="text" id=""nome" name="nome"><br>
	<br>
    
    <label for="biografia">Biografia</label> <textarea name="biografia" cols="40" rows="5" style="width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; resize: vertical;"></textarea>
   
    <br>
    
    <label for="nascimento">Data de Nascimento</label><br>
    <input type="text" id="nascimento" name="nascimento" placeholder="YYYY-MM-DD..." style="width:250px"><br><br>
    
    <label for="idfilme">Filme produzido pelo diretor</label><br>
    
    <select id="idfilme" name="idfilme"> 
    <% 
    ArrayList<Filme> filmes = (ArrayList<Filme>) request.getAttribute("filmes");
    
  	for(int i=0; i<filmes.size(); i++){ %>
  
	<option value="<%out.print(filmes.get(i).getIdFilme());%>"><%out.print(filmes.get(i).getTitulo());%></option>
  		
	<%}%>

	</select>
	<br><br>

    <input type="submit" value="Submit">
  </form>
</div>

<br><br>
<a href="/LokuraFilmes/homePage"  class="button">Menu Inicial</a>

<% String m = (String) request.getAttribute("mensagem");
	if(m==null)
		m = "";
%>
<h1 style="margin-left:850px"><%out.println(m);%></h1>
<%}else{%>
	
	<div class="title">
			<h2 style= "text-align:center">Somente Administradores!</h2>
		</div>
		
<%}%>
</body>
</html>