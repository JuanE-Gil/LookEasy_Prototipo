package com.bezkoder.springjwt.security.services;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.bezkoder.springjwt.models.User;
import com.fasterxml.jackson.annotation.JsonIgnore;

/*Presenta los detalles del usuario para la autentificacion y autorizacion*/
public class UserDetailsImpl implements UserDetails {
  private static final long serialVersionUID = 1L;

  private Long id;

  private String username;
  
  private String lastname;

  private String email;
  

  @JsonIgnore
  private String password;
  

  private Collection<? extends GrantedAuthority> authorities;
/*Esta diseñado para inicializar sus campos con los valores proporcionado*/
  public UserDetailsImpl(Long id, String username, String lastname, String email, String password ,
      Collection<? extends GrantedAuthority> authorities) {
    this.id = id;
    this.username = username;
    this.lastname = lastname;
    this.email = email;
    this.password = password;
    this.authorities = authorities;
  }

  /* construye y devuelve una instancia basada en un objeto `User` proporcionado.Extrae informacion relevante, construye 
   * una instacion con esa informacion*/
  
  public static UserDetailsImpl build(User user) {
    List<GrantedAuthority> authorities = user.getRoles().stream()
        .map(role -> new SimpleGrantedAuthority(role.getName().name()))
        .collect(Collectors.toList());

    return new UserDetailsImpl(
        user.getId(), 
        user.getUsername(),
        user.getLastname(),
        user.getEmail(),
        user.getPassword(),
        authorities);
  }
  /*recupera la coleccion de autoridades(roles y permisos) asociadas con un usuario*/
  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    return authorities;
  }

  /*Estoy metodos son importantes para permitir que otras partes de la aplicacion accedan a los detalles del usuario*/
  public Long getId() {
    return id;
  }

  public String getEmail() {
    return email;
  }

  @Override
  public String getPassword() {
    return password;
  }

  @Override
  public String getUsername() {
    return username;
  }
  
  public String getLastname() {
	return lastname;
  }

/*Estos metodos indica que la cuenta de usuario se considera valida, no bloqueada y no vencio*/
@Override
  public boolean isAccountNonExpired() {
    return true;
  }

  @Override
  public boolean isAccountNonLocked() {
    return true;
  }

  @Override
  public boolean isCredentialsNonExpired() {
    return true;
  }

  @Override
  public boolean isEnabled() {
    return true;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o)
      return true;
    if (o == null || getClass() != o.getClass())
      return false;
    UserDetailsImpl user = (UserDetailsImpl) o;
    return Objects.equals(id, user.id);
  }

}
