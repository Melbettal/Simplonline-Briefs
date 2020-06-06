<?php 

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "brief9";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);

if (!$conn) {
    die("Connection non effectuer: ".mysqli_connect_error());
}
