<?php
include_once('../mysql-login-sugerencias.php');

$nombre = filter_input(INPUT_POST, 'nombre_local');
$ciudad = filter_input(INPUT_POST, 'ciudad_local');
$direccion = filter_input(INPUT_POST, 'direccion_local');
$tipocontacto = filter_input(INPUT_POST, 'contacto_local');
$contacto = filter_input(INPUT_POST, 'contacto_valor_local');
$sql = "INSERT INTO SUG_CHL (TIPO_EMPRESA, NOMBRE, CIUDAD, DIRECCION, TIPO_CONTACTO, CONTACTO) VALUES ('LOCAL', '$nombre', '$ciudad', '$direccion', '$tipocontacto', '$contacto');";
$conn = new PDO('mysql:host=' . $hostname . ';dbname=' . $database, $username, $password);
if (!$conn) {
    echo 'no connection\n';
    exit;
}

$ip = $_SERVER['REMOTE_ADDR'];

    if ($conn->query($sql)) {
        echo 'Hemos registrado su sugerencia con exito!';
    } else {
        echo "Error al momento de registrar la sugerencia";
    }

$conn = NULL;
