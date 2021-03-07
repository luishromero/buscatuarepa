package com.buscatuarepa.api.controllers;

import java.util.List;

import com.buscatuarepa.api.dtos.DeliveryDTO;
import com.buscatuarepa.api.dtos.EditionDTO;
import com.buscatuarepa.api.dtos.NuevasFronterasDTO;
import com.buscatuarepa.api.dtos.SuggestionDTO;
import com.buscatuarepa.api.services.BuscatuArepaService;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class BuscaTuArepaController {

  @Autowired
  BuscatuArepaService buscaTuArepaService;

  @GetMapping(value = "/locales", produces = MediaType.APPLICATION_JSON_VALUE)
  public ResponseEntity<Object> getLocals(@RequestParam(value = "city", required = true) String city) {
    JSONObject resp = buscaTuArepaService.getLocals(city);
    return new ResponseEntity<>(resp.toMap(), HttpStatus.OK);
  }

  @GetMapping(value = "/delivery", produces = MediaType.APPLICATION_JSON_VALUE)
  public ResponseEntity<List<DeliveryDTO>> getDelivery(@RequestParam(value = "city", required = true) String city) {
    List<DeliveryDTO> resp = buscaTuArepaService.getDelivery(city);
    return new ResponseEntity<>(resp, HttpStatus.OK);
  }

  @PostMapping(value = "/edition")
  public void saveEditionArgentina(@RequestBody final EditionDTO editionDTO) {
    buscaTuArepaService.saveEdition(editionDTO);
  }

  @PostMapping(value = "/suggestion")
  public void saveSuggestionArgentina(@RequestBody final SuggestionDTO suggestionDTO) {
    buscaTuArepaService.saveSuggestion(suggestionDTO);
  }

  @PostMapping(value = "/new-frontier")
  public void saveNewFrontier(@RequestBody NuevasFronterasDTO nuevasFronterasDTO) {
    buscaTuArepaService.saveNewFrontier(nuevasFronterasDTO);
  }

}
