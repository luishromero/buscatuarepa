var mymap;
var home;
var sidebar;
var geojsonLayer;
var localesData;
var deliveryData;
var dataDeliveryId;
var dataId;
var ventanaNewLocalesBtn;

$(document).ready(function () {

    // crear mapa
    mymap = L.map('mapa', {
        zoomSnap: 0.2,
        minZoom: 9,
        maxZoom: 18,
        center: [53.346773, -6.265411],
        zoom: 12,
    });

    //agrego mapa base
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(mymap);

    // posicionar zoom control
    mymap.zoomControl.setPosition('bottomright');

    // agrego boton home
    home = L.Control.extend({
        options: {
            position: 'bottomright'
        },
        onAdd: function (mymap) {
            var home = L.DomUtil.create('div', 'leaflet-bar leaflet-control leaflet-control-custom fa fa-home home-btn');
            home.title = "Home";
            home.style.backgroundColor = 'white';
            home.style.fontSize = '22px';
            home.style.color = '#383838';
            home.style.alignItems = 'center';
            home.style.display = 'flex';
            home.style.justifyContent = 'center';
            home.style.width = '26px';
            home.style.cursor = 'pointer';
            home.style.height = '26px';
            home.onclick = function () {
                mymap.fitBounds([
                    [53.408534, -6.226081],
                    [53.341034, -6.138493],
                    [53.267497, -6.245350],
                    [53.350052, -6.383451]
                ]);
            }
            return home;
        }
    });
    mymap.addControl(new home());

    // agrego boton gps
    L.control.locate({
        position: 'bottomright',
        maxZoom: 12,
        flyTo: true,
        icon: 'fa fa-crosshairs',
        strings: {
            title: 'Mostrar ubicacion',
        }
    }).addTo(mymap);

    // Creo instancia de sidebar
    sidebar = L.control.sidebar({
        container: 'sidebar'
    }).addTo(mymap).open('tab-about');

    // convierte listado de categorias en dropdown list
    $(document).ready(function () {
        $('.nav').navgoco({ accordion: true });
    });

    //creo input de search box
    var searchBoxExtend = L.Control.extend({
        options: {
            position: "topright"
        },
        onAdd: function (mymap) {
            this._div = L.DomUtil.create('div', 'searchBox');
            L.DomEvent.disableClickPropagation(this._div);
            this.update();
            return this._div;
        },
        update: function (d) {
            this._div.innerHTML = "<input type='text' class='typeahead tt-query' autocomplete='off' spellcheck='false' placeholder='¿Qué buscas en tu ciudad?'>";
        }
    });
    var searchBox = new searchBoxExtend().addTo(mymap);

    // Defino local dataset
    var etiquetas = ['Arroz Chino', 'Arepa', 'Empanada', 'Cachapa', 'Cachito', 'Casabe', 'Discoteca', 'Golfeado', 'Hamburguesa', 'Harina Pan', 'Pabellon', 'Panaderia ', 'Peluqueria', 'Papelon', 'Patacon', 'Pepito', 'Perro Caliente', 'Pescado', 'Remesa', 'Sopa', 'Sushi', 'Tequeño', 'Torta'];

    // Creo el suggestion engine
    var etiquetas = new Bloodhound({
        datumTokenizer: Bloodhound.tokenizers.whitespace,
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        local: etiquetas
    });

    // Inicializa typeahead
    $('.typeahead').typeahead({
        hint: true,
        highlight: true,
        minLength: 1
    },
        {
            name: 'etiquetas',
            source: etiquetas
        });

    //funciones al seleccionar resultado
    $(".typeahead").bind("typeahead:select", function (ev, suggestion) {
        $(".search-ul").empty();

        //popula listado con delivery
        $.each(deliveryData, function (index, object) {
            if (object.ETIQUETAS && object.ETIQUETAS.includes(suggestion)) {
                return $("ul.search-ul").append("<li class='search-li'><a class='search-link-delivery' data-id='" + object.COD + "'><table class='search-table'><tr><td class='td-search-info-img'><img class='search-info-img' src='images/info-img/delivery/" + object.COD + ".jpg' title='" + object.NOMBRE + "'></td><td><div class='search-info-div'><h4 class='search-nombre'>" + object.NOMBRE + "</h4><p class='search-descrip'>" + object.DESCRIPCION + "</p><p class='search-tipo'>Solo delivery.</p></div></td></tr></table></a></li>");
            }
        });
        $(".search-link-delivery").on('click', mapInfoDelivery);

        //popula listado con lugares
        $.each(localesData.features, function (index, object) {
            if (object.properties.ETIQUETAS && object.properties.ETIQUETAS.includes(suggestion)) {
                return $("ul.search-ul").append("<li class='search-li'><a class='search-link-lugares' data-id='" + object.properties.COD + "'><table class='search-table'><tr><td class='td-search-info-img'><img class='search-info-img' src='images/info-img/lugares/" + object.properties.COD + ".jpg' title='" + object.properties.NOMBRE + "'></td><td><div class='search-info-div'><h4 class='search-nombre'>" + object.properties.NOMBRE + "</h4><p class='search-descrip'>" + object.properties.DESCRIPCION + "</p><p class='search-direccion'>" + object.properties.CALLE + " " + object.properties.ALTURA + ", " + object.properties.BARRIO + "." + "</p></div></td></tr></table></a></li>");
            }
        });
        $(".search-link-lugares").on('click', function (e) {
            sidebar.open('tab-info-local');
            dataId = $(this).attr("data-id");
            clickOnMapItem(dataId);
        });

        var unorderUl = document.querySelector(".search-ul");
        for (var i = unorderUl.children.length; i >= 0; i--) {
            unorderUl.appendChild(unorderUl.children[Math.random() * i | 0]);
        }

        sidebar.open('tab-search');

        $('.typeahead').typeahead('val', '');
    });

    // creo variable que define ventana emergente principal topright
    var ventanaNewLocales = L.control();

    // creo elemento DOM que contendra ventana emergente principal
    ventanaNewLocales.onAdd = function (mymap) {
        this._div = L.DomUtil.create('div', 'ventanaNewLocales'); // create a div with a class "info"
        this.update();
        return this._div;
    };

    // Agrego informacion a ventana emergente principal
    ventanaNewLocales.update = function (props) {
        this._div.innerHTML = "<a id='close' class='leaflet-popup-close-button'>&#215</a><div class='ventanaEmergentePrincipalContent'><h4>¿Nos falta un negocio?</h4><p>¡Envíanos los datos y lo agregamos!</p><button class='ventanaEmergentePrincipal'>Enviar datos</button></div>";
    };

    //agrego ventana emergente principal a mapa
    ventanaNewLocales.addTo(mymap);

    // Elimina ventana emergente principal
    $("#close").on('click', function (e) {
        ventanaNewLocales.remove(mymap);
    });

    //Agrego funcion a boton de ventana emergente principal
    $(".ventanaEmergentePrincipal").on('click', function (e) {
        sidebar.open('tab-form-sug-nuevo');
    });

    /*creo marca de agua con logo*/
    L.Control.Watermark = L.Control.extend({
        onAdd: function (map) {
            var img = L.DomUtil.create('img');
            img.src = 'images/isotipo-bta-sm.png';
            img.style.width = '160px';
            return img;
        },
        onRemove: function (map) {
            // Nothing to do here
        }
    });
    L.control.watermark = function (opts) {
        return new L.Control.Watermark(opts);
    }
    L.control.watermark({ position: 'bottomleft' }).addTo(mymap);

    // resize listas de categorias para fit con windows
    $(function () {
        var h = window.innerHeight;
        var newH = h * 0.50;
        $(".navRestaurantesList").css("max-height", newH);
        $(".navPanaderiasList").css("max-height", newH);
        $(".navLocalesList").css("max-height", newH);
        $(".navServiciosList").css("max-height", newH);
        $(".navDiscotecaList").css("max-height", newH);

        $(".navCriollaList").css("max-height", newH);
        $(".navRapidaList").css("max-height", newH);
        $(".navAsiaticaList").css("max-height", newH);
        $(".navPostresList").css("max-height", newH);

        $(".navArteList").css("max-height", newH);
        $(".navCulturaList").css("max-height", newH);
        $(".navEsteticaList").css("max-height", newH);
        $(".navTrasladosList").css("max-height", newH);
        $(".navProductoresList").css("max-height", newH);
    });

    // Excepciones al abrir con telefono
    if (L.Browser.mobile) {
        $("#wp-share-btn").removeClass("hidden");
        sidebar.close();
        mymap.removeControl(mymap.zoomControl);
        $('.home-btn').css('width', '30px');
        $('.home-btn').css('height', '30px');
        mymap.fitBounds([
            [53.408534, -6.226081],
            [53.341034, -6.138493],
            [53.267497, -6.245350],
            [53.350052, -6.383451]
        ]);
    };

    $.ajax("./php/podcast.php", {
        success: function (resp) {
            $(".tab-podcast-window").append(resp);
        }
    })

    getDataLocales();
    getDataDelivery();
});

function getDataLocales() {
    $.ajax("./php/arg/consulta-locales-irl-dub.php", {
        success: function (respLocales) {
            mapDataLocales(respLocales);
        },
        error: function () {
            setTimeout(function () {
                getDataLocales();
            }, 2000)
        }
    })
};

function getDataDelivery() {
    $.ajax("./php/arg/consulta-delivery-irl-dub.php", {
        success: function (respDelivery) {
            mapDataDelivery(respDelivery);
        },
        error: function () {
            setTimeout(function () {
                getDataDelivery();
            }, 2000)
        }
    })
};