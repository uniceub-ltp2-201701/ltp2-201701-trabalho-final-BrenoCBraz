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
import dao.DetalhaFilmeDAO;
import model.Ator;
import model.Diretor;
import model.Filme;

/**
 * Servlet implementation class ServletDetalhaFilme
 */
@WebServlet("/detalhaFilme")
public class ServletDetalhaFilme extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDetalhaFilme() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
Connection conexao = Conexao.getConexao();
		
		String idFilme = request.getParameter("idfilme");
		
		//Detalh "A" nao "AR"
		DetalhaFilmeDAO dfd = new DetalhaFilmeDAO(conexao);
		
		Filme f = dfd.getFilme(idFilme);	
		ArrayList<Ator> atores = dfd.getAtorPorFilme(idFilme);
		ArrayList<Diretor> diretores = dfd.getDiretorPorFilme(idFilme);
		
		request.setAttribute("filme", f);
		request.setAttribute("atores", atores);
		request.setAttribute("diretores", diretores);
		
		//Detalh "A" nao "AR"
		RequestDispatcher rd = request.getRequestDispatcher("/respostaDetalhaFilme.jsp");
		rd.forward(request, response);
		
	}

}
