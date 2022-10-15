package com.ig.registerbackend.service;

import com.ig.registerbackend.controller.dto.UsuarioDTO;
import com.ig.registerbackend.model.Usuario;
import com.ig.registerbackend.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private BCryptPasswordEncoder pe;

    public List<Usuario> obterTodosUsuarios() {
        return usuarioRepository.findAll();
    }

    public Usuario criarUsuario(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }

    public Usuario fromDTO(UsuarioDTO usuarioDTO) {

        Usuario usuario = new Usuario(
                null,
                usuarioDTO.getNome(),
                usuarioDTO.getEmail(),
                pe.encode(usuarioDTO.getSenha())
        );

        return usuario;

    }

}
