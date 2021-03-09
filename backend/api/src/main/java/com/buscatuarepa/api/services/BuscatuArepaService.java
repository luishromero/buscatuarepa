package com.buscatuarepa.api.services;

import java.util.ArrayList;
import java.util.List;

import com.buscatuarepa.api.dtos.DeliveryDTO;
import com.buscatuarepa.api.dtos.EditionDTO;
import com.buscatuarepa.api.dtos.LocalDTO;
import com.buscatuarepa.api.dtos.NuevasFronterasDTO;
import com.buscatuarepa.api.dtos.SuggestionDTO;
import com.buscatuarepa.api.models.EdicionArgentina;
import com.buscatuarepa.api.models.EdicionChile;
import com.buscatuarepa.api.models.EdicionMexico;
import com.buscatuarepa.api.models.EdicionUruguay;
import com.buscatuarepa.api.models.NuevasFronteras;
import com.buscatuarepa.api.models.SugerenciaArgentina;
import com.buscatuarepa.api.models.SugerenciaChile;
import com.buscatuarepa.api.models.SugerenciaMexico;
import com.buscatuarepa.api.models.SugerenciaUruguay;
import com.buscatuarepa.api.repositories.DeliveryRepository;
import com.buscatuarepa.api.repositories.EdicionArgentinaRepository;
import com.buscatuarepa.api.repositories.EdicionChileRepository;
import com.buscatuarepa.api.repositories.EdicionMexicoRepository;
import com.buscatuarepa.api.repositories.EdicionUruguayRepository;
import com.buscatuarepa.api.repositories.LocalsRepository;
import com.buscatuarepa.api.repositories.NuevasFronterasRepository;
import com.buscatuarepa.api.repositories.SugerenciaArgentinaRepository;
import com.buscatuarepa.api.repositories.SugerenciaChileRepository;
import com.buscatuarepa.api.repositories.SugerenciaMexicoRepository;
import com.buscatuarepa.api.repositories.SugerenciaUruguayRepository;
import com.buscatuarepa.api.utils.Constant;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuscatuArepaService {

  @Autowired
  LocalsRepository localsRepository;
  @Autowired
  DeliveryRepository deliveryRepository;

  @Autowired
  EdicionArgentinaRepository edicionArgentinaRepository;
  @Autowired
  EdicionChileRepository edicionChileRepository;
  @Autowired
  EdicionMexicoRepository edicionMexicoRepository;
  @Autowired
  EdicionUruguayRepository edicionUruguayRepository;

  @Autowired
  SugerenciaArgentinaRepository sugerenciaArgentinaRepository;
  @Autowired
  SugerenciaChileRepository sugerenciaChileRepository;
  @Autowired
  SugerenciaMexicoRepository sugerenciaMexicoRepository;
  @Autowired
  SugerenciaUruguayRepository sugerenciaUruguayRepository;

  @Autowired
  NuevasFronterasRepository nuevasFronterasRepository;

  public JSONObject getLocals(String city) {

    List<LocalDTO> localList = new ArrayList<>();

    if (city.equals(Constant.BUENOSAIRESTABLE)) {
      localList = localsRepository.getBuenosAiresLocals();
    }
    if (city.equals(Constant.NEUQUENTABLE)) {
      localList = localsRepository.getNeuquenLocals();
    }
    if (city.equals(Constant.LLANQUIUETABLE)) {
      localList = localsRepository.getLlanquihueLocals();
    }
    if (city.equals(Constant.SANTIAGOTABLE)) {
      localList = localsRepository.getSantiagoLocals();
    }
    if (city.equals(Constant.MEXCIUDADTABLE)) {
      localList = localsRepository.getMexCiudadLocals();
    }
    if (city.equals(Constant.MONTEVIDEOTABLE)) {
      localList = localsRepository.getMontevideoLocals();
    }

    JSONObject geojson = new JSONObject();
    JSONArray featuresArray = new JSONArray();

    for (LocalDTO localDTO : localList) {

      JSONObject jsonObject = new JSONObject();
      JSONObject geometry = new JSONObject();
      JSONArray coordinates = new JSONArray();

      coordinates.put(localDTO.getX());
      coordinates.put(localDTO.getY());
      geometry.put("coordinates", coordinates);
      geometry.put("type", "Point");

      JSONObject properties = new JSONObject();

      properties.put("COD", localDTO.getCod());
      properties.put("NOMBRE", localDTO.getNombre());
      properties.put("BARRIO", localDTO.getBarrio());
      properties.put("CALLE", localDTO.getCalle());
      properties.put("ALTURA", localDTO.getAltura());
      properties.put("LOCAL", localDTO.getLocal());
      properties.put("DESCRIPCION", localDTO.getDescripcion());
      properties.put("CATEGORIA", localDTO.getCategoria());
      properties.put("ETIQUETAS", localDTO.getEtiquetas());
      properties.put("NAVIDAD", localDTO.getNavidad());
      properties.put("LUNES", localDTO.getLunes());
      properties.put("MARTES", localDTO.getMartes());
      properties.put("MIERCOLES", localDTO.getMiercoles());
      properties.put("JUEVES", localDTO.getJueves());
      properties.put("VIERNES", localDTO.getViernes());
      properties.put("SABADO", localDTO.getSabado());
      properties.put("DOMINGO", localDTO.getDomingo());
      properties.put("TELLEFONO", localDTO.getTelefono());
      properties.put("WHATSAPP", localDTO.getWhatsapp());
      properties.put("INSTAGRAM", localDTO.getInstagram());
      properties.put("FACEBOOK", localDTO.getFacebook());
      properties.put("WEB", localDTO.getWeb());
      properties.put("RUTA_GOOGLE", localDTO.getRutaGoogle());

      jsonObject.put("properties", properties);
      jsonObject.put("geometry", geometry);
      jsonObject.put("type", "Feature");

      featuresArray.put(jsonObject);

    }

    geojson.put("features", featuresArray);
    geojson.put("type", "FeatureCollection");

    return geojson;
  }

  public JSONArray getDelivery(String city) {
    List<DeliveryDTO> deliveryList = new ArrayList<>();
    if (city.equals(Constant.BUENOSAIRESTABLE)) {
      deliveryList = deliveryRepository.getBuenosAiresDelivery();
    }
    if (city.equals(Constant.NEUQUENTABLE)) {
      deliveryList = deliveryRepository.getNeuquenDelivery();
    }
    if (city.equals(Constant.LLANQUIUETABLE)) {
      deliveryList = deliveryRepository.getLlanquihueDelivery();
    }
    if (city.equals(Constant.SANTIAGOTABLE)) {
      deliveryList = deliveryRepository.getSantiagoDelivery();
    }
    if (city.equals(Constant.MEXCIUDADTABLE)) {
      deliveryList = deliveryRepository.getMexCiudadDelivery();
    }
    if (city.equals(Constant.MONTEVIDEOTABLE)) {
      deliveryList = deliveryRepository.getMontevideoDelivery();
    }

    JSONArray response = new JSONArray();

    for (DeliveryDTO deliveryDTO : deliveryList) {

      JSONObject jsonObject = new JSONObject();

      jsonObject.put("COD", deliveryDTO.getCod());
      jsonObject.put("NOMBRE", deliveryDTO.getNombre());
      jsonObject.put("BARRIO", deliveryDTO.getBarrio());
      jsonObject.put("DESCRIPCION", deliveryDTO.getDescripcion());
      jsonObject.put("CATEGORIA", deliveryDTO.getCategoria());
      jsonObject.put("ETIQUETAS", deliveryDTO.getEtiquetas());
      jsonObject.put("NAVIDAD", deliveryDTO.getNavidad());
      jsonObject.put("LUNES", deliveryDTO.getLunes());
      jsonObject.put("MARTES", deliveryDTO.getMartes());
      jsonObject.put("MIERCOLES", deliveryDTO.getMiercoles());
      jsonObject.put("JUEVES", deliveryDTO.getJueves());
      jsonObject.put("VIERNES", deliveryDTO.getViernes());
      jsonObject.put("SABADO", deliveryDTO.getSabado());
      jsonObject.put("DOMINGO", deliveryDTO.getDomingo());
      jsonObject.put("TELEFONO", deliveryDTO.getTelefono());
      jsonObject.put("WHATSAPP", deliveryDTO.getWhatsapp());
      jsonObject.put("INSTAGRAM", deliveryDTO.getInstagram());
      jsonObject.put("FACEBOOK", deliveryDTO.getFacebook());
      jsonObject.put("WEB", deliveryDTO.getWeb());

      response.put(jsonObject);
    }

    return response;
  }

  public void saveEdition(EditionDTO editionDTO) {

    if (editionDTO.getPais().equals(Constant.ARGENTINA)) {
      saveEditionArgentina(editionDTO);
    }

    if (editionDTO.getPais().equals(Constant.CHILE)) {
      saveEditionChile(editionDTO);
    }

    if (editionDTO.getPais().equals(Constant.MEXICO)) {
      saveEditionMexico(editionDTO);
    }

    if (editionDTO.getPais().equals(Constant.URUGUAY)) {
      saveEditionUruguay(editionDTO);
    }

  }

  private void saveEditionArgentina(EditionDTO editionDTO) {
    EdicionArgentina editionArgentina = new EdicionArgentina();
    if (!editionDTO.getCod().isEmpty()) {
      editionArgentina.setCod(editionDTO.getCod());
    }
    if (!editionDTO.getNombre().isEmpty()) {
      editionArgentina.setNombre(editionDTO.getNombre());
    }
    if (!editionDTO.getTipoEdicion().isEmpty()) {
      editionArgentina.setTipoEdicion(editionDTO.getTipoEdicion());
    }
    if (!editionDTO.getSugerencia().isEmpty()) {
      editionArgentina.setSugerencia(editionDTO.getSugerencia());
    }
    edicionArgentinaRepository.saveAndFlush(editionArgentina);
  }

  private void saveEditionChile(EditionDTO editionDTO) {
    EdicionChile editionChile = new EdicionChile();
    if (!editionDTO.getCod().isEmpty()) {
      editionChile.setCod(editionDTO.getCod());
    }
    if (!editionDTO.getNombre().isEmpty()) {
      editionChile.setNombre(editionDTO.getNombre());
    }
    if (!editionDTO.getTipoEdicion().isEmpty()) {
      editionChile.setTipoEdicion(editionDTO.getTipoEdicion());
    }
    if (!editionDTO.getSugerencia().isEmpty()) {
      editionChile.setSugerencia(editionDTO.getSugerencia());
    }
    edicionChileRepository.saveAndFlush(editionChile);
  }

  private void saveEditionMexico(EditionDTO editionDTO) {
    EdicionMexico editionMexico = new EdicionMexico();
    if (!editionDTO.getCod().isEmpty()) {
      editionMexico.setCod(editionDTO.getCod());
    }
    if (!editionDTO.getNombre().isEmpty()) {
      editionMexico.setNombre(editionDTO.getNombre());
    }
    if (!editionDTO.getTipoEdicion().isEmpty()) {
      editionMexico.setTipoEdicion(editionDTO.getTipoEdicion());
    }
    if (!editionDTO.getSugerencia().isEmpty()) {
      editionMexico.setSugerencia(editionDTO.getSugerencia());
    }
    edicionMexicoRepository.saveAndFlush(editionMexico);
  }

  private void saveEditionUruguay(EditionDTO editionDTO) {
    EdicionUruguay editionUruguay = new EdicionUruguay();
    if (!editionDTO.getCod().isEmpty()) {
      editionUruguay.setCod(editionDTO.getCod());
    }
    if (!editionDTO.getNombre().isEmpty()) {
      editionUruguay.setNombre(editionDTO.getNombre());
    }
    if (!editionDTO.getTipoEdicion().isEmpty()) {
      editionUruguay.setTipoEdicion(editionDTO.getTipoEdicion());
    }
    if (!editionDTO.getSugerencia().isEmpty()) {
      editionUruguay.setSugerencia(editionDTO.getSugerencia());
    }
    edicionUruguayRepository.saveAndFlush(editionUruguay);
  }

  public void saveSuggestion(SuggestionDTO suggestionDTO) {
    if (suggestionDTO.getPais().equals(Constant.ARGENTINA)) {
      saveSuggestionArgentina(suggestionDTO);
    }
    if (suggestionDTO.getPais().equals(Constant.CHILE)) {
      saveSuggestionChile(suggestionDTO);
    }
    if (suggestionDTO.getPais().equals(Constant.MEXICO)) {
      saveSuggestionMexico(suggestionDTO);
    }
    if (suggestionDTO.getPais().equals(Constant.URUGUAY)) {
      saveSuggestionUruguay(suggestionDTO);
    }
  }

  private void saveSuggestionArgentina(SuggestionDTO suggestionDTO) {
    SugerenciaArgentina sugerenciaArgentina = new SugerenciaArgentina();
    if (!suggestionDTO.getTipoEmpresa().isEmpty()) {
      sugerenciaArgentina.setTipoEmpresa(suggestionDTO.getTipoEmpresa());
    }
    if (!suggestionDTO.getNombre().isEmpty()) {
      sugerenciaArgentina.setNombre(suggestionDTO.getNombre());
    }
    if (!suggestionDTO.getProducto().isEmpty()) {
      sugerenciaArgentina.setProducto(suggestionDTO.getProducto());
    }
    if (!suggestionDTO.getDireccion().isEmpty()) {
      sugerenciaArgentina.setDireccion(suggestionDTO.getDireccion());
    }
    if (!suggestionDTO.getCiudad().isEmpty()) {
      sugerenciaArgentina.setCiudad(suggestionDTO.getCiudad());
    }
    if (!suggestionDTO.getTipoContacto().isEmpty()) {
      sugerenciaArgentina.setTipoContacto(suggestionDTO.getTipoContacto());
    }
    if (!suggestionDTO.getContacto().isEmpty()) {
      sugerenciaArgentina.setContacto(suggestionDTO.getContacto());
    }
    if (!suggestionDTO.getCorreoContact().isEmpty()) {
      sugerenciaArgentina.setCorreoContact(suggestionDTO.getCorreoContact());
    }
    sugerenciaArgentinaRepository.saveAndFlush(sugerenciaArgentina);
  }

  private void saveSuggestionChile(SuggestionDTO suggestionDTO) {
    SugerenciaChile sugerenciaChile = new SugerenciaChile();
    if (!suggestionDTO.getTipoEmpresa().isEmpty()) {
      sugerenciaChile.setTipoEmpresa(suggestionDTO.getTipoEmpresa());
    }
    if (!suggestionDTO.getNombre().isEmpty()) {
      sugerenciaChile.setNombre(suggestionDTO.getNombre());
    }
    if (!suggestionDTO.getProducto().isEmpty()) {
      sugerenciaChile.setProducto(suggestionDTO.getProducto());
    }
    if (!suggestionDTO.getDireccion().isEmpty()) {
      sugerenciaChile.setDireccion(suggestionDTO.getDireccion());
    }
    if (!suggestionDTO.getCiudad().isEmpty()) {
      sugerenciaChile.setCiudad(suggestionDTO.getCiudad());
    }
    if (!suggestionDTO.getTipoContacto().isEmpty()) {
      sugerenciaChile.setTipoContacto(suggestionDTO.getTipoContacto());
    }
    if (!suggestionDTO.getContacto().isEmpty()) {
      sugerenciaChile.setContacto(suggestionDTO.getContacto());
    }
    if (!suggestionDTO.getCorreoContact().isEmpty()) {
      sugerenciaChile.setCorreoContact(suggestionDTO.getCorreoContact());
    }
    sugerenciaChileRepository.saveAndFlush(sugerenciaChile);
  }

  private void saveSuggestionMexico(SuggestionDTO suggestionDTO) {
    SugerenciaMexico sugerenciaMexico = new SugerenciaMexico();
    if (!suggestionDTO.getTipoEmpresa().isEmpty()) {
      sugerenciaMexico.setTipoEmpresa(suggestionDTO.getTipoEmpresa());
    }
    if (!suggestionDTO.getNombre().isEmpty()) {
      sugerenciaMexico.setNombre(suggestionDTO.getNombre());
    }
    if (!suggestionDTO.getProducto().isEmpty()) {
      sugerenciaMexico.setProducto(suggestionDTO.getProducto());
    }
    if (!suggestionDTO.getDireccion().isEmpty()) {
      sugerenciaMexico.setDireccion(suggestionDTO.getDireccion());
    }
    if (!suggestionDTO.getCiudad().isEmpty()) {
      sugerenciaMexico.setCiudad(suggestionDTO.getCiudad());
    }
    if (!suggestionDTO.getTipoContacto().isEmpty()) {
      sugerenciaMexico.setTipoContacto(suggestionDTO.getTipoContacto());
    }
    if (!suggestionDTO.getContacto().isEmpty()) {
      sugerenciaMexico.setContacto(suggestionDTO.getContacto());
    }
    if (!suggestionDTO.getCorreoContact().isEmpty()) {
      sugerenciaMexico.setCorreoContact(suggestionDTO.getCorreoContact());
    }
    sugerenciaMexicoRepository.saveAndFlush(sugerenciaMexico);
  }

  private void saveSuggestionUruguay(SuggestionDTO suggestionDTO) {
    SugerenciaUruguay sugerenciaUruguay = new SugerenciaUruguay();
    if (!suggestionDTO.getTipoEmpresa().isEmpty()) {
      sugerenciaUruguay.setTipoEmpresa(suggestionDTO.getTipoEmpresa());
    }
    if (!suggestionDTO.getNombre().isEmpty()) {
      sugerenciaUruguay.setNombre(suggestionDTO.getNombre());
    }
    if (!suggestionDTO.getProducto().isEmpty()) {
      sugerenciaUruguay.setProducto(suggestionDTO.getProducto());
    }
    if (!suggestionDTO.getDireccion().isEmpty()) {
      sugerenciaUruguay.setDireccion(suggestionDTO.getDireccion());
    }
    if (!suggestionDTO.getCiudad().isEmpty()) {
      sugerenciaUruguay.setCiudad(suggestionDTO.getCiudad());
    }
    if (!suggestionDTO.getTipoContacto().isEmpty()) {
      sugerenciaUruguay.setTipoContacto(suggestionDTO.getTipoContacto());
    }
    if (!suggestionDTO.getContacto().isEmpty()) {
      sugerenciaUruguay.setContacto(suggestionDTO.getContacto());
    }
    if (!suggestionDTO.getCorreoContact().isEmpty()) {
      sugerenciaUruguay.setCorreoContact(suggestionDTO.getCorreoContact());
    }
    sugerenciaUruguayRepository.saveAndFlush(sugerenciaUruguay);
  }

  public void saveNewFrontier(NuevasFronterasDTO nuevasFronterasDTO) {
    NuevasFronteras nuevasFronteras = new NuevasFronteras();
    if (!nuevasFronterasDTO.getPais().isEmpty()) {
      nuevasFronteras.setPais(nuevasFronterasDTO.getPais());
    }
    if (!nuevasFronterasDTO.getCiudad().isEmpty()) {
      nuevasFronteras.setCiudad(nuevasFronterasDTO.getCiudad());
    }
    if (!nuevasFronterasDTO.getNegocio().isEmpty()) {
      nuevasFronteras.setNegocio(nuevasFronterasDTO.getNegocio());
    }
    if (!nuevasFronterasDTO.getNombre().isEmpty()) {
      nuevasFronteras.setNombre(nuevasFronterasDTO.getNombre());
    }
    if (!nuevasFronterasDTO.getDireccion().isEmpty()) {
      nuevasFronteras.setDireccion(nuevasFronterasDTO.getDireccion());
    }
    if (!nuevasFronterasDTO.getTipoContacto().isEmpty()) {
      nuevasFronteras.setTipoContacto(nuevasFronterasDTO.getTipoContacto());
    }
    if (!nuevasFronterasDTO.getContacto().isEmpty()) {
      nuevasFronteras.setContacto(nuevasFronterasDTO.getContacto());
    }
    if (!nuevasFronterasDTO.getCorreoUser().isEmpty()) {
      nuevasFronteras.setCorreoUser(nuevasFronterasDTO.getCorreoUser());
    }
    nuevasFronterasRepository.saveAndFlush(nuevasFronteras);

  }
}
