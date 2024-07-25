<?php
$servername = "localhost"; 
$username = "username";    
$password = "password";    
$dbname = "santaplaza";    
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if (!$conn->set_charset("utf8mb4")) {
    die("Error setting charset: " . $conn->error);
}
$sql = "SELECT * FROM `admin`";
$result = $conn->query($sql);

if ($result === false) {
    die("Error executing query: " . $conn->error);
}
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "SID: " . $row["SID"] . " - Name: " . $row["NAME"] . " - Email: " . $row["EMAIL"] . "<br>";
    }
} else {
    echo "No records found.";
}
$conn->close();
?>
