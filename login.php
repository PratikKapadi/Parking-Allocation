<?php

include('problemcss.php');

session_start();
include('config.php');

if(isset($_POST['login'])) {
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $query = "SELECT * FROM logindetails WHERE user_email='$email' AND user_pass='$password'";
    $result = mysqli_query($conn, $query);
    if(mysqli_num_rows($result) == 1) {
        $_SESSION['user_email'] = $email;
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
		<h2>Login Here</h2>
		<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" onsubmit="return validateForm()">
			<input type="text" name="email" placeholder="Email"><br>
			<input type="password" name="password" placeholder="Password"><br>
			<button type="submit" name="login">Login</button><br>
            <a class="forget" id="forget" href="forget.php">Forget Password</a><br>
            <div class="member">
    Don't have an account ? <a href="singup.php">
      Register Here
    </a>
  </div>
		</form>
	</div>
</body>
</html>
