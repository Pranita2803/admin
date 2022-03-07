<?php
$severname="localhost";
$username="root";
$password=""
$dbname="map"

$conn=new mysqli($severname ,$username, $password, $dbname);

if($conn->connect_error){
    die("connection failed",$conn->->connect_error)
}
else{
    echo connected
}
?>