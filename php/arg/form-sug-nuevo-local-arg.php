<?php
include_once('../mysql-login-sugerencias.php');
$captcha = filter_input(INPUT_POST, 'g-recaptcha-response');
$nombre = filter_input(INPUT_POST, 'nombre_local');
$ciudad = filter_input(INPUT_POST, 'ciudad_local');
$direccion = filter_input(INPUT_POST, 'direccion_local');
$tipocontacto = filter_input(INPUT_POST, 'contacto_local');
$contacto = filter_input(INPUT_POST, 'contacto_valor_local');
$sql = "INSERT INTO SUG_ARG (TIPO_EMPRESA, NOMBRE, CIUDAD, DIRECCION, TIPO_CONTACTO, CONTACTO) VALUES ('LOCAL', '$nombre', '$ciudad', '$direccion', '$tipocontacto', '$contacto');";
$conn = new PDO('mysql:host=' . $hostname . ';dbname=' . $database, $username, $password);
if (!$conn) {
    echo 'no connection\n';
    exit;
}
$secretKey = '6Ld4TMQUAAAAACz-dxCl8lR4CvPdUjAXv_xKeWDt';
$ip = $_SERVER['REMOTE_ADDR'];
$url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($secretKey) .  '&response=' . urlencode($captcha);
$response = file_get_contents($url);
$responseKeys = json_decode($response, true);
if ($responseKeys["success"]) {
    if ($conn->query($sql)) {
        echo 'Hemos registrado su sugerencia con exito!';
    } else {
        echo "Error al momento de registrar la sugerencia";
    }
} else {
    echo '<h2>Error: No se ha podido comprobar que usted no es un bot</h2>';
}
$conn = NULL;
