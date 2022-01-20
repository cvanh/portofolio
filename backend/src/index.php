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
    $query = "SELECT * FROM portofolio where id =  ". $amount;
    $data = format_query($database,$query);
    echo $data;
});

// get all posts
$router->get('/crud/getposts', function () use ($database) {
    $query = "SELECT * FROM portofolio";
    $data = format_query($database,$query);
    echo $data;
});

// get all data from contact
$router->get('/contact/get', function () use ($database) {
    $query = "SELECT * FROM contacts";
    $data = format_query($database,$query);
    echo json_encode($data, JSON_PRETTY_PRINT);
});

// add a contact to the table
$router->post('/contact/insert', function () use ($database) {
    $query = `
    INSERT INTO contacts (id, name, email, content,date) VALUES (NULL, '{$_POST["name"]}', '{$_POST["email"]}', '{$_POST["content"]}', NOW()); 
    `;
    $data = format_query($database,$query);
    echo json_encode($data, JSON_PRETTY_PRINT);
});

$router->run();
