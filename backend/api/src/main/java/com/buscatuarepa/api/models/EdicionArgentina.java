package com.buscatuarepa.api.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "edi_arg")
public class EdicionArgentina {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID")
  private Long id;

  @Column(name = "COD")
  private String cod;

  @Column(name = "NOMBRE")
  private String nombre;

  @Column(name = "TIPO_EDI")
  private String tipoEdicion;

  @Column(name = "EDI_SUG")
  private String sugerencia;

  @Column(name = "OBSERVACION")
  private String observaciones;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
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

  public String getObservaciones() {
    return observaciones;
  }

  public void setObservaciones(String observaciones) {
    this.observaciones = observaciones;
  }

}
