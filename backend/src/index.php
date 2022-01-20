<?php
require '../vendor/autoload.php';
require_once("../lib/db.php");
require_once("./functions/format_query.php");

// load the .env
$dotenv = Dotenv\Dotenv::createImmutable("../");
$dotenv->load();

// create the database connection
$database = new Database($_ENV["MYSQL_HOST"], $_ENV["MYSQL_USERNAME"], $_ENV["MYSQL_PASSWORD"], $_ENV["MYSQL_DATABASE"]);

$router = new \Bramus\Router\Router();

// get specific post based on id
$router->get('/crud/getpost/(\d+)', function ($amount) use ($database) {
    $query = "SELECT * FROM portofolio where id =  " . $amount;
    $data = format_query($database, $query);
    echo $data;
});

// get all posts with the limit
$router->get('/crud/getposts', function () use ($database) {
    $amount = (int)$_GET["limit"]; // makes shure it's only a int to prevent sql injection
    $query = "SELECT * FROM portofolio limit " . $amount;
    $data = format_query($database, $query);
    echo $data;
});

// get all data from contact
$router->get('/contact/get', function () use ($database) {
    $query = "SELECT * FROM contacts";
    $data = format_query($database, $query);
    echo json_encode($data, JSON_PRETTY_PRINT);
});

// add a contact to the table
$router->post('/contact/insert', function () use ($database) {
    $query = `
    INSERT INTO contacts (id, name, email, content,date) VALUES (NULL, '{$_POST["name"]}', '{$_POST["email"]}', '{$_POST["content"]}', NOW()); 
    `;
    $database->query($query);
    echo "succes";
});

// creates a blog
$router->post('/crud/createblog', function () use ($database) {
    $query = "
    INSERT INTO contacts (id, name, email, content,date) VALUES (NULL, '{$_POST["name"]}', '{$_POST["email"]}', '{$_POST["content"]}', NOW()); 
    ";
    $database->query($query);
    echo "succes";
});

// test api end point https://www.php.net/manual/en/book.apcu.php
$router->get('/testing', function () use ($database) {
    echo "c";
    $apc_key = "{$_SERVER['SERVER_NAME']}~login:{$_SERVER['REMOTE_ADDR']}";
    $apc_blocked_key = "{$_SERVER['SERVER_NAME']}~login-blocked:{$_SERVER['REMOTE_ADDR']}";

    $tries = (int)apc_fetch($apc_key);
    if ($tries >= 10) {
        header("HTTP/1.1 429 Too Many Requests");
        echo "You've exceeded the number of login attempts. We've blocked IP address {$_SERVER['REMOTE_ADDR']} for a few minutes.";
        exit();
    }

    $success = false;
    if (!$success) {
        $blocked = (int)apc_fetch($apc_blocked_key);
        echo "a";
        apc_store($apc_key, $tries + 1, pow(2, $blocked + 1) * 60);  # store tries for 2^(x+1) minutes: 2, 4, 8, 16, ...
        apc_store($apc_blocked_key, $blocked + 1, 86400);  # store number of times blocked for 24 hours
    } else {
        apc_delete($apc_key);
        apc_delete($apc_blocked_key);
        echo "b";
    }
});

$router->run();