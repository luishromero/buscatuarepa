<?php
include_once('../mysql-login-sugerencias.php');

$cod = filter_input(INPUT_POST, 'cod-Sug-Edi');
$nombre = filter_input(INPUT_POST, 'nombre-Sug-Edi');
$tipo_edicion = filter_input(INPUT_POST, 'tipo_edicion');
$sug_edicion = filter_input(INPUT_POST, 'sug_edicion');
$sql = "INSERT INTO EDI_ARG (COD, NOMBRE, TIPO_EDI, EDI_SUG) VALUES ('$cod', '$nombre', '$tipo_edicion', '$sug_edicion');";
$conn = new PDO('mysql:host=' . $hostname . ';dbname=' . $database, $username, $password);
if (!$conn) {
    echo 'no connection\n';
    exit;
}

$ip = $_SERVER['REMOTE_ADDR'];

    if ($conn->query($sql)) {
        echo 'Sugerencia procesada con exito';
    } else {
        echo 'Error al momento de registrar la sugerencia';
    }

$conn = NULL;
?>