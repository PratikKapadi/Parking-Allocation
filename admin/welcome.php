<?php
include('css.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Dashboard</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="index.css?v=<?=$version?>">

</head>
<body>
	<header class="header">
		<h1>Admin Dashboard</h1>
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
		<h2>Welcome to the Admin Dashboard</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut feugiat magna. Nulla venenatis aliquet metus, ut posuere leo consequat nec. Suspendisse potenti. Maecenas hendrerit eros in arcu laoreet tristique. Aenean porttitor quis ipsum vel vulputate. Nulla quis ipsum nec lacus varius lacinia non eget elit.</p>
	</div>
</body>
</html>
