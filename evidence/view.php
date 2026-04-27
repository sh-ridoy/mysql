<?php
$conn = new mysqli("localhost", "root", "", "bdshop");

$sql = "SELECT * FROM 	manufacturer_viwe";
$result = $conn->query($sql);

echo "<table border='1'>";
echo "<tr><th>Name</th><th>address</th><th>contact</th</tr>";

while ($row = $result->fetch_assoc()) {
    echo "<tr>";

    echo "<td>" . $row['name'] . "</td>";
    echo "<td>" . $row['address'] . "</td>";
    echo "<td>" . $row['contact_no'] . "</td>";
    echo "</tr>";
}

echo "</table>";
