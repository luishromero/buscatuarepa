/* Formulario sugerencia nuevo local */
$(function () {
  $("#form-sug-nuevo-local").on("submit", function (e) {
    e.preventDefault();
    $.ajax({
      type: "post",
      url: "http://localhost:8181/php/arg/form-sug-nuevo-local-arg.php",
      data: $("#form-sug-nuevo-local").serialize(),
      success: function () {
        resetSugLocal();
      },
    });
    $("#form-sug-nuevo-local").addClass("displayNone");
    $("#msj-after-form-sug-nuevo-local").removeClass("displayNone");
  });
});

function resetSugLocal() {
  $("#form-sug-nuevo-local").find("input:text").val("");
  $("#form-sug-nuevo-local-tipo-contacto").prop("selectedIndex", 0);
}

$(function () {
  $(".btn-reset-form-sug-local").on("click", function (e) {
    $("#msj-after-form-sug-nuevo-local").addClass("displayNone");
    $("#form-sug-nuevo-local").removeClass("displayNone");
    sidebar.open("tab-form-sug-nuevo-local");
  });
});

/* Formulario sugerencia nuevo delivery */
$(function () {
  $("#form-sug-nuevo-delivery").on("submit", function (e) {
    e.preventDefault();
    $.ajax({
      type: "post",
      url: "http://localhost:8181/php/arg/form-sug-nuevo-delivery-arg.php",
      data: $("#form-sug-nuevo-delivery").serialize(),
      success: function () {
        resetSugDelivery();
      },
    });
    $("#form-sug-nuevo-delivery").addClass("displayNone");
    $("#msj-after-form-sug-nuevo-delivery").removeClass("displayNone");
  });
});

function resetSugDelivery() {
  $("#form-sug-nuevo-delivery").find("input:text").val("");
  $("#form-sug-nuevo-delivery-tipo-contacto").prop("selectedIndex", 0);
}

$(function () {
  $(".btn-reset-form-sug-delivery").on("click", function (e) {
    $("#msj-after-form-sug-nuevo-delivery").addClass("displayNone");
    $("#form-sug-nuevo-delivery").removeClass("displayNone");
    sidebar.open("tab-form-sug-nuevo-delivery");
  });
});

/* Formulario sugerencia edicion para local y delivery */
$(function () {
  $("#form-sug-edicion").on("submit", function (e) {
    e.preventDefault();
    $.ajax({
      type: "post",
      url: "http://localhost:8181/php/arg/form-sug-edicion-arg.php",
      data: $("#form-sug-edicion").serialize(),
      success: function () {
        resetSugEdicion();
      },
    });
    $("#form-sug-edicion").addClass("displayNone");
    $("#msj-after-form-sug-edicion").removeClass("displayNone");
  });
});

function resetSugEdicion() {
  $("#tipo-form-sug-edicion").prop("selectedIndex", 0);
  $("#obs-form-sug-edicion").val("");
}
