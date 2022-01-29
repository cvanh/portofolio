<?php
require '../../../vendor/autoload.php';
require_once("../../../lib/db.php");
require_once("../../functions/format_query.php");
require_once("./functions/get_last_seen.php");
require_once("./functions/report_page_serve.php");
require_once("./functions/get_data.php");

// load the .env
$dotenv = Dotenv\Dotenv::createImmutable("../../../");
$dotenv->load();

$font_file = './terminal.TTF';

// create the database connection
$database = new Database($_ENV["MYSQL_HOST"], $_ENV["MYSQL_USERNAME"], $_ENV["MYSQL_PASSWORD"], $_ENV["MYSQL_DATABASE"]);

report_last_seen($database);
$data = get_data($database);
$last_seen = $data[0]["last_seen"];
$opens = count($data);

// create the blank image canvas
$im = imagecreatetruecolor(3000, 550);

// create the line for user's ip
imagefttext(
    $im,
    50,
    0,
    50,
    100,
    imagecolorallocate($im, 0, 150, 0),
    $font_file,
    "ip: {$_SERVER["REMOTE_ADDR"]}"
);

// creates the last seen
imagefttext(
    $im,
    50,
    0,
    50,
    200,
    imagecolorallocate($im, 0, 150, 0),
    $font_file,
    "last seen: {$last_seen}"
);

// creates the line for the user-agent
imagefttext(
    $im,
    50,
    0,
    50,
    300,
    imagecolorallocate($im, 0, 150, 0),
    $font_file,
    "user-agent: {$_SERVER["HTTP_USER_AGENT"]}"
);

// creates the line for the tracking code
imagefttext(
    $im,
    50,
    0,
    50,
    400,
    imagecolorallocate($im, 0, 150, 0),
    $font_file,
    "code?: {$_GET["code"]}"
);

// get the amount of opens
imagefttext(
    $im,
    50,
    0,
    50,
    500,
    imagecolorallocate($im, 0, 150, 0),
    $font_file,
    "opens: {$opens}"
);

header('Cache-Control: no-cache, no-store, must-revalidate');
header('Content-Type: image/png');
imagepng($im);
imagedestroy($im);
