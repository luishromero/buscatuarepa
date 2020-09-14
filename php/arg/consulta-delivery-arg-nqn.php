<?php
include_once('../mysql-login-consultas.php');
//$user & $password should come from config file
$conn = new PDO('mysql:host='.$hostname.';dbname='.$database, $username, $password);
if (!$conn) {
	echo 'no connection\n';
	exit;
}
$sql = 'SELECT * FROM ARG_NEUQUEN_DEL ORDER BY RAND()';
$rs = $conn->query($sql);
if (!$rs){
    echo 'An SQL error occured.\n';
    exit;
}else{
    $results = $rs->fetchAll(PDO::FETCH_ASSOC);
    header('Content-type: application/json');
    echo json_encode($results);
}
$conn = NULL;
?>