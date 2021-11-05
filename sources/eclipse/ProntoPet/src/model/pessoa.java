package model;

public class pessoa {
	
	private int id;
	private int idade;
	private String nome;
	private String nomaApelido;
	
	public pessoa(int id, int idade, String nome, String nomaApelido) {
		super();
		this.id = id;
		this.idade = idade;
		this.nome = nome;
		this.nomaApelido = nomaApelido;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNomaApelido() {
		return nomaApelido;
	}

	public void setNomaApelido(String nomaApelido) {
		this.nomaApelido = nomaApelido;
	}
	
	

}
