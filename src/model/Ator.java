package model;

import java.sql.Date;

public class Ator {

	private int idAtor;
	private int idFilme;
	private String nome;
	private String biografia;
	private Date datanasci;
	
	public Ator(int idAtor, int idFilme, String nome, String biografia, Date datanasci) {
		this.idAtor = idAtor;
		this.idFilme = idFilme;
		this.nome = nome;
		this.biografia = biografia;
		this.datanasci = datanasci;
	}

	public int getIdAtor() {
		return idAtor;
	}

	public void setIdAtor(int idAtor) {
		this.idAtor = idAtor;
	}

	public int getIdFilme() {
		return idFilme;
	}

	public void setIdFilme(int idFilme) {
		this.idFilme = idFilme;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}

	public Date getDatanasci() {
		return datanasci;
	}

	public void setDatanasci(Date datanasci) {
		this.datanasci = datanasci;
	}
	
	
}
