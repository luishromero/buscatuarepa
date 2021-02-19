<?php
include_once('mysql-login-sugerencias.php');
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
$ip = $_SERVER['REMOTE_ADDR'];
if ($conn->query($sql)) {
  echo 'Sugerencia procesada con exito';
} else {
  echo 'Error al momento de registrar la sugerencia';
}
$conn = NULL;
