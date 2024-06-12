<?php
include('config.php');
include('problemcss.php');
// Escape user inputs for security
if(isset($_POST['submit'])) {
$email = mysqli_real_escape_string($conn, $_POST['email']);
$password = mysqli_real_escape_string($conn, $_POST['password']);

// Check if email exists in database
$sql = "SELECT * FROM logindetails WHERE user_email='$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Email exists, update password in database
  $sql = "UPDATE logindetails SET user_pass='$password' WHERE user_email='$email'";
  if ($conn->query($sql) === TRUE) {
    header("Location: login.php");
    echo "Password updated successfully";

  } else {
    echo "Error updating password: " . $conn->error;
  }
} else {
  // Email does not exist
echo '<script>alert("Email does not exist in our database")</script>';
}

$conn->close();
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Forget Password</title>
    <link rel="stylesheet" href="forget.css?v=<?=$version?>">
  </head>
  <body>
    <div class="container">
      <h1>Forget Password</h1>
      <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" required>
        </div>
        <div class="form-group">
          <label for="password">New Password</label>
          <input type="password" name="password" id="password" required>
        </div>
        <div class="form-group">
          <!-- <input type="submit" value="Reset Password" name="submit">Reset Password -->
          <button type="submit" value="Reset Password" name="submit">Reset Password</button>
        </div>
      </form>
    </div>
    <script src="app.js"></script>
  </body>
</html>
