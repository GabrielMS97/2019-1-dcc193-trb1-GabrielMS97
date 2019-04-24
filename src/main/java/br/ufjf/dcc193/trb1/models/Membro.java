package br.ufjf.dcc193.trb1.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Membro {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String nome;
    private String funcao;
    private String email;
    private String entrada;
    private String saida;

    public Membro(){}

    public Membro(String nome, String funcao, String email, String entrada, String saida){
        this.nome = nome;
        this.funcao = funcao;
        this.email = email;
        this.entrada = entrada;
        this.saida = saida;
    }

    public String getEntrada() {
        return this.entrada;
    }

    public void setEntrada(String entrada) {
        this.entrada = entrada;
    }

    public String getSaida() {
        return this.saida;
    }

    public void setSaida(String saida) {
        this.saida = saida;
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

    public String getFuncao() {
        return this.funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}