package model;

public class Categoria {
	
	private int idCategoria;
	private int idFilme;
	private String nome;
	
	public Categoria(int idCategoria, int idFilme, String nome) {
		this.idCategoria = idCategoria;
		this.idFilme = idFilme;
		this.nome = nome;
	}

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
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
	
}
