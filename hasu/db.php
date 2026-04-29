<?php
$connect = mysqli_connect("localhost", "root", "", "hasu");

if(!$connect){
    die("Connection Failed: " . mysqli_connect_error());
}
?>