package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Filme;

public class ListarFilmesDAO {

private Connection conexao;
	
	public ListarFilmesDAO(Connection conexao){
		this.conexao = conexao;
	}
	
public ArrayList<Filme> getTodosFilmes(){
		
		PreparedStatement ps = null;
		ArrayList<Filme> filmes = new ArrayList<Filme>();
		
		try{
			
			ps = conexao.prepareStatement("SELECT * FROM filme");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				filmes.add(new Filme(rs.getInt("idfilme"),rs.getString("titulo"), rs.getString("sinopse"), rs.getString("genero"), rs.getInt("classificacao"), 
						   rs.getDouble("avaliacao"), rs.getInt("duracao"), rs.getDate("datalancamento")));
			}
			
			rs.close();
			ps.close();
			
		}catch(Exception e){
			
		}
		
		return filmes;
		
	}
	
	
}
