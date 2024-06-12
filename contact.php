<?php
include('config.php');
include('problemcss.php');
if(isset($_POST['submit'])){
$name=mysqli_real_escape_string($conn, $_POST["name1"]);
$email=mysqli_real_escape_string($conn, $_POST["email"]);
$subject=mysqli_real_escape_string($conn, $_POST["subject"]);
$message=mysqli_real_escape_string($conn, $_POST["message"]);

$sql=mysqli_query($conn,"INSERT INTO `complaint` (`name`,`email`,`subject`,`message`) VALUES ('$name', '$email', '$subject', '$message')");
if ($sql = true) {
  echo "Complain regiter successful!";
  header('location: welcome.php');
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}

?>
<!DOCTYPE html>
<html>
  <head>
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="contact.css?v=<?=$version?>">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
      <div class="form">
      <h1 class=>Contact Us</h1>
      <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" >
        <label for="name">&nbsp;&nbsp;Name:</label>
        <input type="text" id="name" name="name1" placeholder="Enter your name" require>
        <label for="email">  &nbsp;&nbsp;Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" require>
        <label for="subject"> &nbsp;&nbsp; Subject:</label>
        <input type="text" id="subject" name="subject" placeholder="Enter subject" require>
        <label for="message"> &nbsp;&nbsp; Message:</label>
        <textarea id="message" name="message" placeholder="Enter your message" require></textarea>
        <button type="submit" name="submit">Submit</button>
        </form></div>
        
       <div class="contact">
        <h2>
          Address:
        </h2>Modern college, Maharastra pune
        <h2>
          Phone:
        </h2>9800009800     
           <h2>
          Email:
        </h2>modern027@gmail.com
       </div>
       <div></div>
  </body>
</html>
