package com.ig.registerbackend.model.dto;

import org.springframework.beans.factory.annotation.Value;

public class TokenDTO {
    private String token;
    private String tipo;
    private String  expiration;

    public TokenDTO(String token, String tipo, String expiration) {
        this.token = token;
        this.tipo = tipo;
        this.expiration = expiration;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getExpiration() {
        return expiration;
    }

    public void setExpiration(String expiration) {
        this.expiration = expiration;
    }
}
