$(function () {
  $("#form-nuevas-fronteras").on("submit", function (e) {
    e.preventDefault();
    $.ajax({
      type: "post",
      url: "http://localhost:8181/php/form-nuevas-fronteras.php",
      data: $("#form-nuevas-fronteras").serialize(),
      success: function () {},
    });
    $("#form-nuevas-fronteras-div").addClass("displayNone");
    $("#msj-after-form-submit").removeClass("displayNone");
    setTimeout(function () {
      window.location.href = "http://localhost:8181/buscatuarepa.html";
    }, 3000);
  });
});
