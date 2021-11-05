package model;

public class ongs {

	private int id;
	private String nome;
	private String nomeFantasia;
	private Double conta;
	private Double agencia;
	private Double telefone;
	
	public ongs(int id, String nome, String nomeFantasia, Double conta, Double agencia, Double telefone) {
		super();
		this.id = id;
		this.nome = nome;
		this.nomeFantasia = nomeFantasia;
		this.conta = conta;
		this.agencia = agencia;
		this.telefone = telefone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public Double getConta() {
		return conta;
	}

	public void setConta(Double conta) {
		this.conta = conta;
	}

	public Double getAgencia() {
		return agencia;
	}

	public void setAgencia(Double agencia) {
		this.agencia = agencia;
	}

	public Double getTelefone() {
		return telefone;
	}

	public void setTelefone(Double telefone) {
		this.telefone = telefone;
	}
	
	
	
}
