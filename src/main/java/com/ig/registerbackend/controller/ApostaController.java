package com.ig.registerbackend.controller;

import com.ig.registerbackend.model.dto.ApostaDTO;
import com.ig.registerbackend.model.Aposta;
import com.ig.registerbackend.model.dto.EstatisticaDTO;
import com.ig.registerbackend.service.ApostaService;
import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ApostaController {

  @Autowired private ApostaService apostaService;

  @GetMapping("/aposta/{id}")
  List<ApostaDTO> obterApostaPorIdUsuario(@PathVariable Long id) {

    List<Aposta> apostas = apostaService.obterApostaPorIdUsuario(id);

    ModelMapper modelMapper = new ModelMapper();

    List<ApostaDTO> apostaDTOList =
        modelMapper.map(apostas, new TypeToken<List<ApostaDTO>>() {}.getType());

    return apostaDTOList;
  }

  @GetMapping("/apostas/time")
  List<ApostaDTO> obterApostaPorTimeCoracao(@RequestParam String timeCoracao) {

    System.out.println(timeCoracao);

    List<Aposta> apostas = apostaService.obterApostaPorTimeCoracaoUsuario(timeCoracao);

    ModelMapper modelMapper = new ModelMapper();

    List<ApostaDTO> apostaDTOList =
            modelMapper.map(apostas, new TypeToken<List<ApostaDTO>>() {}.getType());

    return apostaDTOList;
  }

  @GetMapping("/estatistica/{id}")
  EstatisticaDTO obterEstatisticaPorIdUsuario(@PathVariable Long id) {
    return apostaService.obterEstatisticaPorIdUsuario(id);
  }
}
