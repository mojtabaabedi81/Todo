<?php
session_start();
if(isset($_SESSION)){
    require "database.php";
    $import_email = $_POST['email'];
    $import_password = md5($_POST['password']);
    $sql = "SELECT * FROM users where email = '$import_email'";
    $result = mysqli_query($conn, $sql);
    $user_data = mysqli_fetch_assoc($result);
    $email = $user_data['email'];
    $password = $user_data['password'];
    if ($import_password == $password) {
        header("location:todo_list.php");
    }else echo  " your password is wrong";
    session_destroy();
}
?>