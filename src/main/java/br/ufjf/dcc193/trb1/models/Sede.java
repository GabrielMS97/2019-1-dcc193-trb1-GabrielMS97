package br.ufjf.dcc193.trb1.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sede{
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long id;

    private String nome;
    private String estado;
    private String cidade;
    private String bairro;
    private String telefone;
	private String enderecoWeb;
	private int totalHorasA;
	private int totalHorasJ;
	private int totalHorasE;
	private int totalHorasF;

    public Sede(){
        
	}

	public Sede(String nome, String estado, String cidade, String bairro, String telefone, String enderecoWeb){
		this.nome = nome;
		this.estado = estado;
		this.cidade = cidade;
		this.bairro = bairro;
		this.telefone = telefone;
		this.enderecoWeb = enderecoWeb;
	}
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
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

	@Override
	public String toString(){
		return this.id + " - " + this.nome + "  " + this.cidade;
	}

	public int getTotalHorasA() {
		return this.totalHorasA;
	}

	public void setTotalHorasA(int totalHorasA) {
		this.totalHorasA = totalHorasA;
	}

	public int getTotalHorasJ() {
		return this.totalHorasJ;
	}

	public void setTotalHorasJ(int totalHorasJ) {
		this.totalHorasJ = totalHorasJ;
	}

	public int getTotalHorasE() {
		return this.totalHorasE;
	}

	public void setTotalHorasE(int totalHorasE) {
		this.totalHorasE = totalHorasE;
	}

	public int getTotalHorasF() {
		return this.totalHorasF;
	}

	public void setTotalHorasF(int totalHorasF) {
		this.totalHorasF = totalHorasF;
	}

}