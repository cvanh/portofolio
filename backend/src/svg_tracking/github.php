<?php
require_once("../vendor/autoload.php");

use SVG\SVG;
use SVG\Nodes\Shapes\SVGRect;
use SVG\SVGText;

// image with 100x100 viewport
$image = new SVG(100, 100);
$doc = $image->getDocument();

// blue 40x40 square at (0, 0)
$square = new SVGRect(0, 0, 40, 40);
$square->setStyle('fill', '#0000FF');
$doc->addChild($square);

// $text = (new SVGText($initials, '50%', '50%'))
// ->setFont(new SVGFont('Raleway', 'fonts/raleway.ttf'))
// ->setSize(120);

header('Content-Type: image/svg+xml');
echo $image;