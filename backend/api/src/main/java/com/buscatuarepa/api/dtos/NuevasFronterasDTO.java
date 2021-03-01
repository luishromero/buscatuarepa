package com.buscatuarepa.api.dtos;

public class NuevasFronterasDTO {

  private String pais;
  private String ciudad;
  private String negocio;
  private String nombre;
  private String direccion;
  private String tipoContacto;
  private String contacto;
  private String correoUser;
  private String obs;

  public String getPais() {
    return pais;
  }

  public void setPais(String pais) {
    this.pais = pais;
  }

  public String getCiudad() {
    return ciudad;
  }

  public void setCiudad(String ciudad) {
    this.ciudad = ciudad;
  }

  public String getNegocio() {
    return negocio;
  }

  public void setNegocio(String negocio) {
    this.negocio = negocio;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getDireccion() {
    return direccion;
  }

  public void setDireccion(String direccion) {
    this.direccion = direccion;
  }

  public String getTipoContacto() {
    return tipoContacto;
  }

  public void setTipoContacto(String tipoContacto) {
    this.tipoContacto = tipoContacto;
  }

  public String getContacto() {
    return contacto;
  }

  public void setContacto(String contacto) {
    this.contacto = contacto;
  }

  public String getCorreoUser() {
    return correoUser;
  }

  public void setCorreoUser(String correoUser) {
    this.correoUser = correoUser;
  }

  public String getObs() {
    return obs;
  }

  public void setObs(String obs) {
    this.obs = obs;
  }
}
