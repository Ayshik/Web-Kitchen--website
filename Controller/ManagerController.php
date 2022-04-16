<?php
$var;
  require_once '../Model/db_connect2.php';


 if(isset($_POST["signup"]))
  {
     managersignup();
  }
 


function managersignup()
{

  $username=$_POST["ouname"];
  $pass=$_POST["ocpass"];
   $nid=$_POST["nid"];
  
  $name=$_POST["pname"];
  $address=$_POST["address"];
  
  $phone=$_POST["ophone"];
  $email=$_POST["email"];
  
 
	
  $query="INSERT INTO `manager`(`username`, `email`, `phone`, `password`, `Name`, `Address`,`nid`) VALUES ('$username','$email','$phone','$pass','$name','$address','$nid')";
//echo $query;
execute($query);
if(file_exists('../Model/Manager.json'))
{
     $current_data = file_get_contents('../Model/Manager.json');
     $array_data = json_decode($current_data, true);
     $extra = array(
           'username' =>     $_POST['ouname'],
           'email' =>     $_POST['email'],
           'Name'   =>     $_POST['pname'],
           'password' =>     $_POST['ocpass'],
           'Address' =>     $_POST['address'],
           'phone'    =>     $_POST["ophone"],
            'nid'     =>     $_POST["nid"]
           
     );
     $array_data[] = $extra;
     $final_data = json_encode($array_data);
     if(file_put_contents('../Model/Manager.json', $final_data))
     {
         //echo '<script>alert("Data Added in Manager.json file")</script>';
     }
}
else
{
     $error = 'JSON File not exits';
}
     
 header("Location:../View/signupmanager.php");

}

function insertMessage()
{

 $aemail=$_POST["massage"];

  $query="INSERT INTO `chatbox`(`Sender`, `Receiver`, `Message`) VALUES ('Admin','Modarator','$aemail')";

  execute($query);
 
  header("Location:../View/Admin/massagebox.php");
}


function insertadmin()
{

 $aemail=$_POST["massage"];

  $query="INSERT INTO `chatbox`(`Sender`, `Receiver`, `Message`) VALUES ('Modarator','Admin','$aemail')";

  execute($query);
 
  header("Location:../View/Modarator/massagebox.php");
}
  ?>