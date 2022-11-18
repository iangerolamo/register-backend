package com.ig.registerbackend.service;

import com.ig.registerbackend.model.Aposta;
import com.ig.registerbackend.model.Usuario;
import com.ig.registerbackend.model.dto.EstatisticaDTO;
import com.ig.registerbackend.repository.ApostaRepository;
import com.ig.registerbackend.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Optional;

@Service
public class ApostaService {

  @Autowired private ApostaRepository apostaRepository;

  @Autowired
  private UsuarioRepository usuarioRepository;

  public List<Aposta> obterApostaPorIdUsuario(Long id) {
    return apostaRepository.findApostaByUsuarioId(id);
  }

  public List<Aposta> obterApostaPorTimeCoracaoUsuario(String timeCoracao) {
      Optional<Usuario> usuario = usuarioRepository.findByTimeCoracao(timeCoracao);

      return apostaRepository.findApostaByUsuarioId(usuario.get().getId());
  }

  public EstatisticaDTO obterEstatisticaPorIdUsuario(Long id) {
    List<Aposta> apostas = apostaRepository.findApostaByUsuarioId(id);

    EstatisticaDTO estatisticaDTO = new EstatisticaDTO();

    Integer quantidadeDeApostasRealizadas = apostas.size();

    BigDecimal lucro = new BigDecimal(0);
    BigDecimal valorTotalApostado = new BigDecimal(0);
    BigDecimal valorGanhoApostado = new BigDecimal(0);
    BigDecimal valorPerdidoApostado = new BigDecimal(0);
    BigDecimal oddTotal = new BigDecimal(0);
    int quantidadeDeApostasGanhas = 0;
    int quantidadeDeApostasPerdidas = 0;

    for (Aposta aposta : apostas) {

      oddTotal = aposta.getOdd().add(oddTotal);

      if (aposta.getLucro().compareTo(new BigDecimal(0)) > 0) {
        quantidadeDeApostasGanhas += 1;
        valorGanhoApostado =
            valorGanhoApostado
                .add(aposta.getAposta().multiply(aposta.getOdd()))
                .subtract(aposta.getAposta());
      } else {
        quantidadeDeApostasPerdidas += 1;
        valorPerdidoApostado = valorPerdidoApostado.add(aposta.getAposta());
      }

      lucro = lucro.add(aposta.getLucro());
      valorTotalApostado = valorTotalApostado.add(aposta.getAposta());
    }

    BigDecimal oddMedia = oddTotal.divide(BigDecimal.valueOf(apostas.size()), RoundingMode.HALF_UP);

    BigDecimal roi =
        ((valorGanhoApostado.subtract(valorPerdidoApostado))
            .divide(valorTotalApostado, 2, RoundingMode.HALF_UP)
            .multiply(new BigDecimal(100)));

    estatisticaDTO.setQuantidadeDeApostasRealizadas(quantidadeDeApostasRealizadas);
    estatisticaDTO.setLucro(lucro);
    estatisticaDTO.setValorTotalApostado(valorTotalApostado);
    estatisticaDTO.setValorGanhoApostado(valorGanhoApostado);
    estatisticaDTO.setQuantidadeDeApostasGanhas(quantidadeDeApostasGanhas);
    estatisticaDTO.setQuantidadeDeApostasPerdidas(quantidadeDeApostasPerdidas);
    estatisticaDTO.setValorPerdidoApostado(valorPerdidoApostado);
    estatisticaDTO.setRoi(roi);
    estatisticaDTO.setOddMedia(oddMedia);

    return estatisticaDTO;
  }
}
