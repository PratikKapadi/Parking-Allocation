<?php
include('problemcss.php');
include('config.php');



?>
<!DOCTYPE html>
<html>
  <head>
    <title>Parking Space Layout</title>
	<link rel="stylesheet" type="text/css" href="mall1.css?v=<?=$version?>">
  <link rel="stylesheet" type="text/script" href="mall.js?v=<?=$version?>">
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
    <div class="header">
      <h1>Nexus Westend Mall</h1>
      <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
      <div class="button">
      <div class="button_box"><a href="m2park.php" class="text">Park</a></div>
      <div class="button_box"><a href="leavem2.php" class="text">Leave</a></div> 
      <div class="button_box"><a href="https://www.google.com/maps/place/Westend+Mall/@18.5624711,73.8050558,17z/data=!3m1!4b1!4m6!3m5!1s0x3bc2bf3025916151:0xc7331a60847367d7!8m2!3d18.5624711!4d73.8072445!16s%2Fg%2F11c1tm10lj" class="text">Direction</a></div>
    </div>
    <div class="green">
    <div class="parking-note">
      <span class="square not-available"></span>
      <span class="label">Not Available/occupied &nbsp; &nbsp;</span>
    </div><br>

    <div class="parking-note">
      <span class="square available"></span>
      <span class="label">Available</span>
    </div>
    </div>
</form>
      <div class="row">
        <?php
        $sql = "SELECT * FROM spacem2";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
          // output parking spaces with status and background color
          while($row = mysqli_fetch_assoc($result)) {
            $label = $row["location"];
            $status = $row["status"];
            $bg_color = ($status == "available") ? "available" : "occupied";
            echo '<div class="parking-space ' . $bg_color . '">' . $label . '</div>';
            if ($label == "A10" || $label == "B10" || $label == "C10" || $label == "D10" || $label == "E10" || $label == "F10" || $label == "G10" || $label == "H10" || $label == "I10" || $label == "J10" || $label == "K10" || $label == "L10" || $label == "M10" || $label == "N10"  || $label == "O10"  ) {
              echo '</div><div class="row">';
            }
          }
        } else {
          echo "0 results";
        }
        mysqli_close($conn);
        ?>
      </div>
    </div>
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
