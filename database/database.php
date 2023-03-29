<?php
$servername = "altheaintl.com";
$username = "kojic26_jpynzon";
$password = "rememberme123";
$dbname = "kojic26_onlineshop";

// Create connection
$connect = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
}

