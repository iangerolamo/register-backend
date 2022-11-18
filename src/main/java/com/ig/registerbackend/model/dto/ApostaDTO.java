package com.ig.registerbackend.model.dto;

import java.math.BigDecimal;
import java.time.LocalDate;

public class ApostaDTO {

  private Long id;
  private String evento;
  private LocalDate dataEvento;
  private String esporte;
  private String competicao;
  private String mercado;
  private BigDecimal aposta;
  private BigDecimal lucro;
  private BigDecimal odd;

  public ApostaDTO() {}

  public ApostaDTO(
      Long id,
      String evento,
      LocalDate dataEvento,
      String esporte,
      String competicao,
      String mercado,
      BigDecimal aposta,
      BigDecimal lucro,
      BigDecimal odd) {
    this.id = id;
    this.evento = evento;
    this.dataEvento = dataEvento;
    this.esporte = esporte;
    this.competicao = competicao;
    this.mercado = mercado;
    this.aposta = aposta;
    this.lucro = lucro;
    this.odd = odd;
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
}
