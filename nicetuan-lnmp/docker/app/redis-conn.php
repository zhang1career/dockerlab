<?php

$redis = new Redis();
$redis->connect('redis', 16379); 
echo "Connection to server sucessfully"; 
echo "Server is running: ".$redis->ping(); 