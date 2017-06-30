package control;

import static java.lang.System.out;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.Conexao;
import dao.DetalhaDiretorDAO;
import dao.EditarDiretorDAO;
import model.Diretor;

@WebServlet("/editarDiretor")
public class ServletEditarDiretor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletEditarDiretor() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conexao = Conexao.getConexao();

		EditarDiretorDAO edd = new EditarDiretorDAO(conexao);

		String w = request.getParameter("iddiretor");
		int iddiretor = Integer.parseInt(w);
		
		DetalhaDiretorDAO ddd = new DetalhaDiretorDAO(conexao);

		Diretor d = ddd.getDiretor("iddiretor");

		out.println(d.getNome());

		//MODIFICAR O NOME DO DIRETOR

		String nome = request.getParameter("nome");

		if(nome.equals("")){
			nome = d.getNome();
		}

		//MODIFICAR A BIOGRAFIA DO DIRETOR

		String biografia = request.getParameter("biografia");

		if(biografia.equals("")){
			biografia = d.getBiografia();
		}


		//MODIFICAR A DATA DE NASCIMENTO DO DIRETOR

		String datanasci = request.getParameter("datanasci");

		java.sql.Date sqlDate = null;

		if(datanasci.equals("")){
			sqlDate = d.getDatanasci();
		}else{
			sqlDate = java.sql.Date.valueOf(datanasci);
		}

		//MODIFICAR O FILME DO DIRETOR
		String idfilme = request.getParameter("idfilme");
		
		boolean resultado = edd.editarDiretor(nome, biografia, sqlDate, iddiretor, d.getIdFilme());

		if(resultado){
			request.setAttribute("iddiretor", iddiretor);
			request.setAttribute("diretor", d);
			RequestDispatcher rd = request.getRequestDispatcher("/detalhaDiretor");
			rd.forward(request, response);

		}else{
			request.setAttribute("mensagem", "Erro inesperado,Diretor não editado.");
			request.setAttribute("diiretor", d);
			RequestDispatcher rd = request.getRequestDispatcher("/respostaEditarDiretor.jsp");
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conexao = Conexao.getConexao();

		EditarDiretorDAO edd = new EditarDiretorDAO(conexao);

		String w = request.getParameter("iddiretor");
		int iddiretor = Integer.parseInt(w);
		
		DetalhaDiretorDAO ddd = new DetalhaDiretorDAO(conexao);

		Diretor d = ddd.getDiretor("iddiretor");

		out.println(d.getIdDiretor());

		//MODIFICAR O NOME DO DIRETOR

		String nome = request.getParameter("nome");

		if(nome.equals("")){
			nome = d.getNome();
		}

		//MODIFICAR A BIOGRAFIA DO DIRETOR

		String biografia = request.getParameter("biografia");

		if(biografia.equals("")){
			biografia = d.getBiografia();
		}


		//MODIFICAR A DATA DE NASCIMENTO DO DIRETOR

		String datanasci = request.getParameter("datanasci");

		java.sql.Date sqlDate = null;

		if(datanasci.equals("")){
			sqlDate = d.getDatanasci();
		}else{
			sqlDate = java.sql.Date.valueOf(datanasci);
		}

		//MODIFICAR O FILME DO DIRETOR
		String idfilme = request.getParameter("idfilme");
		
		boolean resultado = edd.editarDiretor(nome, biografia, sqlDate, iddiretor, d.getIdFilme());

		if(resultado){
			request.setAttribute("iddiretor", iddiretor);
			request.setAttribute("diretor", d);
			RequestDispatcher rd = request.getRequestDispatcher("/detalhaDiretor");
			rd.forward(request, response);

		}else{
			request.setAttribute("mensagem", "Erro inesperado,Diretor não editado.");
			request.setAttribute("diiretor", d);
			RequestDispatcher rd = request.getRequestDispatcher("/respostaEditarDiretor.jsp");
			rd.forward(request, response);
		}
	}
}

