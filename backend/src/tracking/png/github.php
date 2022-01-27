<?php
require '../../../vendor/autoload.php';
require_once("../../../lib/db.php");
require_once("../../functions/format_query.php");

// load the .env
$dotenv = Dotenv\Dotenv::createImmutable("../../../");
$dotenv->load();

// create the database connection
$database = new Database($_ENV["MYSQL_HOST"], $_ENV["MYSQL_USERNAME"], $_ENV["MYSQL_PASSWORD"], $_ENV["MYSQL_DATABASE"]);

$database->query("INSERT INTO `tracking` (`id`, `ip`, `last_seen`, `last_agent`,`track_id`) VALUES (NULL, '{$_SERVER["REMOTE_ADDR"]}', NOW(), '{$_SERVER["HTTP_USER_AGENT"]}','{$_GET["code"]}');");

$last_seen = $database->format_query("SELECT * FROM `tracking` WHERE ip = "{$_SERVER['REMOTE_ADDR']}" ORDER BY last_seen DESC; ");
var_dump($last_seen);   

// // create the blank image canvas
// $im = imagecreatetruecolor(800, 450);

// // create the line for user's ip
// imagefttext(
//     $im,
//     50,
//     0,
//     50,
//     100,
//     imagecolorallocate($im, 0, 150, 0),
//     './terminal.TTF',
//     "ip: {$_SERVER["REMOTE_ADDR"]}"
// );

// // creates the last seen
// imagefttext(
//     $im,
//     50,
//     0,
//     50,
//     200,
//     imagecolorallocate($im, 0, 150, 0),
//     './terminal.TTF',
//     "last seen: 24-1-2021"
// );

// // creates the line for the user-agent
// imagefttext(
//     $im,
//     50,
//     0,
//     50,
//     300,
//     imagecolorallocate($im, 0, 150, 0),
//     './terminal.TTF',
//     "user-agent: {$_SERVER["HTTP_USER_AGENT"]}"
// );

// // creates the line for the code
// imagefttext(
//     $im,
//     50,
//     0,
//     50,
//     400,
//     imagecolorallocate($im, 0, 150, 0),
//     './terminal.TTF',
//     "code?: {$_GET["code"]}"
// );


// header('Content-Type: image/png');
// imagepng($im);
// imagedestroy($im);
