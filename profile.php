<?php
include('problemcss.php');
include('config.php');
?>
<!DOCTYPE html>
<html>
<head>
  <title>User Profile</title>
  <link rel="stylesheet" href="index.css?v=<?=$version?>" >
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #fff;
    }
    header {
      background-color: #20b2aa;
      color: #000;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    header a {
      color: #000;
      text-decoration: none;
      margin-right: 10px;
    }
    header a:hover {
      text-decoration: underline;
    }
    .size{
      height: 450px;
    }
    .container {
      margin: auto;
      width: 50%;
      border-radius: 10px;
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
      padding: 20px;
      margin-top: 20px;
    }
    h1 {
      
      text-align: center;
      color: #333;
    }
    .form-group {
      margin-bottom: 20px;
    }
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    input[type="text"],
    input[type="email"],
    input[type="number"] {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      font-size: 18px;
    }
    button[type="submit"] {
      background-color: #333;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      cursor: pointer;
    }
    button[type="submit"]:hover {
      background-color: #555;
    }
  </style>
</head>
<body>
  <header>
    <h1>User Profile</h1>
    <nav>
      <a href="welcome.php">Home</a>
      <a href="logout.php">Logout</a>
      <?php
      // Start the session
      session_start();

      // Check if user is logged in
      if(isset($_SESSION["username"])){
        echo '<a href="logout.php">Logout</a>';
        echo '<a href="parking.php">Parking</a>';
        echo '<a href="about.php">About</a>';
      }
      ?>
    </nav>
  </header>
  <div class="size">
  <div class="container">
    <?php
    
   

    // Retrieve user's profile information
    $email = $_SESSION["user_email"];
    $sql = "SELECT * FROM logindetails WHERE user_email='$email'";
    $result = mysqli_query($conn, $sql);

    // Check if query was successful
    if (mysqli_num_rows($result) == 1) {
      // Display user's profile information
      $row = mysqli_fetch_assoc($result);
      // echo '<h1>User Profile</h1>' ;
      echo '<div class="form-group">';
      echo '<label>Username:</label>';
      echo '<input type="text" value="' . $row["user_name"] . '" disabled>';
      echo '</div>';
      echo '<div class="form-group">';
      echo '<label>Email:</label>';
      echo '<input type="email" value="' . $row["user_email"] . '" disabled>';
      echo '</div>';
      echo '<div class="form-group">';
      echo '<label>Modile No:</label>';
      echo '<input type="number" value="' . $row["user_moblie"] . '" disabled>';
      echo '</div>';
   
    } 
    
    // Close the database connection
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