<?php
include("config.php");
session_start();
if($_SERVER["REQUEST_METHOD"] == "POST")
{
// username and password sent from Form
$benutzer=mysqli_real_escape_string($db,$_POST['benutzer']); 
$passwort=mysqli_real_escape_string($db,$_POST['passwort']); 

$sql="SELECT id FROM userdaten WHERE benutzer='$benutzer' and passcode='$passwort'";
$result=mysqli_query($db,$sql);
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
$active=$row['active'];
$count=mysqli_num_rows($result);


// If result matched $myusername and $passwort, table row must be 1 row
if($count==1)
{
session_register("benutzer");
$_SESSION['login_user']=$myusername;

header("location: welcome.php");
}
else 
{
$error="Your Login Name or Password is invalid";
}
}
?>