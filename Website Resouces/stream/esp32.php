<?php
include "koneksi.php";

// Mengambil data dari nodeMCU sekaligus konversi ke float menggunakan floatval()
$temperature    = floatval($_GET['temperature']);
$humidity       = floatval($_GET['humidity']);
$fireStatus     = $_GET['fireStatus'];

$sql_1 = mysqli_query($conn, "SELECT `status` FROM `tbl_status`");
if ($row = mysqli_fetch_array($sql_1)) {
    $status  = $row[0];
}

$query = "INSERT INTO `tbl_data` (`id_data`, `temp`, `hum`, `fire_stat`) VALUES (NULL, '$temperature', '$humidity', '$fireStatus');";

if (mysqli_query($conn, $query)) {
    // echo $query;
    echo "[Server] Data berhasil dimasukkan";
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($conn);
    die();
}
