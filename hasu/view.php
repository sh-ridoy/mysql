<?php
include 'db.php';

$data = mysqli_query($connect, "SELECT * FROM student");

if(isset($_GET['delete'])){
    $id = $_GET['delete'];

    mysqli_query($connect,"DELETE FROM student WHERE id=$id");
    header("location:view.php");
}
?>

<!doctype html>
<html>
<head>
<title>User List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
<a href="insert.php" class="btn btn-primary mb-3">Insert</a>

<table class="table table-bordered">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
<th>Address</th>
<th>Action</th>
</tr>
</thead>

<tbody>

<?php while($row = mysqli_fetch_assoc($data)){ ?>
<tr>
<td><?php echo $row['id']; ?></td>
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['email']; ?></td>
<td><?php echo $row['contact']; ?></td>
<td><?php echo $row['address']; ?></td>

<td>
<a href="edit.php?id=<?php echo $row['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
<a href="view.php?delete=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
</td>
</tr>
<?php } ?>

</tbody>
</table>
</div>

</body>
</html>