package br.com.henriquefuchs.livraria.dto;

import com.fasterxml.jackson.annotation.JsonAlias;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
public class UsuarioFormDto {

  @NotBlank
  private String nome;

  @NotBlank
  private String login;

  @NotNull
  @JsonAlias("perfil-id")
  private Long perfilId;

}
