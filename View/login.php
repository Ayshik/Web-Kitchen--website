<?php

session_start();

require "../Model/db_connect.php";

$uname="";
$err_uname="";
$psw="";
$err_psw="";
$err_invalid="";
$has_error=false;


if($_SERVER["REQUEST_METHOD"]=="POST"){


  if(empty($_POST['username']))
  {
    $err_uname="*Username Required";
    $has_error=true;


  }
  else
  {
    $uname=$_POST['username'];
  }
  if(empty($_POST['password']))
  {
    $err_psw="*Password Required";
    $has_error=true;


  }
  else
  {
    $psw=$_POST['password'];
  }
  if(!$has_error)
  {
    $query = "SELECT username from manager where username='$uname' and password='$psw'";
    $result=get($query);
    echo $query;
    if(mysqli_num_rows($result) > 0)
    {
      $row=mysqli_fetch_assoc($result);
      $_SESSION["name"]=$row["username"];

      header("Location:managerpanel.php");
    }
    else
    {
echo '<script>alert("Please check your username and Password")</script>';
    }
  }


}
  ?>

<?php

include('header/homeheader.php');



?>
     <link rel="stylesheet" href="login.css" />
    <form class="box" action="" method="post">
      <h1>Login</h1>
      <input type="text" name="username" placeholder="Username"  />
	  <span  style="color: red"> <?php echo $err_uname;?></span>
      <input type="password" name="password" placeholder="Password" />
	  <td><span  style="color: red"><?php echo $err_psw;?></span>
	  

     

      <input type="submit" name="login" value="Login" />
    </form>
  </body>
  </html>
