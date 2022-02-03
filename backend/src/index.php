<?php
    // In case one is using PHP 5.4's built-in server
    $filename = __DIR__ . preg_replace('#(\?.*)$#', '', $_SERVER['REQUEST_URI']);
if (php_sapi_name() === 'cli-server' && is_file($filename)) {
    return false;
}

require '../vendor/autoload.php';
require_once("../lib/db.php");
require_once("./functions/format_query.php");

// load the .env
$dotenv = Dotenv\Dotenv::createImmutable("../");
$dotenv->load();

// create the database connection
$database = new Database($_ENV["MYSQL_HOST"], $_ENV["MYSQL_USERNAME"], $_ENV["MYSQL_PASSWORD"], $_ENV["MYSQL_DATABASE"]);

$router = new \Bramus\Router\Router();

// returns the data about the user
$router->get('/tracking',function(){
    $data = Array();
    $data["ip"] = $_SERVER["REMOTE_ADDR"];
    $data["time"] = time();

    echo json_encode($data,true);
});

$router->get('/hello',function(){
    echo "hallo";
});


// get specific post based on id
$router->get('/crud/getpost/(\d+)', function ($amount) use ($database) {
	echo "kaas";
    $query = "SELECT * FROM portofolio where id =  " . $amount;
    $data = format_query($database, $query);
    echo $data;
});

// get all posts with the limit
$router->get('/crud/getposts/(\d+)', function ($amount) use ($database) {
    // $amount = (int)$_GET["limit"]; // makes shure it's only a int to prevent sql injection
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
// $router->setBasePath('/');
$router->run();
