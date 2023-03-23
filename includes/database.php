<?php
$servername = "localhost";
$username = "geekdesigns";
$password = "";

$conn = new PDO("mysql:host=$servername;dbname=onlineshop", $username, $password);

if($conn->connect_error){
    die("Connection Failed: " . mysqli_connect_error());
}
echo("Connected Successfully");
?>