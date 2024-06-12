<?php
include('config.php');
include('css.php');
$sql = "SELECT * FROM m2consumer";
$result = $conn->query($sql);



?>


<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="mall.css?v=<?=$version?>">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="index.css?v=<?=$version?>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
</head>
<body>
<header class="header">
		<h1>Nexus Westend Mall</h1>
	</header>
	
	<div class="sidebar">
		<ul>
			<li><a href="welcome.php" class="menu-link">Dashboard</a></li>
			<li><a href="mall1.php" class="menu-link">Elpro City Square Mall</a></li>
			<li><a href="mall2.php" class="menu-link">Nexus Westend Mall</a></li>
			<li><a href="mall3.php" class="menu-link">Pavillion Mall</a></li>
			<li><a href="mall4.php" class="menu-link">Kumar Pacific Mall</a></li>
      <li><a href="complain.php" class="menu-link">Complains</a></li>
      <li><a href="logout.php" class="menu-link">Logout</a></li>
      
		</ul>
	</div>
    <div class="content">
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Car Name</th>
      <th>Car Number</th>
      <th>Location</th>
      <th>In Time</th>
      <th>Out Time</th>
    </tr>
  </thead>
  <tbody>
    <?php while($row = $result->fetch_assoc()) { ?>
    <tr>
      <td><?php echo $row["cid"]; ?></td>
      <td><?php echo $row["cname"]; ?></td>
      <td><?php echo $row["car_no"]; ?></td>
      <td><?php echo $row["location"]; ?></td>
      <td><?php echo $row["in_time"]; ?></td>
      <td><?php echo $row["out_time"]; ?></td>
      
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>

</body>
</html>