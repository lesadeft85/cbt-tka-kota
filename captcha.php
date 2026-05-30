<?php
// Simple GD-based captcha generator
require_once __DIR__ . '/core/session.php';
if (session_status() !== PHP_SESSION_ACTIVE) session_start();

$code = substr(strtoupper(bin2hex(random_bytes(3))), 0, 5);
$_SESSION['captcha_code'] = $code;

$width = 160; $height = 48;
$img = imagecreatetruecolor($width, $height);
$bg = imagecolorallocate($img, 245, 249, 252);
$fg = imagecolorallocate($img, 15, 23, 42);
$accent = imagecolorallocate($img, 13, 110, 253);
imagefilledrectangle($img, 0, 0, $width, $height, $bg);

// Add some random noise
for ($i=0;$i<120;$i++){
    $x = rand(0,$width);
    $y = rand(0,$height);
    imagesetpixel($img,$x,$y,$accent);
}

// Text
$font = __DIR__ . '/assets/fonts/arial.ttf';
if (!file_exists($font)) {
    // fallback to built-in fonts if TTF not available
    imagestring($img, 5, 22, 12, $code, $fg);
} else {
    $fontsize = 26;
    $angle = rand(-6,6);
    // draw each letter with slight offset (slightly larger font)
    $x = 14;
    for ($i=0;$i<strlen($code);$i++){
        $c = $code[$i];
        $y = 34 + rand(-3,3);
        imagettftext($img, $fontsize, rand(-6,6), $x, $y, $fg, $font, $c);
        $x += rand(26,32);
    }
}

// Output
header('Content-Type: image/png');
header('Cache-Control: no-cache, must-revalidate');
imagepng($img);
imagedestroy($img);
