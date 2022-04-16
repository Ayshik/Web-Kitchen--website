
<?php


session_start();

setcookie("cook",time()+3600);
include('../Controller/userval.php');
if (!isLoggedIn()) {

 header('location:login.php');
}
?>



<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Web Kitchen Maneger</title>
   
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="panel.css" />
    <link
    href="http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic"
    rel="stylesheet"
  />
  <link
    href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans"
    rel="stylesheet"
  />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>

  <body>
  <header class="header">
      <div class="bgimage">
        <div class="menu">
          <div class="leftmenu">
            <h3><a href="managerpanel.php">Web Kitchen</a></h3>
          </div>
          <div class="welcome">
            <h1>Manager Dashbord</h1>
            <div class="rightmenu">
              <button id="buttonone" < onclick="window.location.href='../Controller/logout.php';">
                Logout
              </button>
            </div>
          </div>
        </div>
    </header>
    <input type="checkbox" id="check">
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
  <div class="sidebar">
    <header>ID~<?php echo $_SESSION["name"];?></header>

    <ul>
      <li><a href="Riderinfo.php">Rider Info</a></li>
      <li><a href="Orders.php">Orders</a></li>
      <li><a href="request.php">Order Request(3)</a></li>
      <li><a href="Salary.php">Salary Withdraw</a></li>
      <li><a href="history.php">History</a></li>
        <li><a href="Report.php">Report</a></li>
		 <li><a href="Dailysell.php">Daily Sell</a></li>
		 <li><a href="Myprofile.php">My Profile</a></li>
        


    </ul>
</div>

    