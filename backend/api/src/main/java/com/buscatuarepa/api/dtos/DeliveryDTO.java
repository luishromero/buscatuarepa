package com.buscatuarepa.api.dtos;

public class DeliveryDTO {

  private String cod;
  private String nombre;
  private String barrio;
  private String descripcion;
  private String categoria;
  private String etiquetas;
  private String navidad;
  private String lunes;
  private String martes;
  private String miercoles;
  private String jueves;
  private String viernes;
  private String sabado;
  private String domingo;
  private String telefono;
  private String whatsapp;
  private String instagram;
  private String facebook;
  private String web;

  public DeliveryDTO(String cod, String nombre, String barrio, String descripcion, String categoria, String etiquetas,
      String navidad, String lunes, String martes, String miercoles, String jueves, String viernes, String sabado,
      String domingo, String telefono, String whatsapp, String instagram, String facebook, String web) {
    this.cod = cod;
    this.nombre = nombre;
    this.barrio = barrio;
    this.descripcion = descripcion;
    this.categoria = categoria;
    this.etiquetas = etiquetas;
    this.navidad = navidad;
    this.lunes = lunes;
    this.martes = martes;
    this.miercoles = miercoles;
    this.jueves = jueves;
    this.viernes = viernes;
    this.sabado = sabado;
    this.domingo = domingo;
    this.telefono = telefono;
    this.whatsapp = whatsapp;
    this.instagram = instagram;
    this.facebook = facebook;
    this.web = web;
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

  public String getBarrio() {
    return barrio;
  }

  public void setBarrio(String barrio) {
    this.barrio = barrio;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public String getCategoria() {
    return categoria;
  }

  public void setCategoria(String categoria) {
    this.categoria = categoria;
  }

  public String getEtiquetas() {
    return etiquetas;
  }

  public void setEtiquetas(String etiquetas) {
    this.etiquetas = etiquetas;
  }

  public String getNavidad() {
    return navidad;
  }

  public void setNavidad(String navidad) {
    this.navidad = navidad;
  }

  public String getLunes() {
    return lunes;
  }

  public void setLunes(String lunes) {
    this.lunes = lunes;
  }

  public String getMartes() {
    return martes;
  }

  public void setMartes(String martes) {
    this.martes = martes;
  }

  public String getMiercoles() {
    return miercoles;
  }

  public void setMiercoles(String miercoles) {
    this.miercoles = miercoles;
  }

  public String getJueves() {
    return jueves;
  }

  public void setJueves(String jueves) {
    this.jueves = jueves;
  }

  public String getViernes() {
    return viernes;
  }

  public void setViernes(String viernes) {
    this.viernes = viernes;
  }

  public String getSabado() {
    return sabado;
  }

  public void setSabado(String sabado) {
    this.sabado = sabado;
  }

  public String getDomingo() {
    return domingo;
  }

  public void setDomingo(String domingo) {
    this.domingo = domingo;
  }

  public String getTelefono() {
    return telefono;
  }

  public void setTelefono(String telefono) {
    this.telefono = telefono;
  }

  public String getWhatsapp() {
    return whatsapp;
  }

  public void setWhatsapp(String whatsapp) {
    this.whatsapp = whatsapp;
  }

  public String getInstagram() {
    return instagram;
  }

  public void setInstagram(String instagram) {
    this.instagram = instagram;
  }

  public String getFacebook() {
    return facebook;
  }

  public void setFacebook(String facebook) {
    this.facebook = facebook;
  }

  public String getWeb() {
    return web;
  }

  public void setWeb(String web) {
    this.web = web;
  }

}
