package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Diretor;
import model.Filme;

public class DetalhaDiretorDAO {

	private Connection conexao;

	public DetalhaDiretorDAO(Connection conexao){
		this.conexao = conexao;
	}

	public Diretor getDiretor(String idDiretor){

		PreparedStatement ps = null;

		Diretor a = null;

		try{

			ps = conexao.prepareStatement("select * from diretor where iddiretor = ?");
			ps.setInt(1, Integer.parseInt(idDiretor));

			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				a = new Diretor(rs.getInt("iddiretor"), rs.getInt("idfilme"), rs.getString("nome"), rs.getString("biografia"), rs.getDate("datanasci"));
			}

			ps.close();
			rs.close();

		}catch(Exception e){

		}

		return a;

	}

	public ArrayList<Filme> getFilmesPorDiretor(String idDiretor){

		PreparedStatement ps = null;
		ArrayList<Filme> filmes = new ArrayList<Filme>();
		ResultSet rs = null;

		try{

			ps = conexao.prepareStatement("select filme.idfilme, filme.titulo, filme.sinopse, filme.genero, filme.classificacao, filme.avaliacao, filme.duracao, filme.datalancamento from filme, diretor where diretor.iddiretor = ? and filme.idfilme = diretor.idfilme");
			ps.setInt(1, Integer.parseInt(idDiretor));
			
			rs = ps.executeQuery();

			while(rs.next()){
				filmes.add(new Filme(rs.getInt("idfilme"), rs.getString("titulo"), rs.getString("sinopse"), rs.getString("genero"), rs.getInt("classificacao"), rs.getDouble("avaliacao"), rs.getInt("duracao"), rs.getDate("datalancamento")));
			}

			rs.close();
			ps.close();

		}catch(Exception e){

		}

		return filmes;

	}
	
}
