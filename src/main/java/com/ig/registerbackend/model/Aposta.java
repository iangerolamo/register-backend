package com.ig.registerbackend.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
public class Aposta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String evento;
    private LocalDate dataEvento;
    private String esporte;
    private String competicao;
    private String mercado;
    private BigDecimal aposta;
    private BigDecimal lucro;
    private BigDecimal odd;

    @ManyToOne
    @JoinColumn(name="usuario_id")
    private Usuario usuario;

    public Aposta() {
    }

    public Aposta(Long id,
                  String evento,
                  LocalDate dataEvento,
                  String esporte,
                  String competicao,
                  String mercado,
                  BigDecimal aposta,
                  BigDecimal lucro,
                  BigDecimal odd,
                  Usuario usuario
    ) {
        this.id = id;
        this.evento = evento;
        this.dataEvento = dataEvento;
        this.esporte = esporte;
        this.competicao = competicao;
        this.mercado = mercado;
        this.aposta = aposta;
        this.lucro = lucro;
        this.odd = odd;
        this.usuario = usuario;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEvento() {
        return evento;
    }

    public void setEvento(String evento) {
        this.evento = evento;
    }

    public LocalDate getDataEvento() {
        return dataEvento;
    }

    public void setDataEvento(LocalDate dataEvento) {
        this.dataEvento = dataEvento;
    }

    public String getEsporte() {
        return esporte;
    }

    public void setEsporte(String esporte) {
        this.esporte = esporte;
    }

    public String getCompeticao() {
        return competicao;
    }

    public void setCompeticao(String competicao) {
        this.competicao = competicao;
    }

    public String getMercado() {
        return mercado;
    }

    public void setMercado(String mercado) {
        this.mercado = mercado;
    }

    public BigDecimal getAposta() {
        return aposta;
    }

    public void setAposta(BigDecimal aposta) {
        this.aposta = aposta;
    }

    public BigDecimal getLucro() {
        return lucro;
    }

    public void setLucro(BigDecimal lucro) {
        this.lucro = lucro;
    }

    public BigDecimal getOdd() {
        return odd;
    }

    public void setOdd(BigDecimal odd) {
        this.odd = odd;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
