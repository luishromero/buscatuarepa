function mapDataLocales(respLocales) {
  localesData = respLocales;
  geojsonLayer = L.geoJson(localesData, {
    onEachFeature: onEachFeature
  }).addTo(mymap);

  //populate el listado de categorias de locales fisicos
  $.each(localesData.features, function (index, object) {
    if (object.properties.CATEGORIA === 'restaurante') {
      return $("ul.navRestaurantesList").append("<li><a href='#' class='list-link' data-id='" + object.properties.COD + "'>" + object.properties.NOMBRE + "</a></li>");
    }
    else if (object.properties.CATEGORIA === 'local') {
      return $("ul.navLocalesList").append("<li><a href='#' class='list-link' data-id='" + object.properties.COD + "'>" + object.properties.NOMBRE + "</a></li>");
    }
    else if (object.properties.CATEGORIA === 'servicio') {
      return $("ul.navServiciosList").append("<li><a href='#' class='list-link' data-id='" + object.properties.COD + "'>" + object.properties.NOMBRE + "</a></li>");
    }
    else if (object.properties.CATEGORIA === 'panaderia') {
      return $("ul.navPanaderiasList").append("<li><a href='#' class='list-link' data-id='" + object.properties.COD + "'>" + object.properties.NOMBRE + "</a></li>");
    }
    else if (object.properties.CATEGORIA === 'discoteca') {
      return $("ul.navDiscotecaList").append("<li><a href='#' class='list-link' data-id='" + object.properties.COD + "'>" + object.properties.NOMBRE + "</a></li>");
    }
  });

  // Agrego eventos al item por categoria
  $(".list-link").on('click', function (e) {
    sidebar.open('tab-info-local');
    dataId = $(this).attr("data-id");
    clickOnMapItem(dataId);
  });

};

// Funcion sujeta click en item categoria a marker
function clickOnMapItem(id) {
  var layerTarget = geojsonLayer.getLayer(id);
  layerTarget.fireEvent('click');
  mymap.flyTo(layerTarget.getLatLng(), 16);
};

function onEachFeature(feature, layer) {

  //reescribe id de marcador como propiedad COD
  layer._leaflet_id = layer.feature.properties.COD;

  // crea elemento div que contendra el popup
  var popupInfo = $('<div />');

  //agrego contenido al popup
  popupInfo.html("<b>" + layer.feature.properties.NOMBRE + "</b>" + "<br>" + layer.feature.properties.CALLE + " " + layer.feature.properties.ALTURA +
    "<br>" + "<button class='popupButton'>Ver datos del local</button>");

  //agrego listener al boton del popup
  popupInfo.on('click', '.popupButton', function () {
    sidebar.open('tab-info-local');
  });
  //agrego popup al mapa
  layer.bindPopup(popupInfo[0]);

  //populo dados del local dentro de la pestana info del local
  layer.on('click', function (e) {

    //agrega clase para todos los iconos de redes sociales
    $("#info-local-facebook").parents('li').addClass("displayNone");
    $("#info-local-instagram").parents('li').addClass("displayNone");
    $("#info-local-whatsapp").parents('li').addClass("displayNone");
    $("#info-local-web").parents('li').addClass("displayNone");

    var imagenLocal = 'images/info-img/lugares/' + layer.feature.properties.COD + '.jpg';
    var facebookLocalLink = layer.feature.properties.FACEBOOK;
    var instagramLocalLink = layer.feature.properties.INSTAGRAM;
    var whatsappLocalLink = layer.feature.properties.WHATSAPP;
    var webLocalLink = layer.feature.properties.WEB;
    var direccionLink = layer.feature.properties.RUTA_GOOGLE;
    $("#info-local-img").attr('src', imagenLocal);
    $("#info-local-nombre").text(feature.properties.NOMBRE);
    $("#info-local-descripcion").text(feature.properties.DESCRIPCION);
    $("#info-local-direccion").html(feature.properties.CALLE + ' ' + feature.properties.ALTURA + ', ' + feature.properties.BARRIO + '.');
    $("#info-local-direction-link").attr('href', direccionLink);
    $("#info-local-facebook").attr('href', facebookLocalLink);
    $("#info-local-instagram").attr('href', instagramLocalLink);
    $("#info-local-whatsapp").attr('href', 'https://wa.me/' + whatsappLocalLink);
    $("#info-local-web").attr('href', webLocalLink);

    //solapa sugerencia edicion
    $("#form-sug-img").attr('src', imagenLocal);
    $("#form-sug-nombre").text(feature.properties.NOMBRE);

    //popula horario por dia
    if (layer.feature.properties.LUNES === null) {
      $("#td-horario-local-lunes").html('Sin Datos');
    } else {
      $("#td-horario-local-lunes").html(feature.properties.LUNES);
    }
    if (layer.feature.properties.MARTES === null) {
      $("#td-horario-local-martes").html('Sin Datos');
    } else {
      $("#td-horario-local-martes").html(feature.properties.MARTES);
    }
    if (layer.feature.properties.MIERCOLES === null) {
      $("#td-horario-local-miercoles").html('Sin Datos');
    } else {
      $("#td-horario-local-miercoles").html(feature.properties.MIERCOLES);
    }
    if (layer.feature.properties.JUEVES === null) {
      $("#td-horario-local-jueves").html('Sin Datos');
    } else {
      $("#td-horario-local-jueves").html(feature.properties.JUEVES);
    }
    if (layer.feature.properties.VIERNES === null) {
      $("#td-horario-local-viernes").html('Sin Datos');
    } else {
      $("#td-horario-local-viernes").html(feature.properties.VIERNES);
    }
    if (layer.feature.properties.SABADO === null) {
      $("#td-horario-local-sabado").html('Sin Datos');
    } else {
      $("#td-horario-local-sabado").html(feature.properties.SABADO);
    }
    if (layer.feature.properties.DOMINGO === null) {
      $("#td-horario-local-domingo").html('Sin Datos');
    } else {
      $("#td-horario-local-domingo").html(feature.properties.DOMINGO);
    }

    //polula telefono
    if (layer.feature.properties.TELEFONO === null) {
      $("#numero-local-telefono").text('Sin Datos');
    } else {
      $("#numero-local-telefono").text(feature.properties.TELEFONO);
    }

    //remueve clase hidden si existe link de red social
    if (layer.feature.properties.FACEBOOK !== null || layer.feature.properties.FACEBOOK === "" ) {
      $("#info-local-facebook").parents('li').removeClass("displayNone");
    };
    if (layer.feature.properties.INSTAGRAM !== null || layer.feature.properties.INSTAGRAM === "") {
      $("#info-local-instagram").parents('li').removeClass("displayNone");
    };
    if (layer.feature.properties.WHATSAPP !== null || layer.feature.properties.WHATSAPP === "") {
      $("#info-local-whatsapp").parents('li').removeClass("displayNone");
    };
    if (layer.feature.properties.WEB !== null || layer.feature.properties.WEB === "") {
      $("#info-local-web").parents('li').removeClass("displayNone");
    };

    //insertando codigo en formulario de sugerencia de edicion
    $("#cod-Sug-Edi").attr('value', layer.feature.properties.COD);
    $("#nombre-Sug-Edi").attr('value', layer.feature.properties.NOMBRE);

    //agrego listener al boton sugerir edicion
    $(".info-sug-btn-local").on('click', function (e) {
      $("#msj-after-form-sug-edicion").addClass("displayNone");
      $("#form-sug-edicion").removeClass("displayNone");
      sidebar.open('tab-form-sug-edicion');
    });
  });
};

function mapDataDelivery(respDelivery) {
  deliveryData = respDelivery;

  //populate el listado de categorias de delivery
  $.each(deliveryData, function (index, object) {

    //comida
    if (object.CATEGORIA === 'asiatica') {
      return $("ul.navAsiaticaList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'rapida') {
      return $("ul.navRapidaList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'criolla') {
      return $("ul.navCriollaList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'postre') {
      return $("ul.navPostresList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }

    //emprendimientos
    else if (object.CATEGORIA === 'arte') {
      return $("ul.navArteList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'cultura') {
      return $("ul.navCulturaList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'estetica') {
      return $("ul.navEsteticaList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'traslados') {
      return $("ul.navTrasladosList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
    else if (object.CATEGORIA === 'productores') {
      return $("ul.navProductoresList").append("<li><a href='#' class='list-link-delivery' data-id='" + object.COD + "'>" + object.NOMBRE + "</a></li>");
    }
  
  });

  // Agrego eventos al item por categoria
  $(".list-link-delivery").on('click', mapInfoDelivery);
};

function mapInfoDelivery(e) {
  sidebar.open('tab-info-delivery');
  dataDeliveryId = $(this).attr("data-id");
  for (var i = 0; i < deliveryData.length; i++) {
    if (dataDeliveryId === deliveryData[i].COD) {

      //agrega clase para todos los iconos de redes sociales
      $("#info-delivery-facebook").parents('li').addClass("displayNone");
      $("#info-delivery-instagram").parents('li').addClass("displayNone");
      $("#info-delivery-whatsapp").parents('li').addClass("displayNone");
      $("#info-delivery-web").parents('li').addClass("displayNone");

      var imagenDelivery = 'images/info-img/delivery/' + deliveryData[i].COD + '.jpg';
      var facebookDeliveryLink = deliveryData[i].FACEBOOK;
      var instagramDeliveryLink = deliveryData[i].INSTAGRAM;
      var whatsappDeliveryLink = deliveryData[i].WHATSAPP;
      var webDeliveryLink = deliveryData[i].WEB;
      $("#info-delivery-img").attr('src', imagenDelivery);
      $("#info-delivery-nombre").text(deliveryData[i].NOMBRE);
      $("#info-delivery-descripcion").text(deliveryData[i].DESCRIPCION);
      $("#info-delivery-facebook").attr('href', facebookDeliveryLink);
      $("#info-delivery-instagram").attr('href', instagramDeliveryLink);
      $("#info-delivery-web").attr('href', webDeliveryLink);
      $("#info-delivery-whatsapp").attr('href', 'https://wa.me/' + whatsappDeliveryLink);

      //popula horario por dia
      if (deliveryData[i].LUNES === null) {
        $("#td-horario-delivery-lunes").html('Sin Datos');
      } else {
        $("#td-horario-delivery-lunes").html(deliveryData[i].LUNES);
      }
      if (deliveryData[i].MARTES === null) {
        $("#td-horario-delivery-martes").html('Sin Datos');
      } else {
        $("#td-horario-delivery-martes").html(deliveryData[i].MARTES);
      }
      if (deliveryData[i].MIERCOLES === null) {
        $("#td-horario-delivery-miercoles").html('Sin Datos');
      } else {
        $("#td-horario-delivery-miercoles").html(deliveryData[i].MIERCOLES);
      }
      if (deliveryData[i].JUEVES === null) {
        $("#td-horario-delivery-jueves").html('Sin Datos');
      } else {
        $("#td-horario-delivery-jueves").html(deliveryData[i].JUEVES);
      }
      if (deliveryData[i].VIERNES === null) {
        $("#td-horario-delivery-viernes").html('Sin Datos');
      } else {
        $("#td-horario-delivery-viernes").html(deliveryData[i].VIERNES);
      }
      if (deliveryData[i].SABADO === null) {
        $("#td-horario-delivery-sabado").html('Sin Datos');
      } else {
        $("#td-horario-delivery-sabado").html(deliveryData[i].SABADO);
      }
      if (deliveryData[i].DOMINGO === null) {
        $("#td-horario-delivery-domingo").html('Sin Datos');
      } else {
        $("#td-horario-delivery-domingo").html(deliveryData[i].DOMINGO);
      }

      //solapa sugerencia edicion
      $("#form-sug-img").attr('src', imagenDelivery);
      $("#form-sug-nombre").text(deliveryData[i].NOMBRE);

      //polula telefono
      if (deliveryData[i].TELEFONO === null) {
        $("#numero-delivery-telefono").text('Sin Datos');
      } else {
        $("#numero-delivery-telefono").text(deliveryData[i].TELEFONO);
      }

      //remueve clase si existe link de red social
      if (deliveryData[i].FACEBOOK !== null || deliveryData[i].facebook === "") {
        $("#info-delivery-facebook").parents('li').removeClass("displayNone");
      };
      if (deliveryData[i].INSTAGRAM !== null || deliveryData[i].instagram === "") {
        $("#info-delivery-instagram").parents('li').removeClass("displayNone");
      };
      if (deliveryData[i].WHATSAPP !== null || deliveryData[i].whatsapp === "") {
        $("#info-delivery-whatsapp").parents('li').removeClass("displayNone");
      };
      if (deliveryData[i].WEB !== null || deliveryData[i].web === "") {
        $("#info-delivery-web").parents('li').removeClass("displayNone");
      };

      //insertando codigo en formulario de sugerencia de edicion
      $("#cod-Sug-Edi").attr('value', dataDeliveryId);
      $("#nombre-Sug-Edi").attr('value', deliveryData[i].NOMBRE);

      //agrego listener al boton sugerir edicion
      $(".info-sug-btn-delivery").on('click', function (e) {
        $("#msj-after-form-sug-edicion").addClass("displayNone");
        $("#form-sug-edicion").removeClass("displayNone");
        sidebar.open('tab-form-sug-edicion');
      });

    }
  }
};