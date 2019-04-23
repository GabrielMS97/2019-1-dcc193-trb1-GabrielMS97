package br.ufjf.dcc193.trb1.models;

public class Sede{
    private String nome;
    private String estado;
    private String cidade;
    private String bairro;
    private String telefone;
    private String enderecoWeb;

    public Sede(){
        
    }

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return this.cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getBairro() {
		return this.bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getTelefone() {
		return this.telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEnderecoWeb() {
		return this.enderecoWeb;
	}

	public void setEnderecoWeb(String enderecoWeb) {
		this.enderecoWeb = enderecoWeb;
	}



}