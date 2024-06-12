<?php

include('css.php');

session_start();
include('config.php');

if(isset($_POST['login'])) {
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $query = "SELECT * FROM admin WHERE email='$email' AND password='$password'";
    $result = mysqli_query($conn, $query);
    if(mysqli_num_rows($result) == 1) {
        $_SESSION['email'] = $email;
        header("Location: welcome.php");
    }
    else {
        echo '<script>alert("Invalid username or password")</script>';
    }
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="login.css?v=<?=$version?>">
    <link rel="stylesheet" type="text/script" href="login.js?v=<?=$version?>">
</head>
<body>
	<div class="login-form">
		<h2>Admin Login</h2>
		<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" onsubmit="return validateForm()">
        <div class="form-group">
        <label for="email">Email</label>
			<input type="text" name="email" placeholder="Email"><br></div>
            <div class="form-group">
            <label for="password">Password</label>
			<input type="password" name="password" placeholder="Password"><br></div>
			<button type="submit" name="login">Login</button><br>
            <a class="forget" id="forget" href="forget.php">Forget Password</a><br>
        
  </div>
		</form>
	</div>
</body>
</html>
