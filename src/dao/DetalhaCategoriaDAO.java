package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Filme;

public class DetalhaCategoriaDAO {

	private Connection conexao;
	public String categoria;

	public DetalhaCategoriaDAO(Connection conexao){
		this.conexao = conexao;
	}
	
	public ArrayList<Filme> getTodosFilmesPorCategoria(String categoria){
		
		PreparedStatement ps = null;
		ArrayList<Filme> filmes = new ArrayList<Filme>();

		this.categoria = categoria;
	
		try{
			
			ps = conexao.prepareStatement("select * from filme where filme.genero like ?");
			ps.setString(1, "%" + categoria + "%");
			
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				
				filmes.add(new Filme(rs.getInt("idFilme"),rs.getString("titulo"), rs.getString("sinopse"), rs.getString("genero"), rs.getInt("classificacao"), 
						   rs.getDouble("avaliacao"), rs.getInt("duracao"), rs.getDate("datalancamento")));
			}
			
			ps.close();
			rs.close();
			
		}catch(Exception e){
			
		}
		

		
		return filmes;
		


	}
}
