<form method="POST" action="">
    Name: <input type="text" name="name"><br>
    address: <input type="text" name="address"><br>
    contact: <input type="text" name="contact"><br>
 
    <input type="submit" name="submit" value="Save">
</form>

<?php
$conn = new mysqli("localhost", "root", "", "bdshop");

if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $address = $_POST['address'];
    $contact = $_POST['contact'];
    

    $sql = "CALL manufacture_name('$name', '$address','$contact')";
    
    if($conn->query($sql)){
        echo "Inserted Successfully";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>