package model;

public class usuario {
	
	private String login;
	private String senha;
	private String permissao;
		

	//M�todo construtor completo
	public usuario(String login, String senha, String permissao) {
		super();
		this.login = login;
		this.senha = senha;
		this.permissao = permissao;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getPermissao() {
		return permissao;
	}

	public void setPermissao(String permissao) {
		this.permissao = permissao;
	}
	
	
	
}
