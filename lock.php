<?php
include('config.php');
session_start();
$user_check=$_SESSION['login_user'];

$ses_sql=mysqli_query($db,"select benutzer from userdaten where benutzer='$user_check' ");

$row=mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);

$login_session=$row['benutzer'];

if(!isset($login_session))
{
header("Location: index.php");
}
?>