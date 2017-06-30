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
import dao.ListarCategoriaDAO;

/**
 * Servlet implementation class ServletListarCategorias
 */
@WebServlet("/listarCategoria")
public class ServletListarCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletListarCategoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conexao = Conexao.getConexao();
		
		ListarCategoriaDAO lcd = new ListarCategoriaDAO(conexao);
		
		ArrayList<String> categorias = lcd.getTodasCategorias();
		
		request.setAttribute("categorias", categorias);
		RequestDispatcher rd = request.getRequestDispatcher("/respostaListarCategoria.jsp");
		rd.forward(request, response);
		
	}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conexao = Conexao.getConexao();
		
		ListarCategoriaDAO lcd = new ListarCategoriaDAO(conexao);
		
		ArrayList<String> categorias = lcd.getTodasCategorias();
		
		request.setAttribute("categorias", categorias);
		RequestDispatcher rd = request.getRequestDispatcher("/respostaListarCategoria.jsp");
		rd.forward(request, response);
	}
	
}
