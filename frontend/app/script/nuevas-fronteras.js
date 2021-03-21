$(function () {
  $("#form-nuevas-fronteras").on("submit", function (e) {
    e.preventDefault();
    $.ajax({
      type: "post",
      url: "/api/new-frontier",
      data: $("#form-nuevas-fronteras").serialize(),
      success: function () {},
    });
    $("#form-nuevas-fronteras-div").addClass("displayNone");
    $("#msj-after-form-submit").removeClass("displayNone");
    // setTimeout(function () {
    //   window.location.href = "http://localhost:8181";
    // }, 3000);
  });
});
