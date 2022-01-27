<?php

$im = imagecreatetruecolor(800, 350);

// Add text using a font from local file
imagefttext(
    $im,
    50,
    0,
    50,
    100,
    imagecolorallocate($im, 0, 150, 0),
    './terminal.TTF',
    "ip: {$_SERVER["REMOTE_ADDR"]}"
);

imagefttext(
    $im,
    50,
    0,
    50,
    200,
    imagecolorallocate($im, 0, 150, 0),
    './terminal.TTF',
    "last seen: 24-1-2021"
);

imagefttext(
    $im,
    50,
    0,
    50,
    300,
    imagecolorallocate($im, 0, 150, 0),
    './terminal.TTF',
    "user-agent: {$_SERVER["HTTP_USER_AGENT"]}"
);


header('Content-Type: image/png');
imagepng($im);
imagedestroy($im);
