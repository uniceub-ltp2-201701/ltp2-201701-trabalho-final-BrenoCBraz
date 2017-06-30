package control;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Conexao;
import dao.DetalhaAtorDAO;
import model.Ator;
import model.Filme;

/**
 * Servlet implementation class ServletDetalhaAtor
 */
@WebServlet("/detalhaAtor")
public class ServletDetalhaAtor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDetalhaAtor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conexao = Conexao.getConexao();
		
		String idAtor = request.getParameter("idator");
		
		DetalhaAtorDAO dad = new DetalhaAtorDAO(conexao);
		
		Ator a = dad.getAtor(idAtor);
		ArrayList<Filme> f = dad.getFilmesPorAtor(idAtor);
		
		
		request.setAttribute("ator", a);
		request.setAttribute("filmes", f);
		
		RequestDispatcher rd = request.getRequestDispatcher("/respostaDetalhaAtor.jsp");
		rd.forward(request, response);
	
	}
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			Connection conexao = Conexao.getConexao();
					
					String idAtor = request.getParameter("idator");
					
					DetalhaAtorDAO dad = new DetalhaAtorDAO(conexao);
					
					Ator a = dad.getAtor(idAtor);
					ArrayList<Filme> f = dad.getFilmesPorAtor(idAtor);
					
					
					
					request.setAttribute("ator", a);
					request.setAttribute("filmes", f);
					
					RequestDispatcher rd = request.getRequestDispatcher("/respostaDetalhaAtor.jsp");
					rd.forward(request, response);
	
	}
		

}
