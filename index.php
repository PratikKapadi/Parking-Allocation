<?php
include('problemcss.php');
?>
<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link

      href="https://fonts.googleapis.com/css2?family=Montserat&display=swap"

      rel="stylesheet"

    />

    <link rel="stylesheet" href="index.css?v=<?=$version?>" >
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <title>Mall Parking </title>

  </head>

  <body>
    <header>
    <nav>

      <div class="heading">

        <h4>Welcome to Parking</h4>
         </div>

      <ul class="nav-links">

        <li><a class="active" href="welcome.php">Home</a></li>

        <li><a href="login.php">Parking</a></li>

        <li><a href="login.php">Login</a></li>

        <li><a href="login.php">about</a></li>

      </ul>

    </nav>
    </header>
      
    <div class="body-text">
      <div class="welcome"> </div>
    </div><br><br><br><br><br><br>


    <div class="mall">
    <div class="parking"><h2>Parking Space</h2></div>
      <div class="mall_box" ><img src="elpromall.jpg">
      
      <div class="text"><a href="login.php" class="text1">Elpro City Square Mall</a>
    </div>
  </div>
      <div class="mall_box"><img src="westenmall.jpg">
      <div class="text"><a href="login.php" class="text1">Westen Mall</a>
         </div>
        </div>
        <div class="mall_box"><img src="pavillionmall.jpg">
      <div class="text"><a href="login.php" class="text1">Pavillion Mall</a>
      </div>
      </div>
      <div class="mall_box"><img src="kpmall.jpg">
      <div class="text"><a href="login.php" class="text1">Kumar Pacific Mall</a>
      </div>
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
          <div class="div"><a href="login.php">Login</a></div>
      </div>
      </div>
      <div class="copy">
        Copyright &#169;2023Mall Parking All Rights Reserves.
      </div>
      </div>
    </footer>
   <script scr="index.js?v=<?=$version?>"></script>
  </body>


</html>