package br.ufjf.dcc193.trb1.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Atividade {
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long id;
	
    private String titulo;
    private String descricao;
    private String inicio;
    private String fim;
    private int horasAssistencial;
    private int horasJuridica;
    private int horasFinanceira;
    private int horasExecutiva;

    public Atividade(){}

    public Atividade(String titulo, String descricao, String inicio, String fim, int horasAssistencial, int horasJuridica, int horasFinanceira, int horasExecutiva){
        this.titulo = titulo;
        this.descricao = descricao;
        this.inicio = inicio;
        this.fim = fim;
        this.horasAssistencial = horasAssistencial;
        this.horasExecutiva = horasExecutiva;
        this.horasFinanceira = horasFinanceira;
        this.horasJuridica = horasJuridica;
    }

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getInicio() {
		return this.inicio;
	}

	public void setInicio(String inicio) {
		this.inicio = inicio;
	}

	public String getFim() {
		return this.fim;
	}

	public void setFim(String fim) {
		this.fim = fim;
	}

	public int getHorasAssistencial() {
		return this.horasAssistencial;
	}

	public void setHorasAssistencial(int horasAssistencial) {
		this.horasAssistencial = horasAssistencial;
	}

	public int getHorasJuridica() {
		return this.horasJuridica;
	}

	public void setHorasJuridica(int horasJuridica) {
		this.horasJuridica = horasJuridica;
	}

	public int getHorasFinanceira() {
		return this.horasFinanceira;
	}

	public void setHorasFinanceira(int horasFinanceira) {
		this.horasFinanceira = horasFinanceira;
	}

	public int getHorasExecutiva() {
		return this.horasExecutiva;
	}

	public void setHorasExecutiva(int horasExecutiva) {
		this.horasExecutiva = horasExecutiva;
	}



}