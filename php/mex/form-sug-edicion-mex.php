<?php
include_once('../mysql-login-sugerencias.php');
$captcha = filter_input(INPUT_POST, 'g-recaptcha-response');
$cod = filter_input(INPUT_POST, 'cod-Sug-Edi');
$nombre = filter_input(INPUT_POST, 'nombre-Sug-Edi');
$tipo_edicion = filter_input(INPUT_POST, 'tipo_edicion');
$sug_edicion = filter_input(INPUT_POST, 'sug_edicion');
$sql = "INSERT INTO EDI_MEX (COD, NOMBRE, TIPO_EDI, EDI_SUG) VALUES ('$cod', '$nombre', '$tipo_edicion', '$sug_edicion');";
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
?>