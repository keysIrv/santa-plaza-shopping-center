<?php include 'db.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Santa Plaza Shopping Center</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
  <h1>Santa Plaza Shopping Center</h1>
  <nav>
    <ul>
      <li><a href="HOME.php">Home</a></li>
      <li><a href="servie.php">Services</a></li>
      <li><a href="AboutUS.php">About Us</a></li>
      <li><a href="clothing.php">Clothing Shop</a></li>
      <!-- Add more navigation links as needed -->
    </ul>
  </nav>
</header>

<div class="container">
  <section id="services" class="services">
    <?php
    // Example: Fetching services from database
    $sql = "SELECT * FROM services";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo '<div class="service">';
            echo '<img src="' . $row['image'] . '" alt="' . $row['name'] . '">';
            echo '<div class="service-content">';
            echo '<h3>' . $row['name'] . '</h3>';
            echo '<p>' . $row['description'] . '</p>';
            echo '</div></div>';
        }
    } else {
        echo "No services found.";
    }
    ?>
  </section>
</div>

<footer>
  <p>&copy; Santa Plaza Shopping Center. All Rights Reserved.</p>
</footer>

</body>
</html>
