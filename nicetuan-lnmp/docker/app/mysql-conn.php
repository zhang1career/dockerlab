<?php

$dbhost = 'mysql';
$dbuser = 'root';
$dbpass = '123123';

$connect = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");

echo "MySQL connected<br />\n";
