package model;

import java.sql.Date;

public class Diretor {

	private int idDiretor;
	private int idFilme;
	private String nome;
	private String biografia;
	private Date datanasci;
	
	public Diretor(int idDiretor, int idFilme, String nome, String biografia, Date datanasci) {
		this.idDiretor = idDiretor;
		this.idFilme = idFilme;
		this.nome = nome;
		this.biografia = biografia;
		this.datanasci = datanasci;
	}

	public int getIdDiretor() {
		return idDiretor;
	}

	public void setIdDiretor(int idDiretor) {
		this.idDiretor = idDiretor;
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
