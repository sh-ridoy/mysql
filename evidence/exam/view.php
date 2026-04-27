<?php
$conn = new mysqli("localhost", "root", "", "task");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Exam Project</title>
</head>
<body>

<h1>Management System</h1>

<hr>

<!-- ================= ADD MANUFACTURER ================= -->
<h3>Add Manufacturer</h3>
<form method="POST">
    Name: <input type="text" name="name"><br><br>
    Address: <input type="text" name="address"><br><br>
    Contact No: <input type="text" name="contact_no"><br><br>
    <input type="submit" name="addM" value="Add Manufacturer">
</form>

<?php
if(isset($_POST['addM'])){
    $name = $_POST['name'];
    $address = $_POST['address'];
    $contact = $_POST['contact_no'];

    $stmt = $conn->prepare("CALL manufacture_name(?,?,?)");
    $stmt->bind_param("sss", $name, $address, $contact);
    $stmt->execute();

    echo "<p style='color:green'>Manufacturer Added ✅</p>";
}
?>

<hr>

<!-- ================= ADD PRODUCT ================= -->
<h3>Add Product</h3>
<form method="POST">
    Product Name: <input type="text" name="pname"><br><br>
    Price: <input type="number" name="price"><br><br>
    Manufacturer ID: <input type="number" name="mid"><br><br>
    <input type="submit" name="addP" value="Add Product">
</form>

<?php
if(isset($_POST['addP'])){
    $pname = $_POST['pname'];
    $price = $_POST['price'];
    $mid = $_POST['mid'];

    $conn->query("INSERT INTO product(name, price, manufacturer_id)
                  VALUES('$pname','$price','$mid')");

    echo "<p style='color:green'>Product Added ✅</p>";
}
?>

<hr>

<!-- ================= DELETE MANUFACTURER ================= -->
<h3>Delete Manufacturer</h3>
<form method="POST">
    ID: <input type="number" name="delid"><br><br>
    <input type="submit" name="del" value="Delete">
</form>

<?php
if(isset($_POST['del'])){
    $id = $_POST['delid'];

    $conn->query("DELETE FROM manufacture WHERE id='$id'");

    echo "<p style='color:red'>Deleted + Related Products Removed ✅</p>";
}
?>

<hr>

<!-- ================= PRODUCT VIEW ================= -->
<h3>Product List (Price > 5000)</h3>

<?php
$res = $conn->query("SELECT * FROM product_view");

echo "<table border='1' cellpadding='10'>";
echo "<tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Manufacturer ID</th>
      </tr>";

while($row = $res->fetch_assoc()){
    echo "<tr>";
    echo "<td>".$row['id']."</td>";
    echo "<td>".$row['name']."</td>";
    echo "<td>".$row['price']."</td>";
    echo "<td>".$row['manufacturer_id']."</td>";
    echo "</tr>";
}

echo "</table>";
?>

</body>
</html>