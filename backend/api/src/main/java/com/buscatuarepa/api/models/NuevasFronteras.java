package com.buscatuarepa.api.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "nuevasfronteras")
public class NuevasFronteras {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID")
  private Long id;

  @Column(name = "PAIS")
  private String pais;

  @Column(name = "CIUDAD")
  private String ciudad;

  @Column(name = "NEGOCIO")
  private String negocio;

  @Column(name = "NOMBRE")
  private String nombre;

  @Column(name = "DIRECCION")
  private String direccion;

  @Column(name = "TIPO_CONTACTO")
  private String tipoContacto;

  @Column(name = "CONTACTO")
  private String contacto;

  @Column(name = "CORREO_USER")
  private String correoUser;

  @Column(name = "OBS")
  private String obs;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

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
