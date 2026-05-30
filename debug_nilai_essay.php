<?php
// File debug sementara - HAPUS SETELAH SELESAI DEBUG
error_reporting(E_ALL);
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');

echo "<pre style='font-family:monospace;padding:20px;background:#1e1e1e;color:#d4d4d4'>";
echo "<strong style='color:#569cd6'>PHP Version: " . phpversion() . "</strong>\n\n";

$steps = [
    'session.php'  => __DIR__ . '/perbaiki/core/session.php',
    'database.php' => __DIR__ . '/perbaiki/config/database.php',
    'auth.php'     => __DIR__ . '/perbaiki/core/auth.php',
    'helper.php'   => __DIR__ . '/perbaiki/core/helper.php',
];

foreach ($steps as $name => $path) {
    echo "Loading $name ... ";
    try {
        if ($name === 'session.php') {
            // skip session untuk debug
            echo "<span style='color:#4ec9b0'>SKIP (session)</span>\n";
            continue;
        }
        if ($name === 'auth.php') {
            echo "<span style='color:#4ec9b0'>SKIP (auth)</span>\n";
            continue;
        }
        require_once $path;
        echo "<span style='color:#4ec9b0'>OK</span>\n";
    } catch (Throwable $e) {
        echo "<span style='color:#f44747'>ERROR: " . htmlspecialchars($e->getMessage()) . " (line " . $e->getLine() . ")</span>\n";
        break;
    }
}

echo "\n<strong>Cek fitur PHP:</strong>\n";
echo "match() support: " . (PHP_VERSION_ID >= 80000 ? "<span style='color:#4ec9b0'>YES (PHP 8.0+)</span>" : "<span style='color:#f44747'>NO (PHP < 8.0)</span>") . "\n";
echo "never type support: " . (PHP_VERSION_ID >= 80100 ? "<span style='color:#4ec9b0'>YES (PHP 8.1+)</span>" : "<span style='color:#f44747'>NO (PHP < 8.1)</span>") . "\n";
echo "str_contains support: " . (function_exists('str_contains') ? "<span style='color:#4ec9b0'>YES</span>" : "<span style='color:#f44747'>NO</span>") . "\n";
echo "str_starts_with support: " . (function_exists('str_starts_with') ? "<span style='color:#4ec9b0'>YES</span>" : "<span style='color:#f44747'>NO</span>") . "\n";

echo "</pre>";
