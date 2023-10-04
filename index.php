<?php
require_once __DIR__ . "/helper/helper.php";
require_once __DIR__ . '/config/config.php';
require_once __DIR__ . '/database/database.php';
require_once __DIR__ . '/model/user_model.php';
//error_reporting(1);

if (isset($_GET['migrate']) and !empty($_GET['migrate'])) {

    require_once __DIR__ . '/database/migration.php';

    var_dump(create_todo_table());

    echo "<br><br>";

    var_dump(create_users_table());
    return;
}

$url = trim($_SERVER['REQUEST_URI'], '/');
$path = !empty($url) ? $url : 'landing/welcome';

$query_params = explode('?', $path);
if (!empty($query_params[1])) {
    $path = explode('?', $path);
}

list($controller, $method) = explode('/', $path);

$file = __DIR__ . "/controller/{$controller}_controller.php";
if (file_exists($file)) {

    require $file;
} else {

    die('something went wrong');
}

if (function_exists($method)) {

    $method($_REQUEST);
} else {

    die('404 not found !');
}
