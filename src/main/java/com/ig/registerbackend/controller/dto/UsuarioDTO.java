package com.ig.registerbackend.controller.dto;

public class UsuarioDTO {

    private String nome;
    private String email;
    private String senha;

    public UsuarioDTO() {
    }

    public UsuarioDTO(String nome,
                      String email,
                      String senha) {
        this.nome = nome;
        this.email = email;
        this.senha = senha;
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
}
