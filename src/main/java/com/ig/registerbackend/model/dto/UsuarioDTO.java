package com.ig.registerbackend.model.dto;

public class UsuarioDTO {

    private String nome;
    private String email;
    private String senha;
    private String timeCoracao;

    public UsuarioDTO() {
    }

    public UsuarioDTO(String nome,
                      String email,
                      String senha,
                      String timeCoracao) {
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.timeCoracao = timeCoracao;
    }

    public String getNome() {
        return nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTimeCoracao() {
        return timeCoracao;
    }

    public void setTimeCoracao(String timeCoracao) {
        this.timeCoracao = timeCoracao;
    }
}
