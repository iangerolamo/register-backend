package com.ig.registerbackend.security;

import com.ig.registerbackend.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.Arrays;

@EnableWebSecurity
@Configuration
public class SecurityConfigurations extends WebSecurityConfigurerAdapter {

  @Autowired private UsuarioRepository usuarioRepository;

  @Autowired private AutenticacaoService autenticacaoService;

  @Autowired private TokenService tokenService;

  @Bean
  public BCryptPasswordEncoder bCryptPasswordEncoder() {
    return new BCryptPasswordEncoder();
  }

  @Override
  @Bean
  protected AuthenticationManager authenticationManager() throws Exception {
    return super.authenticationManager();
  }

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(autenticacaoService).passwordEncoder(new BCryptPasswordEncoder());
  }

  private static final String[] PUBLIC_MATCHERS_GET = {"/usuarios"};

  private static final String[] PUBLIC_MATCHERS_POST = {"/usuarios", "/auth"};

  private static final String[] PUBLIC_MATCHERS = {"/h2-console/**"};

  protected void configure(HttpSecurity httpSecurity) throws Exception {
    httpSecurity
        .headers()
        .frameOptions()
        .disable()
        .and()
        .authorizeRequests()
        .antMatchers(HttpMethod.POST, PUBLIC_MATCHERS_POST)
        .permitAll()
        .antMatchers(HttpMethod.GET, PUBLIC_MATCHERS_GET)
        .permitAll()
        .antMatchers(PUBLIC_MATCHERS)
        .permitAll()
        .anyRequest()
        .authenticated()
        .and()
        .csrf()
        .disable()
        .sessionManagement()
        .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
        .and()
        .addFilterBefore(
            new AutenticacaoViaTokenFilter(tokenService, usuarioRepository),
            UsernamePasswordAuthenticationFilter.class);
  }

  @Override
  public void configure(WebSecurity web) throws Exception {}

  @Bean
  CorsConfigurationSource corsConfigurationSource() {
    CorsConfiguration configuration = new CorsConfiguration().applyPermitDefaultValues();
    configuration.setAllowedMethods(Arrays.asList("POST", "GET", "PUT", "DELETE", "OPTIONS"));
    final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
    source.registerCorsConfiguration("/**", configuration);
    return source;
  }
}
