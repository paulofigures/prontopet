package controller;

import model.usuario;
import model.pessoa;

public class gerenciamentoUsuario {
	
	public static void main(String[] args) {
		
		usuario u1 = new usuario("paulofigures", "teste123", "master");
		pessoa p1 = new pessoa(01, 12, "Paulo Xavier", "Paulinho");
		
		System.out.println("---------Dados de Login---------" + "\n");
		System.out.println("Login: " + u1.getLogin());
		System.out.println("Permiss�o: " + u1.getPermissao());
		System.out.println("Senha de acesso: " + u1.getSenha() + "\n");
		System.out.println("---------Dados de Pessoais---------" + "\n");
		System.out.println("Idade: " + p1.getIdade());
		System.out.println("Nome Completo: " + p1.getNome());
		System.out.println("Apelido: " + p1.getNomaApelido() + "\n");

	}
}
