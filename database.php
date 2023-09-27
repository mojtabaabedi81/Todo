<?php
$servername = "localhost";
$pass = "";
$username = "root";
$dbname = "tirdad";
$conn = mysqli_connect($servername,$username,$pass,$dbname);
if (!$conn){
    die("something went wrong;");
}

