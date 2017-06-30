package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class EditarFilmeDAO {
	
	private Connection conexao;
	
	public EditarFilmeDAO(Connection conexao){
		this.conexao = conexao;
	}

	public boolean editarFilme(String titulo, String sinopse, String genero,int classificacao, double avaliacao,int duracao, Date datalancamento, int idfilme){
		PreparedStatement ps = null;
		boolean resultado = false;
		
		try{
			
			ps = conexao.prepareStatement("update lokurafilmes.filme set titulo=?,sinopse=?,genero=?,classificacao=?,avaliacao=?,duracao=?,datalancamento=? where idfilme = ?");
			ps.setString(1, titulo);
			ps.setString(2, sinopse);
			ps.setString(3, genero);
			ps.setInt(4, classificacao);
			ps.setDouble(5, avaliacao);
			ps.setInt(6, duracao);
			ps.setDate(7, datalancamento);
			ps.setInt(8, idfilme);
			
			
			ps.executeUpdate();

			ps.close();
			resultado = true;
		}catch(Exception e){
		e.printStackTrace();	
		}
		
		return resultado;
	}
}
