package com.buscatuarepa.api.dtos;

public class EditionDTO {

  private String pais;
  private String cod;
  private String nombre;
  private String tipoEdicion;
  private String sugerencia;

  public String getPais() {
    return pais;
  }

  public void setPais(String pais) {
    this.pais = pais;
  }

  public String getCod() {
    return cod;
  }

  public void setCod(String cod) {
    this.cod = cod;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getTipoEdicion() {
    return tipoEdicion;
  }

  public void setTipoEdicion(String tipoEdicion) {
    this.tipoEdicion = tipoEdicion;
  }

  public String getSugerencia() {
    return sugerencia;
  }

  public void setSugerencia(String sugerencia) {
    this.sugerencia = sugerencia;
  }

}
