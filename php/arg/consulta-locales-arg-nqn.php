<?php
include_once('../mysql-login-consultas.php');
$conn = new PDO('mysql:host='.$hostname.';dbname='.$database, $username, $password);
if (!$conn) {
	echo 'no connection\n';
	exit;
}
$sql = 'SELECT * FROM ARG_NEUQUEN ORDER BY RAND()';
$rs = $conn->query($sql);
if (!$rs) {
    echo 'An SQL error occured.\n';
    exit;
}
$geojson = array (
	'type'	=> 'FeatureCollection',
	'features'	=> array()
);
while ($row = $rs->fetch(PDO::FETCH_ASSOC)) {
	$properties = $row;
	unset($properties['Y']);
	unset($properties['X']);
	$feature = array(
		'type'	=> 'Feature',
		'geometry' => array(
			'type' => 'Point',
			'coordinates' => array(
					$row['X'],
					$row['Y']
					)
			),
		'properties' => $properties
	);
	array_push($geojson['features'], $feature);
}
header('Content-type: application/json');
echo json_encode($geojson);
$conn = NULL;
?>