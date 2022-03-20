<?php
session_start();
session_destroy();
$url = 'register.php';
header('Location: ' . $url);

?>