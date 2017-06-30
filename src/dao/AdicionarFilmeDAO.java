package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class AdicionarFilmeDAO {
	
	private Connection conexao;
	
	public AdicionarFilmeDAO(Connection conexao){
		this.conexao = conexao;
	}
	
	public boolean adicionarFilme(String titulo, String sinopse, String genero, int classificacao, double avaliacao, int duracao, Date datalancamento){
		
		PreparedStatement ps = null;
		boolean resultado = false;
		
		try{
			
			ps = conexao.prepareStatement("insert into filme (titulo,sinopse,genero,classificacao,avaliacao,duracao,datalancamento)"
					+ "values (?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, titulo);
			ps.setString(2, sinopse);
			ps.setString(3, genero);
			ps.setInt(4, classificacao);
			ps.setDouble(5, avaliacao);
			ps.setInt(6, duracao);
			ps.setDate(7, datalancamento);
			
			ps.executeUpdate();
			
			ps.close();
			resultado = true;
			
		}catch(Exception e){
			
		}
		
		return resultado;
	}

}
