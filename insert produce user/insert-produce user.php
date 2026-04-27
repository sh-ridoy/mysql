<?php
$conn = new mysqli('localhost','root','','bdshop');

if(isset($_POST['submit'])){

    if($conn->connect_error){
        die("connection failed ".$conn->connect_error);
    }

    $name = $_POST['name'];
    $address = $_POST['address'];
    $contact = $_POST['contact'];

    $sql = "CALL manufacture_name('$name','$address','$contact')";

    if($conn->query($sql)){
        echo "<p>added successfully</p>";
    }else{
        echo "<p>failed</p>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>

<h2>User Information</h2>

<form method="POST" action="">
    Name: <input type="text" name="name" required><br><br>
    Address: <input type="text" name="address" required><br><br>
    Contact: <input type="text" name="contact" required><br><br>

    <button type="submit" name="submit">Submit</button>
</form>

</body>
</html>