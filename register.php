<?php
require "database.php";
$fullname = $_POST["name"];
session_start();
$email = $_POST["email"];
$_SESSION['email'] =$email;
$password = md5($_POST["password"]);
$sql_select = "SELECT * FROM users";
$result = mysqli_query($conn,$sql_select);
$user_data = mysqli_fetch_assoc($result);
//var_dump($user_data);
//die();
if (($user_data['email'] == $_POST['email'] && ($_POST['name']) == $user_data['name'] ))
{
    echo "wrong";
    exit();
}else

{
    $sql = "INSERT INTO users (name,email,password) VALUES (?,?,?)";
    $stmt = mysqli_stmt_init($conn);
    mysqli_stmt_prepare($stmt, $sql);
    mysqli_stmt_bind_param($stmt, "sss", $fullname, $email, $password);
    mysqli_stmt_execute($stmt);
    echo "<div class='alert alert-success'>You are registered </div>";

    header("Location:login&register.php");
}


