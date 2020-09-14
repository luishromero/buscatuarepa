<?php
include_once('../mysql-login-sugerencias.php');
$captcha = filter_input(INPUT_POST, 'g-recaptcha-response');
$ciudad = filter_input(INPUT_POST, 'ciudad_delivery');
$nombre = filter_input(INPUT_POST, 'nombre_delivery');
$producto = filter_input(INPUT_POST, 'producto_delivery');
$tipocontacto = filter_input(INPUT_POST, 'contacto_delivery');
$contacto = filter_input(INPUT_POST, 'contacto_valor_delivery');
$sql = "INSERT INTO SUG_CHL (TIPO_EMPRESA, CIUDAD, NOMBRE, PRODUCTO, TIPO_CONTACTO, CONTACTO) VALUES ('DELIVERY', '$ciudad', '$nombre', '$producto', '$tipocontacto', '$contacto');";
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
        echo 'Hemos registrado su sugerencia con exito!';
    } else {
        echo "Error al momento de registrar la sugerencia";
    }
} else {
    echo '<h2>Error: No se ha podido comprobar que usted no es un bot</h2>';
}
$conn = NULL;
