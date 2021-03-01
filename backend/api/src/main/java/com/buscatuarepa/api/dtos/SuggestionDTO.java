package com.buscatuarepa.api.dtos;

public class SuggestionDTO {

  private String pais;
  private String tipoEmpresa;
  private String nombre;
  private String producto;
  private String direccion;
  private String ciudad;
  private String tipoContacto;
  private String contacto;
  private String correoContact;

  public String getPais() {
    return pais;
  }

  public void setPais(String pais) {
    this.pais = pais;
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

}
