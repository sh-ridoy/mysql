<?php
$link =  mysqli_connect("localhost","root","","ridu" );

if(!$link){
   die('Could not connect: ');
}
echo "<h2 style='color:green;text-align:center;font-size:16pt; '>Connected successfully</h2>";
?>