package com.buscatuarepa.api.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "sug_chl")
public class SugerenciaChile {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID")
  private Long id;

  @Column(name = "TIPO_EMPRESA")
  private String tipoEmpresa;

  @Column(name = "NOMBRE")
  private String nombre;

  @Column(name = "PRODUCTO")
  private String producto;

  @Column(name = "DIRECCION")
  private String direccion;

  @Column(name = "CIUDAD")
  private String ciudad;

  @Column(name = "TIPO_CONTACTO")
  private String tipoContacto;

  @Column(name = "CONTACTO")
  private String contacto;

  @Column(name = "CORREO_CONTACT")
  private String correoContact;

  @Column(name = "OBS")
  private String observaciones;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getTipoEmpresa() {
    return tipoEmpresa;
  }

  public void setTipoEmpresa(String tipoEmpresa) {
    this.tipoEmpresa = tipoEmpresa;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getProducto() {
    return producto;
  }

  public void setProducto(String producto) {
    this.producto = producto;
  }

  public String getDireccion() {
    return direccion;
  }

  public void setDireccion(String direccion) {
    this.direccion = direccion;
  }

  public String getCiudad() {
    return ciudad;
  }

  public void setCiudad(String ciudad) {
    this.ciudad = ciudad;
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

  public String getCorreoContact() {
    return correoContact;
  }

  public void setCorreoContact(String correoContact) {
    this.correoContact = correoContact;
  }

  public String getObservaciones() {
    return observaciones;
  }

  public void setObservaciones(String observaciones) {
    this.observaciones = observaciones;
  }

}
