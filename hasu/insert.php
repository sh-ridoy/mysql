<?php
include 'db.php';

if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $contact = $_POST['contact'];
    $address = $_POST['address'];

    $query = "INSERT INTO student(name,email,contact,address) 
              VALUES ('$name','$email','$contact','$address')";

    if(mysqli_query($connect,$query)){
        header("location:view.php");
    }
}
?>

<!doctype html>
<html>
<head>
<title>Insert User</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
<form method="post">
    <input type="text" name="name" placeholder="Name" class="form-control mb-2" required>
    <input type="email" name="email" placeholder="Email" class="form-control mb-2" required>
    <input type="text" name="contact" placeholder="Contact" class="form-control mb-2">
    <input type="text" name="address" placeholder="Address" class="form-control mb-2">

    <input type="submit" name="submit" value="Submit" class="btn btn-success">
</form>

<a href="view.php" class="btn btn-primary mt-3">View Users</a>
</div>

</body>
</html>