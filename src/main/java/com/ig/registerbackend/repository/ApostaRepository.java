package com.ig.registerbackend.repository;

import com.ig.registerbackend.model.Aposta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ApostaRepository extends JpaRepository<Aposta, Long> {

    @Transactional(readOnly = true)
    List<Aposta> findApostaByUsuarioId(Long id);

}
