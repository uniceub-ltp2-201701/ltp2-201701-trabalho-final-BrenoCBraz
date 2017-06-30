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
			
			ps = conexao.prepareStatement("update lokurafilmes.filme set titulo=?,genero=?,classificacao=?,avaliacao=?,duracao=?,sinopse=?, datalancamento=? where idfilme = ?");
			ps.setString(1, titulo);
			ps.setString(2, genero);
			ps.setInt(3, classificacao);
			ps.setDouble(4, avaliacao);
			ps.setInt(5, duracao);
			ps.setString(6, sinopse);
			ps.setDate(7, datalancamento);
			ps.setInt(8, idfilme);
			
			
			ps.executeUpdate();

			ps.close();
			resultado = true;
		}catch(Exception e){
			
		}
		
		return resultado;
	}
}
