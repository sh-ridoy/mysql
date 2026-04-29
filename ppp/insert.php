<?php
$conn = new mysqli("localhost", "root", "", "shop_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// ================= INSERT BRAND =================
if (isset($_POST['add_brand'])) {
    $name = $_POST['bname'];
    $contact = $_POST['contact'];

    $conn->query("INSERT INTO brand(name, contact) VALUES('$name','$contact')");
}

// ================= INSERT PRODUCT =================
if (isset($_POST['add_product'])) {
    $name = $_POST['pname'];
    $price = $_POST['price'];
    $brand_id = $_POST['brand_id'];

    $img_name = $_FILES['image']['name'];
    $tmp = $_FILES['image']['tmp_name'];

    move_uploaded_file($tmp, "uploads/" . $img_name);

    $conn->query("INSERT INTO products(name, price, brand_id, product_image)
                  VALUES('$name','$price','$brand_id','$img_name')");
}

// ================= DELETE =================
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $conn->query("DELETE FROM products WHERE id=$id");
}

// ================= FETCH =================
$brands = $conn->query("SELECT * FROM brand");
$products = $conn->query("
    SELECT products.*, brand.name AS brand_name
    FROM products
    JOIN brand ON products.brand_id = brand.id
");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Shop Management</title>
</head>
<body>

<h2>Add Brand</h2>
<form method="post">
    Name: <input type="text" name="bname" required>
    Contact: <input type="text" name="contact">
    <button name="add_brand">Add Brand</button>
</form>

<hr>

<h2>Add Product</h2>
<form method="post" enctype="multipart/form-data">
    Name: <input type="text" name="pname" required><br>
    Price: <input type="text" name="price"><br>

    Brand:
    <select name="brand_id">
        <?php while ($row = $brands->fetch_assoc()) { ?>
            <option value="<?= $row['id'] ?>">
                <?= $row['name'] ?>
            </option>
        <?php } ?>
    </select><br>

    Image: <input type="file" name="image"><br>

    <button name="add_product">Add Product</button>
</form>

<hr>

<h2>Product List</h2>

<table border="1" cellpadding="10">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Brand</th>
    <th>Image</th>
    <th>Action</th>
</tr>

<?php while ($row = $products->fetch_assoc()) { ?>
<tr>
    <td><?= $row['id'] ?></td>
    <td><?= $row['name'] ?></td>
    <td><?= $row['price'] ?></td>
    <td><?= $row['brand_name'] ?></td>
    <td>
        <img src="uploads/<?= $row['product_image'] ?>" width="60">
    </td>
    <td>
        <a href="?delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Delete</a>
    </td>
</tr>
<?php } ?>

</table>

</body>
</html>