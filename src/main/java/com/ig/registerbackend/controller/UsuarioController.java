package com.ig.registerbackend.controller;

import com.ig.registerbackend.model.dto.UsuarioDTO;
import com.ig.registerbackend.model.Usuario;
import com.ig.registerbackend.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.transaction.Transactional;
import javax.websocket.server.PathParam;
import java.net.URI;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @Autowired
    private BCryptPasswordEncoder pe;

    @GetMapping
    public List<Usuario> obterTodosUsuarios() {
        return usuarioService.obterTodosUsuarios();
    }

    @GetMapping("/{timeCoracao}")
    public Optional<Usuario> obterUsuarioPorTimeCoracao(@PathVariable String timeCoracao) {
        return usuarioService.obterUsuarioPorTimeCoracao(timeCoracao);
    }

    @PostMapping
    @Transactional
    public ResponseEntity<UsuarioDTO> criarUsuario(@RequestBody UsuarioDTO usuarioDTO) {

        Usuario usuario = usuarioService.fromDTO(usuarioDTO);
        usuario = usuarioService.criarUsuario(usuario);

        URI uri = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}").buildAndExpand(usuario.getId()).toUri();
        return ResponseEntity.created(uri).build();

    }


}
