package com.ig.registerbackend.controller;

import com.ig.registerbackend.controller.dto.TokenDTO;
import com.ig.registerbackend.controller.form.LoginForm;
import com.ig.registerbackend.model.Usuario;
import com.ig.registerbackend.security.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.security.core.AuthenticationException;

@RestController
@RequestMapping("/auth")
public class AutenticacaoController {

  @Autowired private AuthenticationManager authenticationManager;

  @Autowired private TokenService tokenService;

  @PostMapping
  public ResponseEntity<TokenDTO> autenticar(@RequestBody LoginForm loginForm) {
    UsernamePasswordAuthenticationToken dadosLogin = loginForm.converter();

    try {
      Authentication authentication = authenticationManager.authenticate(dadosLogin);
      String token = tokenService.gerarToken(authentication);
      return ResponseEntity.ok(new TokenDTO(token, "Bearer"));

    } catch (AuthenticationException e) {
      return ResponseEntity.badRequest().build();
    }
  }
}
