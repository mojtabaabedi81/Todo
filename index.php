<?php

require_once __DIR__ . '/config/config.php';
require_once __DIR__ . '/database/database.php';


if (isset($_GET['migrate']) and !empty($_GET['migrate'])) {

    require_once __DIR__ . '/database/migration.php';

    var_dump(create_todo_table());

    echo "<br><br>";

    var_dump(create_users_table());
    return;
}

$url = trim($_SERVER['REQUEST_URI'], '/');
$path = !empty($url) ? $url : 'user/login';

list($controller, $method) = explode('/', $path);

$file = __DIR__ . "/controller/{$controller}_controller.php";
if (file_exists($file)){

    require $file;
} else {

    die('kheili khari');
}

if (function_exists($method)){

    $method($_REQUEST);
} else {

    die('404 not found !');
}
