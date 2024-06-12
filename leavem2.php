<?php

include('config.php');
include('problemcss.php');


// get input from user
if(isset($_POST['submit'])){

$space_number = mysqli_real_escape_string($conn, $_POST["space_number"]);


// update parking space status in MySQL database
$sql = "UPDATE spacem2 SET status='available' WHERE location='$space_number'";
if (mysqli_query($conn, $sql)) {
    echo "Parking space status updated successfully.";
    header("Location: mall2.php");
} else {
    echo "Error updating parking space status: " . mysqli_error($conn);
}
$sql = "UPDATE m2consumer SET out_time= NOW() WHERE location='$space_number'";
    if (mysqli_query($conn, $sql)) {
        echo "Car details inserted successfully.";
    } else {
        echo "Error inserting car details: " . mysqli_error($conn);
    }


// close MySQL database connection
mysqli_close($conn);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Update Parking Space Status</title>
    <link rel="stylesheet" type="text/css" href="leave.css?v=<?=$version?>">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
  <body>
  <header>
    <nav>

      <div class="heading">

        <h4>Welcome to Parking</h4>
         </div>

      <ul class="nav-links">

        <li><a class="active" href="welcome.php">Home</a></li>

        <li><a href="welcome.php#mall">Parking</a></li>

        <li><a href="profile.php">Profile</a></li>

        <li><a href="about.html">about</a></li>
        <li><a href="logout.php">Logout</a></li>

      </ul>

    </nav>
    </header>

    <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
        <!-- <label>Car Name:</label>
        <input type="text" name="car_name"><br> -->
        <label>Space Number:</label>
        <input type="text" name="space_number"><br>
        <!-- <label>Car Number:</label>
        <input type="text" name="car_number"><br> -->
        <input type="submit" value="Submit" name="submit">
    </form><br><br><br><br> 
    <div></div>
    <footer>
      <div class="footer">
      <div class="footer1 ">
       <a class="connect"> Connect with us at</a>
        <div class="social-media">
            <ul class="social-icons">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
        </div>
      </div>
      <div class="footer2">
        <div class="Company">
          <div class="heading">Company</div>
          <div class="div">Complaint</div>
          <div class="div">Careers</div>
          <div class="div">Affiliate Marketing</div>
          <div class="div">Support</div>
        </div>
        <div class="Get Help">
          <div class="heading">Get Help</div>
          <div class="div">Help Center</div>
          <div class="div">Privacy Policy</div>
          <div class="div">Terms</div>
          <div class="div"><a href="logout.php">Logout</a></div>
      </div>
      </div>
      <div class="copy">
        Copyright &#169;2023Mall Parking All Rights Reserves.
      </div>
      </div>
    </footer>

</body>
</html>