<?php

$_SERVER['REMOTE_ADDR'] = '127.0.0.1';
$_SERVER['HTTP_X_FORWARDED_FOR'] = '127.0.0.1';
$_SERVER['HTTP_HOST'] = 'helloworld.test';
$_SERVER['REQUEST_URI'] = '/';
$_SERVER['SERVER_ADDR'] = 'cli';

require_once __DIR__ . '/../vendor/autoload.php';
