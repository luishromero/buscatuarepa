<?php
include_once('mysql-login-sugerencias.php');
$captcha = filter_input(INPUT_POST, 'g-recaptcha-response');
$pais = filter_input(INPUT_POST, 'pais');
$ciudad = filter_input(INPUT_POST, 'ciudad');
$tipo_empresa = filter_input(INPUT_POST, 'tipo_empresa');
$nombre = filter_input(INPUT_POST, 'nombre');
$direccion = filter_input(INPUT_POST, 'direccion');
$tipo_contacto = filter_input(INPUT_POST, 'tipo_contacto');
$contacto = filter_input(INPUT_POST, 'contacto');
$sql = "INSERT INTO NUEVASFRONTERAS (PAIS, CIUDAD, NEGOCIO, NOMBRE, DIRECCION, TIPO_CONTACTO, CONTACTO) VALUES ('$pais', '$ciudad', '$tipo_empresa', '$nombre', '$direccion', '$tipo_contacto', '$contacto');";
$conn = new PDO('mysql:host=' . $hostname . ';dbname=' . $database, $username, $password);
if (!$conn) {
    echo 'no connection\n';
    exit;
}
$secretKey = '6Ld4TMQUAAAAACz-dxCl8lR4CvPdUjAXv_xKeWDt';
$ip = $_SERVER['REMOTE_ADDR'];
$url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($secretKey) .  '&response=' . urlencode($captcha);
$response = file_get_contents($url);
$responseKeys = json_decode($response,true);
if($responseKeys["success"]) {
    if ($conn->query($sql)) {
        echo 'Sugerencia procesada con exito';
    } else {
        echo 'Error al momento de registrar la sugerencia';
    }
} else {
    echo '<h2>Error: No se ha podido comprobar que usted no es un bot</h2>';
}
$conn = NULL;
