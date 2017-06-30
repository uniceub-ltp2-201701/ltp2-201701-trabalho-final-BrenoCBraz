package control;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.Conexao;
import dao.DetalhaFilmeDAO;
import dao.EditarFilmeDAO;
import model.Filme;
import static java.lang.System.out;

@WebServlet("/editarFilme")
public class ServletEditarFilme extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletEditarFilme() {
        super();
      
    }
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		Connection conexao = Conexao.getConexao();

		EditarFilmeDAO efd = new EditarFilmeDAO(conexao);
		
		String idfilme = request.getParameter("idfilme");
		
		DetalhaFilmeDAO dfd = new DetalhaFilmeDAO(conexao);
		
		Filme f = dfd.getFilme(idfilme);
		
		out.println(f.getTitulo());
		
		String titulo = request.getParameter("titulo");
		
		if(titulo.equals("")){
			titulo = f.getTitulo();
		}
		
		String sinopse = request.getParameter("sinopse");
		
		if(sinopse.equals("")){
			sinopse = f.getSinopse();
		}
		
		String genero = request.getParameter("genero");
		
		if(genero.equals("")){
			genero = f.getGenero();
		}
		
		String c = request.getParameter("classificacao");

		int classificacao = 0;
		
		
		if(c.equals("")){
			classificacao = f.getClassificacao();
		}else{
			classificacao = Integer.parseInt(c);
		}
		
		String a = request.getParameter("avaliacao");
		double avaliacao = 0;
		
		if(a.equals("")){
			avaliacao = f.getAvaliacao();
		}else{
			avaliacao = Double.parseDouble(a);
		}
		
		String b = request.getParameter("duracao");
		int duracao = 0;
		
		if(b.equals("")){
			duracao = f.getDuracao();
		}else{
			duracao = Integer.parseInt(b);
		}
		
		String lancamento = request.getParameter("datalancamento");
		
		java.sql.Date sqlDate = null;
		
		if(lancamento.equals("")){
			sqlDate = f.getDatalancamento();
		}else{
			sqlDate = java.sql.Date.valueOf(lancamento);
		}

		boolean resultado = efd.editarFilme(titulo, sinopse, genero, classificacao, avaliacao, duracao, sqlDate, f.getIdFilme());
		
		if(resultado){
			request.setAttribute("idfilme", idfilme);
			request.setAttribute("filme", f);
			RequestDispatcher rd = request.getRequestDispatcher("/detalhaFilme");
			rd.forward(request, response);
		}else{
			request.setAttribute("mensagem", "Erro inesperado,Filme não editado.");
			request.setAttribute("filme", f);
			RequestDispatcher rd = request.getRequestDispatcher("/respostaEditarFilme.jsp");
			rd.forward(request, response);
		}
		
	}

}
