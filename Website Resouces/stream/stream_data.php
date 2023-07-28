<?php 
include 'koneksi.php';

$sql    = mysqli_query($conn, "SELECT * FROM `tbl_data` ORDER BY `tbl_data`.`id_data`");
$result = array();


while ($row = mysqli_fetch_array($sql)) {
    array_push($result, array('temperature'=> $row[1],  'humidity'=> $row[2], 'fire-stat'=> $row[3]));
}

echo json_encode(array("result_1" => $result));
?>