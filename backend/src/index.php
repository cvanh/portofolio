<?php
require '../vendor/autoload.php';
require_once ("../lib/db.php");

// load the .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// create the database connection
$database = new Database($_ENV["MYSQL_HOST"], $_ENV["MYSQL_USERNAME"], $_ENV["MYSQL_PASSWORD"], $_ENV["MYSQL_DATABASE"]);

$router = new \Bramus\Router\Router();

$router->get('/test', function () use ($database) {
    echo "kaas";
    $query = "SELECT * FROM portofolio";
    var_dump($database->query($query));    
});

$router->run();
