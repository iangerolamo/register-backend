package com.ig.registerbackend.model.dto;

import java.math.BigDecimal;

public class EstatisticaDTO {

  private BigDecimal lucro;
  private Integer quantidadeDeApostasRealizadas;
  private BigDecimal valorTotalApostado;
  private Integer quantidadeDeApostasGanhas;
  private Integer quantidadeDeApostasPerdidas;
  private BigDecimal valorGanhoApostado;
  private BigDecimal valorPerdidoApostado;
  private BigDecimal roi;
  private BigDecimal oddMedia;

  public EstatisticaDTO() {}

  public EstatisticaDTO(
      BigDecimal lucro,
      Integer quantidadeDeApostasRealizadas,
      BigDecimal valorTotalApostado,
      Integer quantidadeDeApostasGanhas,
      Integer quantidadeDeApostasPerdidas,
      BigDecimal valorGanhoApostado,
      BigDecimal valorPerdidoApostado,
      BigDecimal roi,
      BigDecimal oddMedia) {
    this.lucro = lucro;
    this.quantidadeDeApostasRealizadas = quantidadeDeApostasRealizadas;
    this.valorTotalApostado = valorTotalApostado;
    this.quantidadeDeApostasGanhas = quantidadeDeApostasGanhas;
    this.quantidadeDeApostasPerdidas = quantidadeDeApostasPerdidas;
    this.valorGanhoApostado = valorGanhoApostado;
    this.valorPerdidoApostado = valorPerdidoApostado;
    this.roi = roi;
    this.oddMedia = oddMedia;
  }

  public BigDecimal getLucro() {
    return lucro;
  }

  public void setLucro(BigDecimal lucro) {
    this.lucro = lucro;
  }

  public Integer getQuantidadeDeApostasRealizadas() {
    return quantidadeDeApostasRealizadas;
  }

  public void setQuantidadeDeApostasRealizadas(Integer quantidadeDeApostasRealizadas) {
    this.quantidadeDeApostasRealizadas = quantidadeDeApostasRealizadas;
  }

  public BigDecimal getValorTotalApostado() {
    return valorTotalApostado;
  }

  public void setValorTotalApostado(BigDecimal valorTotalApostado) {
    this.valorTotalApostado = valorTotalApostado;
  }

  public Integer getQuantidadeDeApostasGanhas() {
    return quantidadeDeApostasGanhas;
  }

  public void setQuantidadeDeApostasGanhas(Integer quantidadeDeApostasGanhas) {
    this.quantidadeDeApostasGanhas = quantidadeDeApostasGanhas;
  }

  public Integer getQuantidadeDeApostasPerdidas() {
    return quantidadeDeApostasPerdidas;
  }

  public void setQuantidadeDeApostasPerdidas(Integer quantidadeDeApostasPerdidas) {
    this.quantidadeDeApostasPerdidas = quantidadeDeApostasPerdidas;
  }

  public BigDecimal getValorGanhoApostado() {
    return valorGanhoApostado;
  }

  public void setValorGanhoApostado(BigDecimal valorGanhoApostado) {
    this.valorGanhoApostado = valorGanhoApostado;
  }

  public BigDecimal getValorPerdidoApostado() {
    return valorPerdidoApostado;
  }

  public void setValorPerdidoApostado(BigDecimal valorPerdidoApostado) {
    this.valorPerdidoApostado = valorPerdidoApostado;
  }

  public BigDecimal getRoi() {
    return roi;
  }

  public void setRoi(BigDecimal roi) {
    this.roi = roi;
  }

  public BigDecimal getOddMedia() {
    return oddMedia;
  }

  public void setOddMedia(BigDecimal oddMedia) {
    this.oddMedia = oddMedia;
  }
}
