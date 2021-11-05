package model;

import java.sql.Date;

public class vacina {

	int id;
	String nome;
	String loja;
	animal animal;
	Date dataProximaAplicacao;
	
	public vacina(int id, String nome, String loja, model.animal animal, model.Date dataProximaAplicacao) {
		super();
		this.id = id;
		this.nome = nome;
		this.loja = loja;
		this.animal = animal;
		this.dataProximaAplicacao = dataProximaAplicacao;
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

	public String getLoja() {
		return loja;
	}

	public void setLoja(String loja) {
		this.loja = loja;
	}

	public animal getAnimal() {
		return animal;
	}

	public void setAnimal(animal animal) {
		this.animal = animal;
	}

	public Date getDataProximaAplicacao() {
		return dataProximaAplicacao;
	}

	public void setDataProximaAplicacao(Date dataProximaAplicacao) {
		this.dataProximaAplicacao = dataProximaAplicacao;
	}
	
	
	
	
}
