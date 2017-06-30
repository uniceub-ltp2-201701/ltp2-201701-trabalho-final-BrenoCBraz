package model;

import java.sql.Date;

public class Filme {

	private int idFilme;
	private String titulo;
	private String sinopse;
	private String genero;
	private int classificacao;
	private double avaliacao;
	private int duracao;
	private Date datalancamento;
	
	public Filme(int idFilme, String titulo, String sinopse, String genero, int classificacao, double avaliacao,
			int duracao, Date datalancamento) {
		this.idFilme = idFilme;
		this.titulo = titulo;
		this.sinopse = sinopse;
		this.genero = genero;
		this.classificacao = classificacao;
		this.avaliacao = avaliacao;
		this.duracao = duracao;
		this.datalancamento = datalancamento;
	}

	public int getIdFilme() {
		return idFilme;
	}

	public void setIdFilme(int idFilme) {
		this.idFilme = idFilme;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public int getClassificacao() {
		return classificacao;
	}

	public void setClassificacao(int classificacao) {
		this.classificacao = classificacao;
	}

	public double getAvaliacao() {
		return avaliacao;
	}

	public void setAvaliacao(double avaliacao) {
		this.avaliacao = avaliacao;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

	public Date getDatalancamento() {
		return datalancamento;
	}

	public void setDatalancamento(Date datalancamento) {
		this.datalancamento = datalancamento;
	}
	
	
}
