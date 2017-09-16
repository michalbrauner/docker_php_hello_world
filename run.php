<?php

require_once('vendor/autoload.php');

$helloWorld = new HelloWorld('John');

echo $helloWorld->getHello();
