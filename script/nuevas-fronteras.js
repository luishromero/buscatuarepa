$(function () {
    $('#form-nuevas-fronteras').on('submit', function (e) {
        e.preventDefault();
        var response = grecaptcha.getResponse();
        if (response.length === 0) {
            alert("Resuelva el captcha!");
        } else {
            $.ajax({
                type: 'post',
                url: 'https://buscatuarepa.com/php/form-nuevas-fronteras.php',
                data: $('#form-nuevas-fronteras').serialize(),
                success: function () {
                }
            });
            $("#form-nuevas-fronteras-div").addClass("displayNone");
            $("#msj-after-form-submit").removeClass("displayNone");
            setTimeout(function () { window.location.href = 'https://buscatuarepa.com'; }, 3000);
        }
    })
});