<?php
include_once('../mysql-login-sugerencias.php');

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

$ip = $_SERVER['REMOTE_ADDR'];

    if ($conn->query($sql)) {
        echo 'Hemos registrado su sugerencia con exito!';
    } else {
        echo "Error al momento de registrar la sugerencia";
    }

$conn = NULL;
