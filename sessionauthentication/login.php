<!DOCTYPE html>
<html lang="en">
<?php session_start();?>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login to your account | Sunkoshi Rural Municipality</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="CSS/fontawesome/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="CSS/design.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  </style>
</head>
<body class="bg-success">
  <br>
  <br>
  <div class="container  col-sm-4 bg-white rounded shadow-lg " >
<div class="text-center">
<img src="/WebsiteDevelopment/Images/logo.png" alt="" class="rounded img-fluid">
</div>
  <div>
      <fieldset class="wrapper shadow-lg p-4 mb-4 bg-info rounded ">
        <form action="" method="post">
          <div class="form-group">
            <label for="username" >Username</label>
            <input class="form-control " name="Username" type="text" placeholder="Enter your username">
          </div>
          <div class="form-group">
          <label for="password" class="text-center">Password</label>
            <input type="password" class="form-control " placeholder="Enter the password " name="Password">
          </div>
          <div class="text-center">
            <button class="btn btn-success" type="submit">Log In</button>
            <button class="btn btn-danger"><i class="fa fa-home fa-2x"></i></button>
          </div>
        </form>
      </fieldset>
      <footer class="page-footer font-small cyan darken-3 bg-danger rounded">
      <!-- Copyright -->
      <div class="footer-copyright text-center py-3 bg-info">© 2020 Copyright:
        <a href="https://amansamalmagar.wordpress.com" target="_blank" class="text-dark"> amansamalmagar.com.np</a>
      </div>
      <!-- Copyright -->
    </footer>
    <br>
    </div>
  </div>
  <?php
	if ($_SERVER["REQUEST_METHOD"] =="POST") {
		require 'connect.php';
		$Username = $_POST['Username'];
		$Password = $_POST['Password'];
		$Hash = sha1($Password);
		$sql = "SELECT * from tblusers WHERE Username  = '$Username' AND Password ='$Password'";
		$res = mysqli_query($conn,$sql);
		if (mysqli_num_rows($res) > 0) 
		{
		$data= mysqli_fetch_assoc($res);
		$_SESSION['Username']=$data['Username'];
		header("Location: dashboard.php");	
		}
		else {
      ?>
      <html>
        <script><window class="alert">Error: Wrong Username or Password</window></script>
      </html>
      <?php
		}
  }
  ?>
</body>

</html>