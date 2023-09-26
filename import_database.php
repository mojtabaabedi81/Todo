<?php
require "database.php";
$imported_list = ($_POST['data']);
$sql_2nd = "SELECT * FROM users";
$result = mysqli_query($conn, $sql_2nd);
$row = mysqli_fetch_assoc($result);
$user_id = $row['id'];
$email = $row['email'];
date_default_timezone_set('Asia/Tehran');
$current_time = date('y-m-d h:i:s');
$sql = "INSERT INTO todo (name,email,created_at,status,user_id) VALUES ('$imported_list','$email','$current_time',1,'$user_id')";

if (mysqli_query($conn, $sql)) {
    echo "new record create successfully";
} else {
    echo "error creating record";mysqli_error($conn);
}




