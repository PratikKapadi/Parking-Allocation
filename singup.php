<?php
  // Replace "hostname", "username", "password", and "database" with your own MySQL credentials.
  include('config.php');

  include('problemcss.php');


  if(isset($_POST['signup'])){

    $username = mysqli_real_escape_string($conn, $_POST["name"]);
    $password = mysqli_real_escape_string($conn, $_POST["password"]);
    $mobile = mysqli_real_escape_string($conn, $_POST["mobile"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
  
    
  
    $sql = mysqli_query($conn,"INSERT INTO `logindetails` (`user_name`,`user_pass`,`user_email`,`user_moblie`) VALUES ('$username', '$password', '$email', '$mobile')");
    if ($sql = true) {
      echo "Signup successful!";
      header('location: login.php');
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }


  mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Signup Page</title>
	<link rel="stylesheet" type="text/css" href="singup.css?v=<?=$version?>">
	<link rel="stylesheet" type="text/script" href="singup.js?v=<?=$version?>">
</head>
<body>
	<h1>Signup</h1>
	<!-- <form action="signup.php" method="post  "> -->
  <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" onsubmit="return validateForm()">
		<label for="name">Name:</label>
		<input type="text" name="name" id="name" required>

		<label for="email">Email:</label>
		<input type="email" name="email" id="email" required>

		<label for="mobile">Mobile:</label>
		<input type="tel" name="mobile" id="mobile" required>

		<label for="password">Password:</label>
		<input type="password" name="password" id="password" required>

		<button type="submit" name="signup">Signup</button>
	</form>
</body>
</html>
