var recaptcha1;
var recaptcha2;
var recaptcha3;

var CaptchaCallback = function () {
    recaptcha1 = grecaptcha.render('recaptcha1', { 'sitekey': '6Ld4TMQUAAAAAGWgVHuG-5T87136T66FeMPRkLvo' });
    recaptcha2 = grecaptcha.render('recaptcha2', { 'sitekey': '6Ld4TMQUAAAAAGWgVHuG-5T87136T66FeMPRkLvo' });
    recaptcha3 = grecaptcha.render('recaptcha3', { 'sitekey': '6Ld4TMQUAAAAAGWgVHuG-5T87136T66FeMPRkLvo' });
};

function validateRecaptcha(recaptchaId) {
    var response = grecaptcha.getResponse(recaptchaId);
    if (response.length === 0) {
        return false;
    } else {
        return true;
    }
};

function resetCaptchas() {
    grecaptcha.reset(recaptcha1);
    grecaptcha.reset(recaptcha2);
    grecaptcha.reset(recaptcha3);
};

/* Formulario sugerencia nuevo local */
$(function () {
    $('#form-sug-nuevo-local').on('submit', function (e) {
        e.preventDefault();
        if (validateRecaptcha(recaptcha1) === true) {
            $.ajax({
                type: 'post',
                url: 'https://buscatuarepa.com/php/ury/form-sug-nuevo-local-ury.php',
                data: $('#form-sug-nuevo-local').serialize(),
                success: function () {
                    resetSugLocal();
                }
            });
            $("#form-sug-nuevo-local").addClass("displayNone");
            $("#msj-after-form-sug-nuevo-local").removeClass("displayNone");
        } else {
            alert("Resuelva el captcha!");
        }
    });
});

function resetSugLocal() {
    $('#form-sug-nuevo-local').find('input:text').val('');
    $('#form-sug-nuevo-local-tipo-contacto').prop('selectedIndex', 0);
    resetCaptchas()
};

$(function () {
    $(".btn-reset-form-sug-local").on('click', function (e) {
        $("#msj-after-form-sug-nuevo-local").addClass("displayNone");
        $("#form-sug-nuevo-local").removeClass("displayNone");
        sidebar.open('tab-form-sug-nuevo-local');
    });
});

/* Formulario sugerencia nuevo delivery */
$(function () {
    $('#form-sug-nuevo-delivery').on('submit', function (e) {
        e.preventDefault();
        if (validateRecaptcha(recaptcha2) === true) {
            $.ajax({
                type: 'post',
                url: 'https://buscatuarepa.com/php/ury/form-sug-nuevo-delivery-ury.php',
                data: $('#form-sug-nuevo-delivery').serialize(),
                success: function () {
                    resetSugDelivery();
                }
            });
            $("#form-sug-nuevo-delivery").addClass("displayNone");
            $("#msj-after-form-sug-nuevo-delivery").removeClass("displayNone");
        } else {
            alert("Resuelva el captcha!");
        }
    });
});

function resetSugDelivery() {
    $('#form-sug-nuevo-delivery').find('input:text').val('');
    $('#form-sug-nuevo-delivery-tipo-contacto').prop('selectedIndex', 0);
    resetCaptchas()
};

$(function () {
    $(".btn-reset-form-sug-delivery").on('click', function (e) {
        $("#msj-after-form-sug-nuevo-delivery").addClass("displayNone");
        $("#form-sug-nuevo-delivery").removeClass("displayNone");
        sidebar.open('tab-form-sug-nuevo-delivery');
    });
});

/* Formulario sugerencia edicion para local y delivery */
$(function () {
    $('#form-sug-edicion').on('submit', function (e) {
        e.preventDefault();
        if (validateRecaptcha(recaptcha3) === true) {
            $.ajax({
                type: 'post',
                url: 'https://buscatuarepa.com/php/ury/form-sug-edicion-ury.php',
                data: $('#form-sug-edicion').serialize(),
                success: function () {
                    resetSugEdicion();
                }
            });
            $("#form-sug-edicion").addClass("displayNone");
            $("#msj-after-form-sug-edicion").removeClass("displayNone");
        } else {
            alert("Resuelva el captcha!");
        }
    });
});

function resetSugEdicion() {
    $('#tipo-form-sug-edicion').prop('selectedIndex', 0);
    $('#obs-form-sug-edicion').val('');
    resetCaptchas()
};