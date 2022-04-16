
<?php

include('header/header.php');


$suberr = $reporterr = "";
$flag = false;

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
 if(isset($_POST["submit"])){

  
       if (empty($_POST["report"]))
           {
              $reporterr = " Amount is required";
              $flag = True;
           }

else
{

  echo '<script>alert("Successfully Withdraw")</script>';
}




}

}

?>





<center><h1>Salary Withdraw</h1>

<center>
	<form action="" method="post">
 <fieldset>
  <legend>Finalizing</legend>
  <label for="fname">User Name:  </label>
   <label for="name" style="color:red;" ><?php echo $_SESSION["name"];?></label><br>
   <label for="fname">Balance:  </label>
<label for="name" style="color:blue;" >10000 TK</label><br><br>
 <label for="report">Withdraw :</label>
<input type="number" id="report" name="report" value="">
	<span style="color: red"><?php echo $reporterr; ?> </span><br><br>
  <input type="submit" name="submit" value="Withdraw">
 </fieldset>
</form>








<?php

include('footer/footer.php');



?>