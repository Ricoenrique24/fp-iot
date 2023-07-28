<?php
$conn = mysqli_connect("localhost", "root", "", "db_monitoring");
if(!$conn) {
    die("Conn fail: " . mysqli_connect_error());
}
?>